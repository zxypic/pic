--入口文件
local MainEdt = "V1.01_0712pm21"
local modepath = debug.getinfo(1).short_src:match("^.*/")
modepath = '/data/local/tmp/c/mode/'
local exc = dofile(string.format("%sluamap.lua", modepath)) 	--基础扩展
dev = dofile(string.format("%sfuncDev.lua", modepath)) 	--具体功能执行实现
-- ===============================================================================================
G_ArguMentList, G_Id, G_address = nil	--地址 任务参数
G_resultDir, G_resultDirLog, G_debugDir, G_scriptPath = nil     --目录
G_OSMode, G_APPJRscript, G_APPBLscript = nil	--平台、测试类型
G_JRResultXml = {}	--app测试结果表，用于兼容mobilesense格式
G_now_width, G_now_height, G_deviceName, G_DevCode, G_NetFlag = nil     --设备信息
Businesses, Clientversion, Edition = nil    --脚本使用, 标注信息变量
G_ScriptFlg = {}	--脚本标识类，减少变量
G_ScriptFlg.pkgname = G_APPpkgname	--包名

G_ClickTimeOut, DScreen = nil		--脚本使用, 功能信息变量
-- ===============================================================================================
--################################################################################################
--==============================--
--desc:初始化
--time:2018-04-17 03:44:15
--return 
--==============================--
--################################################################################################
local function DeviceInfo()
	local fileDeviceName = dev.DevType() --设备名称
	local netFlag = dev.NetFlag() --网络接入类型
	local devCode = _cfunc.DevCode() --设备编码
	local netProxy = dev.Proxy() --网络接入方式
	local _, netInfo = dev.NetworkInfo() --获取运营商标识
	local netIp = _cfunc.GetIp() --IP地址
	local location = string.format('%s,%s', _cfunc.GetProviceCode(), _cfunc.GetCityCode())
	local width, height = _cfunc.GetDisplayWidth(), _cfunc.GetDisplayHeight()
	netIp = netIp ~= "" and netIp or "127.0.0.1"
	local brand = _cfunc.Command(string.format("getprop|grep 'ro.product.brand'"))
	brand = brand:gsub(" ", ""):match(":%[(.*)%]")
	debugMsg(string.format("[ro.brand]: %s", brand))
	local tmpstr = string.format("[DeviceInfo]: %s-%s\t%s\t%s*%s\t%s\t%s(%s)\t%s", brand, fileDeviceName, devCode, width, height, netFlag, netInfo, netProxy, netIp)
	debugMsg(tmpstr)
	return width, height, fileDeviceName, devCode, netFlag, location, brand
end
local function DeviceUnit(flg)
	dev.Key("B,0.1,3|F,0")
	local init_kill = function()
		dev.Kill_Process('uiautomator')
		dev.Kill_Process('logcat')
		dev.Kill_Process('tcpdump')
		_cfunc.Command('echo > /data/anr/traces.txt')
		_cfunc.Command('echo > /sdcard/watchlog.txt')
		_cfunc.Command('logcat -c')
		_cfunc.Command('rm /data/data/com.autosense/files/vm2*.log')
		-- "/data/local/tmp/uubootstrap"
	end
	init_kill()
	if flg then
		os.execute(string.format("monkey -p com.autosense 1"))
		if G_ArguMentList[6] == 'mob' then
			dev._PerfsManager('end Perfs', psname)	--结束app测试性能统计
		end
	end
end

local function GetTestUrl()
	local filename = "/data/data/com.autosense/files/cfg/setting.cfg"
	local adress
	local fsetting = {}
	if exc._file_exists(filename) then
		fsetting = exc._fileToTable(filename)
		for line in ipairs(fsetting) do
			if string.match(fsetting[line], "address=(.-)") then
				adress = string.match(fsetting[line], "address=(.*)")
				break
			end
		end
	end
	if not adress then
		debugMsg("Now Environment adress is not found for setting.cfg , used default url .")
	end
	adress = adress:find("autoapi.uusense.com") and "auto.uusense.com" or adress --UUSENSE使用
	adress = adress or "auto.uusense.com"
	debugMsg(string.format("[WebAdress]: http://%s", adress))
	return adress
end
function debugMsg(DataLog, filename, levelFlg)
	DataLog = DataLog or "debugMsg 传入参数为空..."
	if type(DataLog) == "table" then
		DataLog = table.concat(DataLog, "\n")
	end
	
	filename = filename or string.format("/data/local/tmp/c/result/%s/debug.txt", G_Id)
	levelFlg = levelFlg or "TEST"
	local ctime = _cfunc.GetCurTime()
	local datastr = string.format("[%s.%s %s] ", os.date("%Y/%m/%d %H:%M:%S", string.sub(ctime, 1, - 4)), string.sub(ctime, - 3, - 1), levelFlg)
	DataLog = string.format("%s%s\t\n", datastr, DataLog)
	exc._writeLog(filename, DataLog)
	print(DataLog)
end
local function app_PramInit(ArguMentList)	--初始化任务参数
	local appInfo = ArguMentList[#ArguMentList - 1]	
	local appStr = exc._xsplit(appInfo, "##")
	local appVer = APP_Version or appStr[7] or "UNKNOWN"
	local pkgname = APP_PacketName or ArguMentList[8] ~= "" and ArguMentList[8] or appStr[6] or ""
	local md5Value = ArguMentList[12] ~= "" and ArguMentList[12] or appStr[9] or ""
	debugMsg(string.format("APP information，APP_pkgname：%s   APP_version：%s   APP_MD5：%s", pkgname, appVer, md5Value))
	local appActivity
	if APP_MainActivity then debugMsg("App_MainActivity: " .. APP_MainActivity) appActivity = string.format("%s/%s", pkgname, APP_MainActivity) end
	if pkgname == "" or not DebugFlag and md5Value == "" then debugMsg(string.format("APP pkgname or MD5 is nil, app testing cannot execute , exit! ")) return 0 end
	local TaskPtype = tonumber(appStr[2]) or 1  --默认兼容
	local AppPtype = tonumber(appStr[3]) or 0   --默认卸载
	local AppUrlPath = appStr[4] == '' and appStr[5] or appStr[4]
	local webUrlPath = appStr[5] or ""
	local ApptestTime = appStr[10] or 5     --默认5min
	local PramTypetb = {}
	PramTypetb.tasktype = TaskPtype --测试类型      1: 兼容测试 2:  遍历测试
	PramTypetb.apptype = AppPtype --app安装类型     0: 卸载安装 1:  覆盖安装
	PramTypetb.apppath = webUrlPath:find("http:") and AppUrlPath or ArguMentList[9]    --app地址路径    
	PramTypetb.pkgname = pkgname    --app包名  
	PramTypetb.md5 = md5Value    --app包md5值  
	PramTypetb.bltime = ApptestTime    --app 遍历时长
	return PramTypetb
end
local function doAPPTestPram(TaskPramtb)	--处理app测试web参数类型判断
	-- os.execute(string.format("rm -r %simages", G_debugDir))
	_cfunc.CreateDir(string.format("%simages/", G_debugDir))      --创建APP测试步骤图文件夹
	local taskstr = ""
	if TaskPramtb.tasktype == 1 then	--兼容测试
		taskstr = string.format("TaskType: %s", "Compatibility")
		G_APPJRscript = true
	elseif TaskPramtb.tasktype == 2 then	--遍历测试
		taskstr = string.format("TaskType: Traversal(time: %s min)", TaskPramtb.bltime)
		G_APPBLscript = true
	end
	if TaskPramtb.apptype == 0 then		--卸载安装
		taskstr = string.format("%s  InstallType: %s", taskstr, "uninstall")
	elseif TaskPramtb.apptype == 2 then	--覆盖安装
		taskstr = string.format("%s  InstallType: %s", taskstr, "Coverage")
	end
	debugMsg(string.format("[AppTestInfo]: %s   AppPath: %s", taskstr, TaskPramtb.apppath))
end
local function doSysPram(ParmSysParms) --据参数完成初始化
	ParmSysParms = ParmSysParms ~= "android|" and ParmSysParms or DebugFlag or "Android|1|51738|5|200|auto"
	if ParmSysParms:upper():find("ANDROID") then G_OSMode = 'Android' end
	G_OSMode = G_OSMode or 'IOS'
	local ArguMentList = exc._xsplit(ParmSysParms, "|") --任务信息
	local Id = string.format("%s_%s_%s", ArguMentList[2], ArguMentList[3], ArguMentList[4])
	local resultDir = _cfunc.ResultRoot() .. "/" .. ArguMentList[2] .. "/" .. ArguMentList[3] .. "/" .. ArguMentList[4] .. "/"
	_cfunc.CreateDir(resultDir)     --创建结果文件夹
	local resultDirLog = string.format("%s/FILE/", string.sub(resultDir, 1, - 2))
	_cfunc.CreateDir(resultDirLog)  --创建结果日志文件夹
	local debugDir = string.format("/data/local/tmp/c/result/%s/", Id)
	os.execute(string.format("rm -r %s", debugDir))
	_cfunc.CreateDir(debugDir)      --创建调试文件夹
	local scriptDirPic = ArguMentList[2] ~= "1" and string.format("%s/%s/pic", _cfunc.ScriptRoot(), ArguMentList[5]) or string.format("/data/local/tmp/c/pic")
	
	return ArguMentList, Id, resultDir, resultDirLog, debugDir, scriptDirPic
end
local function GetUUVersion()
	local version = _cfunc.Command(string.format("dumpsys package com.autosense |grep '%s'", "versionName"))
	local installTime = _cfunc.Command(string.format("dumpsys package com.autosense |grep '%s'", "firstInstallTime"))
	local userId = _cfunc.Command(string.format("dumpsys package com.autosense |grep '%s'", "userId"))
	local uptime = _cfunc.Command(string.format("uptime"))
	version = version:match("=(.*)") or "nil"
	installTime = installTime:match("=(.*)") and installTime:match("=(.*)"):gsub("\n", "") or "nil"
	userId = userId:gsub("\n", ""):gsub("    ", "")
	uptime = string.gsub(uptime, "\n", "")
	debugMsg(string.format("[AutoSense] version: %s  installtime: %s", version:gsub("\n", ""), installTime))
	debugMsg(string.format(" %s", uptime))
	debugMsg(string.format(" %s", userId))
	
	local buildv = _cfunc.Command(string.format("getprop|grep 'build.version.release'"))
	buildv = buildv:gsub(" ", ""):match(":%[(.*)%]")
	debugMsg(string.format("[build.version]: Android %s", buildv or ':[001]'))
	return buildv:match('%d+')
end
local function Dumper_Init()
	local dumppath = '/data/local/tmp/uubootstrap/dump/'
	os.execute(string.format("rm -r %s", dumppath))
	os.execute(string.format("rm -r %s", "/sdcard/AutoManager/"))
	_cfunc.CreateDir(dumppath) 	--处理权限问题
	local xpathFile, Version = API_UIdumper(timeout)
	debugMsg(string.format("%s", Version or "nil"))
	debugMsg(string.format("xdumpFile: %s", xpathFile))     --'/data/local/tmp/uubootstrap/dump/dump.xml'
end
--*****************************************************************************************************************--
--==============================--
--desc: 固定格式脚本逻辑解析
--time:2018-04-24 01:46:31
--return 
--==============================--
--*****************************************************************************************************************--
function doTitleResult(ret, resultTitle, result)
	local _gmatch = function(str, pattern)
		local temp = {}
		for w in string.gmatch(str, pattern) do
			local ttt = string.gsub(w, "[%[%]]", "")
			table.insert(temp, ttt)
		end
		return temp
	end
	local typeTab = {
		["P"] = "1", ["T"] = "2", ["S"] = "3", ["I"] = "4", ["C"] = "5",	--var local
		["N"] = "6", ["L"] = "21", ["K"] = "21", ["G"] = "21"	--not var
	}
	if resultTitle:find("%b<>") then
		local tmpTil = _gmatch(resultTitle, "%b<>")
		for k, v in pairs(tmpTil) do
			local retValuetb = {}
			retValuetb.title = v:match("#%a") and v:gsub(v:match("#%a"), ""):match("<(.+)>") or v:match("<(.+)>")
			local vtype = v:match("#(%a)") or "P"	--默认成功率
			retValuetb.vtype = typeTab[vtype] or 1
			--临时为了utf8 从脚本中读取关键gbk关键字
			local strTitle = {_cfunc.Utf8ToGbk("成功率"), _cfunc.Utf8ToGbk("时长"), _cfunc.Utf8ToGbk("时延"), _cfunc.Utf8ToGbk("丢包率"), _cfunc.Utf8ToGbk("速率")}	
			--处理中文指标类型转变
			if retValuetb.title:find(strTitle[1]) then	--成功率
				retValuetb.vtype = 1
			elseif retValuetb.title:find(strTitle[2]) or retValuetb.title:find(strTitle[3]) or retValuetb.title:find(strTitle[4]) then	--时长 时延 丢包率
				retValuetb.vtype = 2
			elseif retValuetb.title:find(strTitle[5]) then	--速率
				retValuetb.vtype = 3
			end
			retValuetb.stime = result.stime or nil
			retValuetb.etime = result.etime or nil
			retValuetb.type = result.type
			retValuetb.values = result.DelayTime
			retValuetb.file = result.file
			std_DoResult(ret, retValuetb)	
		end
	end
end

local function doExlogic(adjPram)	
	local timeout = adjPram:match(".*(,%d+)") or ""
	adjPram = adjPram:match("(.*),%d+") or adjPram
	if adjPram:sub(1, 1) == "|" then
		return 1, adjPram:sub(2) .. timeout
	elseif adjPram:sub(- 1) == "|" then
		local adjtb = exc._xsplit(adjPram, "|")
		return #adjtb, adjPram:sub(1, - 2) .. timeout
	else
		return nil, adjPram .. timeout
	end
end
local xlog_file_name = ""
local xlog_warn_flag = 0

local function _xnew(tb)
	local proxy = {}
	local mt = {__index = tb}
	setmetatable(proxy, mt)
	return proxy
end

local function _xlog(fmt, ...)
	local strtemp = string.format(fmt, ...)
	local strlast = string.format("[%s] %s", os.date('%b%d-%X'), strtemp)
	local file = io.open(xlog_file_name, "a+")
	file:write(strlast .. "\n")
	file:close()
	print(strlast)
end

local CAction = {
	tag,
	pre,
	msg,
	tbarg,
	ref_api,
	context,
	time1,
	time2,
	done,
	retval,
	result,
	match_index,
	loopcount
}

function CAction:reset()
	self.time1 = ""
	self.time2 = ""
	self.loopcount = 0
	self.done = false
	self.retval = 0
	self.match_index = 1
	self.result = {}
end

function CAction:decode(context)
	--local regx = "%[(%d+)%]%s*,%s*%[([%w_#@%$%*%^]+)%]%s*,?%s*(.*)"
	local regx = "%[(%d+)%]%s*,%s*%[([#%*F]*)([%w_]+)%]%s*,?%s*(.*)"
	local v1, v2, v3, v4 = string.gmatch(context, regx)()
	
	self.tbarg = self.tbarg or {}
	for match in string.gmatch(v4, "%b[]") do
		match = string.gsub(match, "[%[%]]", "")
		table.insert(self.tbarg, match)
	end
	
	self.tag = v1
	self.pre = v2
	self.msg = string.upper(v3)
	self.ref_api = rawget(_G, self.msg)
	self.context = context
	
	if v1 == nil or v2 == nil or v3 == nil or table.getn(self.tbarg) < 1 then
		xlog_warn_flag = xlog_warn_flag + 1
		_xlog("Warning: syntax format incorrect at '%s'", context)
	elseif self.msg ~= "JUDGE" and(self.ref_api == nil or type(self.ref_api) ~= "function") then
		xlog_warn_flag = xlog_warn_flag + 1
		_xlog("Warning: cannot locate function (%s) at '%s'", self.msg, context)
	end	
	
	return self.tbarg[3]
end

function CAction:doaction()
	if self.ref_api ~= nil and type(self.ref_api) == "function" then	
		self.time1 = os.clock()		
		local retval, match_index, result = self.ref_api(unpack(self.tbarg))
		self.time2 = os.clock()
		if retval == nil or match_index == nil then		
			_xlog("Warning : function [%s] return nil  at '%s'", self.msg, self.context)
		end
		self.done = true
		self.retval = retval or - 1
		self.match_index = match_index or 1
		self.result = result or {}
	end
	
	return self.retval, self.match_index, self.result
end

local CScriptAction = {
	tag = nil,-- flow tag   
	tbactions = nil,   -- table for CAction
	detitle = nil
}

function CScriptAction:decode(tag, tb)
	self.tag = tag	
	self.tbactions = {}
	self.detitle = {}
	for k, v in pairs(tb) do
		local action = _xnew(CAction)
		if action ~= nil then
			table.insert(self.tbactions, action)
			local detitle = action:decode(v[1])		
			if detitle:find('%b<>') then
				table.insert(self.detitle, detitle)	
			end
		end
	end
end

function CScriptAction:visit()
	local function find_next_action(curkey, curtag, nextag)
		local tag = string.format("(%s)(%s)", nextag, curtag)
		local length = string.len(curtag)
		for k = length - 1, 1, - 1 do	
			tag = tag .. string.format("(%s)", curtag:sub(1, k))
		end
		
		local count = table.getn(self.tbactions)
		for k = curkey + 1, count do
			local action = self.tbactions[k]		
			local tmptag = string.format("(%s)", action.tag)
			if string.find(tag, tmptag) ~= nil then
				return k, action
			end
		end			
	end
	
	for k, v in pairs(self.tbactions) do
		v:reset()
	end
	for k, v in pairs(self.detitle) do
		debugMsg(string.format('action title: %s ', v))
	end
	local bflag = true
	local index = 1
	local action = self.tbactions[index]
	while action ~= nil do
		debugMsg("action.msg: " .. action.msg)
		if action.msg == "JUDGE" and action.loopcount < tonumber(action.tbarg[2]) then
			debugMsg(string.format("<process> idx:%s	tag:%s     [%s][%s]", index, action.tag, action.tbarg[1], action.tbarg[2]))
			index = tonumber(action.tbarg[1])
			action.loopcount = action.loopcount + 1
			debugMsg(string.format("<to new line > -->>  idx:%s	loop:%s ", index, action.loopcount))
			action = self.tbactions[index]
		else
			debugMsg(string.format("<process> idx:%s	tag:%s     [%s][%s]", index, action.tag, action.tbarg[1], action.tbarg[2]))
			debugMsg("-------------------------------------- Processing  Action  start--------------------------------------------")
			local special_index
			if action.tbarg[2] and action.tbarg[2] ~= "" then
				special_index, action.tbarg[2] = doExlogic(action.tbarg[2])	--处理特殊索引
			end
			local ret, match_index, resultTb = action:doaction()
			if ret ~= 0 and special_index then
				match_index = special_index
				ret = 0
				debugMsg(string.format("[special] symbol action, change ret: %s  picindex: %s  ", ret, match_index))
			end
			debugMsg(string.format("<results> ret:%s   (0=true,other=false)   picidx:%s   value:%s", ret, match_index, resultTb.DelayTime or 0))
			resultTb.stime = resultTb.stime or action.time1	--动作开始时间
			resultTb.etime = resultTb.etime or action.time2	--动作结束时间
			resultTb.action = action.msg	--动作名称
			resultTb.values = resultTb.DelayTime or resultTb.etime - resultTb.stime		--动作耗时(结果值)
			resultTb.ret = resultTb.ret or ret	--结果标识
			resultTb.pos1 = resultTb.pos1 or ''		--坐标1
			resultTb.pos2 = resultTb.pos2 or ''		--坐标2
			if G_APPJRscript then
				local picname = string.format("%s_%s%s_%s.jpg", index, string.lower(action.msg), action.tag, os.date("%j%m%d%H%M%S"))
				debugMsg(string.format("Record JRstep voucher picture: %s ", picname))	-- action_idextag_time.jpg 
				local picret = dev.VocCapture(_, '兼容步骤凭证')		-- JRstepCapture(picname)	--记录凭证
				debugMsg(string.format('Save screenshot: ret=%s', picret))
				resultTb.type = resultTb.type or 'mob'	--类型标识
				JRWriteResult(resultTb, index)	-- 表记录单条兼容测试结果
			else
				if ret ~= 0 then
					local picname = string.format("hzys_%s%s%s_%s.png", G_Id:gsub("_", ''), index, action.tag, os.date("%Y%m%d%H%M%S"))
					debugMsg(string.format('Record voucher screenshot: %s', picname))	-- hzys_idtag_time.png
					local picret = dev.VocCapture(picname)		--错误凭证图片
					debugMsg(string.format('Save screenshot: ret=%s', picret))
					resultTb.file = picname
				end
				resultTb.type = resultTb.type or 'auto'	--类型标识
				doTitleResult(ret, action.tbarg[3], resultTb)   -- results to files
				for k, v in pairs(self.detitle) do
					if v == action.tbarg[3] then	
						table.remove(self.detitle, k)
						debugMsg(string.format("remove title: %s ", v))
						break
					end
				end
			end
			debugMsg("-------------------------------------- Processing  Action   end --------------------------------------------")
			if ret == 0 then
				index, action = find_next_action(index, action.tag, action.tag .. match_index)
			else
				if not G_APPJRscript then
					for k, v in pairs(self.detitle) do
						debugMsg(string.format("Remaining title items for record failure: %s ", v))
					end
				end
				bflag = false
				break
			end
		end
	end
	
	return bflag
end

local CScriptActionFramework = {
	tbsets = {}, -- table for CScriptAction   
}

function CScriptActionFramework:start(tb, logfile)
	xlog_warn_flag = 0
	xlog_file_name = logfile or "/data/local/tmp/c/frmk.log"
	
	self:prepares(tb)
	if xlog_warn_flag == 0 then
		self:sechdule(tb)
	end
end

function CScriptActionFramework:prepares(tb)
	local function checkaction(tag, v)
		if tag == nil or v == nil or type(v) ~= "table" then return end
		local strkey = tostring(v)
		if self.tbsets[strkey] == nil then
			local scriptaction = _xnew(CScriptAction)
			if scriptaction ~= nil then
				self.tbsets[strkey] = scriptaction
				scriptaction:decode(tag, v)
			end
		end
	end
	
	for k, v in pairs(tb) do
		checkaction(v[1], v[2])
		checkaction(v[1], v[3])
		checkaction(v[1], v[4])
	end
end

function CScriptActionFramework:sechdule(tb)
	local function _visitone(v)
		local bflag = true
		if v ~= nil and type(v) == "table" then
			local tbtemp = self.tbsets[tostring(v)]
			if tbtemp ~= nil then
				bflag = tbtemp:visit()			
			end
		end
		return bflag
	end
	
	local prevtag = ""
	for k, v in pairs(tb) do
		local vtag = v[1]	
		if vtag > prevtag then
			prevtag = vtag
			if _visitone(v[2]) or _visitone(v[3]) or _visitone(v[4]) then
			else break end
		end
	end
end
--*****************************************************************************************************************--
--*****************************************************************************************************************--
function framework_start(tb, log)
	CScriptActionFramework:start(tb, log)
end
--*****************************************************************************************************************--
--*****************************************************************************************************************--
--==============================--
--desc:结果信息记录处理、结果上传
--time:2018-04-16 05:21:34
--@Log: 上传result/id下的所有文件
--==============================--
--################################################################################################
function doSysResult(localFile) --复制文件夹至上传目录
	localFile = localFile or G_debugDir
	local tmpfiles = exc._lsfiles(localFile)
	for k, v in ipairs(tmpfiles) do
		if v ~= "" and v == "result.txt" then
			local resultTxt = string.format("%sresult.txt", G_debugDir)
			local resultDirTxt = string.format("%sresult.txt", G_resultDir)
			local retxt = exc.readfile(resultTxt)
			local errtb = {ret = '04', values = '-'}
			if not retxt:find('INPHONE') then std_DoResult(_, errtb) end
			debugMsg(string.format("Copy Result:  %s >>>>> %s", resultTxt, resultDirTxt))
			exc._cpfile(resultTxt, resultDirTxt)
		end
	end
	debugMsg(string.format("del local results: %s ", localFile))
	debugMsg(string.format("cp folder:  %s >>>>> %s", localFile, G_resultDirLog))
	exc._cpfolder(localFile, G_resultDirLog)	--复制文件夹  1_1_1 >>> FILE/1_1_1
	os.execute(string.format("rm -r %s", localFile)) --删除旧结果
end
function doSysResult_old(localFile) --复制文件夹至上传目录
	localFile = localFile or G_debugDir
	local resultTxt = string.format("%sresult.txt", G_debugDir)
	local cpdebugf = function(fname)
		local otherDirTxt = string.format("%s%s", G_debugDir, fname)
		local debugFTxt = string.format("%s%s", G_resultDirLog, fname)
		debugMsg(string.format("Copy:  %s >>>>> %s", otherDirTxt, debugFTxt))
		exc._cpfile(otherDirTxt, debugFTxt)
	end
	local tmpfiles = exc._lsfiles(localFile)
	for k, v in ipairs(tmpfiles) do
		if v ~= "" then
			if v == "result.txt" then
				local resultDirTxt = string.format("%sresult.txt", G_resultDir)
				debugMsg(string.format("Copy Result:result.txt  %s >>>>> %s", resultTxt, resultDirTxt))
				exc._cpfile(resultTxt, resultDirTxt)
				-- if G_APPJRscript then cpdebugf(v) end		--兼容app结果文件
			else
				cpdebugf(v)		--其它凭证
			end
		end
	end
	debugMsg(string.format("rm local results: %s ", localFile))
	os.execute(string.format("rm -r %s", localFile)) --删除旧结果
end
function toHeaderResult(ArguMentList) --形成结果头文件 app测试 业务测试共用
	local retimei = _cfunc.DevCode() --设备编码 手机:IMEI??	pc:资产编码 猫: 编码
	local retdtype = _cfunc.DevType() --拨测设备型号
	local NetInfo = {"Mobile GSM", "Unicom GSM", "Mobile TD", "Telecom CDMA",
	"Test Net", "Telecom CDMA", "Unicom WCDMA", "Mobile TD-S", "Telecom FDD-LTE"
	}
	local NetNum = {46000, 46001, 46002, 46003, 46004, 46005, 46006, 46007, 46011}
	local NInfo = _cfunc.GetNetworkOperator() --46001
	local info = exc._inTable(NInfo, NetNum)
	local net = NetInfo[info]
	local retnet = net ~= "WIFI" and "LAN" or "WIFI"
	local retip = _cfunc.GetIp() or "127.0.0.1"
	local arg = ArguMentList[2] .. "|" .. ArguMentList[4]
	Businesses = G_APPBLscript and _cfunc.Utf8ToGbk(Businesses) or Businesses
	
	local valueStr = string.format("hzys\t%s\t%s\t0,0\t%s\t18500000000\t%s\t%s\t%s\tNA\t%s\t%s", retdtype, retimei, retip, arg, tostring(Businesses), Clientversion, retnet, Edition)
	return valueStr
end
--==============================--
--desc:
--time:2018-06-25 02:18:36
--@ret:	值  结果成功或失败  0或1 
--@rsttable: 表  结果字段表
--@titles:	值  测试指标
--@valuestr: 值  测试结果值  30等
--@vocfile: 凭证文件
--return 
--==============================--
local function toContentResult(ret, rsttable, titles, valuestr, vocfile)
	local rettable = type(rsttable) == "table" and rsttable or {}
	local m_Rtype = rettable.type or "auto"
	local m_Edition = rettable.Edition or "1.0.0"
	local m_Stime = rettable.stime or os.date("%Y%m%d%H%M%S")
	local m_Etime = rettable.etime or os.date("%Y%m%d%H%M%S")
	local m_Title = titles or rettable.title or "TitleError"
	local m_Ret
	if ret then
		m_Ret = ret == 0 and "00" or "03"
	elseif rettable.ret then
		m_Ret = rettable.ret
	else
		m_Ret = "00" --默认成功
	end
	local m_Vtype = rettable.vtype or "1" --默认类型
	local mp_value = m_Ret == "00" and "1" or "0"	--成功 为1
	rettable.values = rettable.taskId and string.format("%s|%s",rettable.values,rettable.taskId) or rettable.values 
	local m_Value = rettable.values or valuestr or mp_value
	local m_Net = rettable.net or "Lan"
	
	local m_File = ""
	if rettable.file or vocfile then
		if rettable.file and exc._file_exists(G_debugDir .. rettable.file) then
			m_File = rettable.file
		elseif vocfile and exc._file_exists(G_debugDir .. vocfile) then
			m_File = vocfile
		else
			local tmpvoc = string.format("voc_%s.txt", os.date("%Y%m%d%H%M%S"))
			local errtxt = rettable.file or vocfile
			exc._writeFile(G_debugDir .. tmpvoc, errtxt, 'w+')	
			m_File = tmpvoc
		end
	end
	-- local m_File = rettable.file or vocfile or ""
	local m_Round = rettable.round or G_ArguMentList[4]
	local m_Pos = rettable.pos or ""
	local m_Bound = rettable.bounds or ""
	
	local tmptb = {}
	table.insert(tmptb, m_Rtype) 	--结果类型 auto、video、file 等
	table.insert(tmptb, m_Edition)
	table.insert(tmptb, m_Title)
	table.insert(tmptb, "INPHONE")	 --拨测方式
	table.insert(tmptb, m_Stime)
	table.insert(tmptb, m_Etime)
	table.insert(tmptb, m_Round) 	--当前测试轮次
	table.insert(tmptb, "0") 		--固定值
	table.insert(tmptb, m_Ret) 		--测试结果 00:成功 03:业务失败 01:脚本错误
	--[[1=成功率(%)		2=速率(KB/s)	3=时长(s)	4=次数	5=时间(s)	8=时长(ms)
	6=方差			7=页面大小(KB)	9=页面大小(B)	10=带宽大小(MB)		11=信号强度(dbm)
	12=频段(HZ)		13=频点
	20 =  数值	21 = 自定义(20字符)
	'00' => '成功',  '01' => '脚本错误引起的失败', '02' => '良性突发事件引起的失败', 
	'03' => '业务指标的失败', '04' => '前置条件失败',
 	'05' => '无法拨测', '06' => 'IP网络失败', '07' => '下行短信拥塞',  '08' => '网络延时', 
	'11' => '依赖指标失败',  '14' => '业务微量变动引起的失败', '09' => '无效数据'
	--]]
	if type(m_Value) == "table" then
		m_Value = table.concat(m_Value)
	end
	if not m_Value or m_Value == "" then m_Value = 0 end
	debugMsg(string.format("m_Ret: %s\tm_Value: %s\tm_Vtype:%s", m_Ret or "nil", m_Value or "nil", m_Vtype or "nil"))
	-- debugMsg("m_userValue:" .. m_userValue)	--咪咕上报 自定义描述信息
	local testValue = string.format("%s|%s", m_Value, m_Vtype)
	-- local testValue = table.concat(auto_result, "|")	--string.rep("|NA", 8)
	table.insert(tmptb, testValue)
	table.insert(tmptb, m_Net)
	table.insert(tmptb, "0") 	--有无代理 0:无  1:有
	if m_File and m_File ~= "" then
		table.insert(tmptb, "1") --有附件 1:有
		local zip_File = m_File:gsub("%.(%w+)$", "")
		local zipname = string.format("%s%s.zip", G_resultDirLog, zip_File)
		local zuhestr = string.format("%s%s|", G_debugDir, m_File)
		debugMsg(string.format("zip:  %s >>>>> %s", zuhestr, zipname))
		dev.Zip(zipname, zuhestr)
		table.insert(tmptb, zip_File .. ".zip")
		debugMsg(string.format("remove file: %s", G_debugDir .. m_File))
		os.remove(G_debugDir .. m_File)
	else
		table.insert(tmptb, "0") --无附件 0:无
		table.insert(tmptb, m_File)
	end
	
	return table.concat(tmptb, "\t")
end

-- local rettable = {"mob", "click", values, xpathtb[2]}	--结果格式, 均可为空
function std_DoResult(ret, retResults, retitles, vocfile) --UI
	local tmpstr = toContentResult(ret, retResults, retitles, vocfile) --形成单条结果2
	exc._writeLog(string.format("%sresult.txt", G_debugDir), string.format("%s\n", tmpstr), "a+") --写结果
	debugMsg(string.format("Log: %s", tmpstr))
	return tmpstr
end
-- ===============================================================================================
--==============================--
--desc:脚本执行入口函数
--time:2018-04-24 09:44:41
--@ParmSysParms: 任务运行参数
--text：暂未区分ios参数 
--==============================--
-- ===============================================================================================
function uusenseMain(ParmSysParms) --入口
	_cfunc.Print("ZXY-ParmSysParms:" .. ParmSysParms .. "#")
	G_ArguMentList, G_Id, G_resultDir, G_resultDirLog, G_debugDir, G_scriptPic = doSysPram(ParmSysParms) --参数及目录获取
	local buildv = GetUUVersion()	--当前Autosense信息
	if tonumber(buildv) > 5 then debugMsg(string.format("[open RecScreenManager]:模块 ")) end	--开启录屏，暂支持5.0以上
	G_address = GetTestUrl()	--web平台地址
	debugMsg(string.format("[EngineVer]: --- %s ---", MainEdt))
	Dumper_Init()	--初始化控件模块
	debugMsg(string.format("modepath: %s", modepath))
	debugMsg(string.format("[TestPrams]: %s", ParmSysParms))
	local scriptPath = _cfunc.ScriptRoot() .. "/" .. G_ArguMentList[5]
	local Stime = os.date("%Y%m%d%H%M%S")
	local nowRound, maxRound = G_ArguMentList[4], G_ArguMentList[#G_ArguMentList - 2] or ""
	debugMsg(string.format("TaskRunAs: %s_%s_%s_%s  (taskID/scriptID/nowRound/sumRounds)", G_ArguMentList[2], G_ArguMentList[5], nowRound, maxRound))
	G_scriptPath = G_ArguMentList[2] == "1" and "/data/local/tmp/c" or scriptPath
	debugMsg("Script Path: " .. G_scriptPath)
	G_now_width, G_now_height, G_deviceName, G_DevCode, G_NetFlag, G_Location, G_Brand = DeviceInfo()
	DScreen =(not DScreen or DScreen == "") and string.format("%s*%s", G_now_width, G_now_height) or DScreen
	debugMsg(string.format("Pram DScreen: %s\t picPath: scriptPath/pic/", DScreen))
	Clientversion = Clientversion or "v1.0"
	Businesses = Businesses or "Untitled"
	Edition = Edition or "1.0.0"
	debugMsg(string.format("[ScriptInfo]: ScriVer: %s  Business: %s   AppVer: %s", tostring(Edition), Businesses, Clientversion))
	DeviceUnit() 	--开始
	local ValueStr = toHeaderResult(G_ArguMentList)		--写结果 result.txt 头文件
	exc._writeLog(string.format("%sresult.txt", G_debugDir), string.format("%s\n", ValueStr), "a+")
	local status, err
	local TaskPramtb = {}	--app测试参数表
	if G_ArguMentList[6] == 'mob' then	--app测试(录制格式)，处理
		TaskPramtb = app_PramInit(G_ArguMentList)	--解析web附加参数	tasktype apptype apppath pkgname md5 bltime 
		if TaskPramtb ~= 0 then
			doAPPTestPram(TaskPramtb)	--分类app测试参数类型, 打印日志
			status, err = pcall(dofile, string.format("%sfuncApper.lua", modepath))	--app测试
			if status ~= true then
				debugMsg(string.format("[error]: APPtest mode dofile error:\n%s", err))
			else
				-- 开始app下载、安装、启动、logcat日志捕捉开启
				status, err = pcall(APPerMain_init, TaskPramtb) --安装 部署
				if status ~= true then
					debugMsg(string.format("type[mob] APP script function error:\n%s", err))
				else
					dev._PerfsManager('start Perfs', TaskPramtb.pkgname)	--记录性能（格式与极测一致）
				end
			end
		end
	end
	----------------------------------------------------------------------
	--脚本内容
	debugMsg("^_^ * * * * * * * * * * * *  Business Actions Testing Execution [start] * * * * * * * * * * * * * * ^_^ ")
	G_pkgname = TaskPramtb.pkgname or G_ScriptFlg.pkgname or nil
	debugMsg(string.format("application-under-test pkgname : %s", G_pkgname or "nil"))
	if G_APPBLscript then
		local testTime = TaskPramtb.bltime or 5
		status, err = pcall(APPerMain_Traveler, pkgname, testTime)		--运行bootstrap遍历
		end_unisntall(G_pkgname)	--测试完成，卸载app
		WriteBLValueTable()		--写遍历测试结果，复制
	elseif ScriptAction then		--录制格式测试
		dev.logcat('start logcat', G_pkgname)		--非app测试开启logcat日志记录，手写代码暂不开启（日志可能过大）
		local expmodef = string.format("%sfuncExp.lua", modepath)	--脚本三方方法扩展实现
		if exc._file_exists(expmodef, 3000) or G_ZXY_85620 then
			status, err = pcall(dofile, expmodef)	
		end
		status, err = pcall(framework_start, ScriptAction, string.format("%sdebug.txt", G_debugDir), flg)	--固定格式解析业务流程
		if G_APPJRscript then
			if not DebugFlag then end_unisntall(G_pkgname) end	--测试完成，卸载app, 本地调试不卸载
			WriteJRVakueTable(DebugFlag)		--写兼容测试结果，复制
		end
	else
		status, err = pcall(doActionMain) 	--手写代码业务流程（监控测试脚本在此实现）
	end
	if status ~= true then
		debugMsg(string.format("script execute error:\n%s", err))
	end
	debugMsg("^_^ * * * * * * * * * * * *  Business Actions Testing Execution  [end] * * * * * * * * * * * * * * * ^_^")
	----------------------------------------------------------------------
	DeviceUnit(1) 	--结束, uiautomator-end、logcat-end 
	if G_ArguMentList[2] ~= "1" and not G_APPBLscript then doSysResult()
	else debugMsg("local debug , be not upload result .") end --处理web测试结果
	return 0
end
--################################################################################################
--==============================--
--desc:脚本方法 功能实现对应表（兼容原已有功能）
--time:2017-10-18 05:23:22
--@return: ret, match_index, resultTb
--@text: 首字母统一大写
--==============================--------------
--################################################################################################
KEY = dev.Key
COMMAND = dev.AdbCommand    --执行命令			已支持
TOUCH = dev.Touchs          --坐标点击			已支持
CTOUCH = dev.CycTouchs      --循环点击			已支持
CLICK = dev.ClickUI         --控件点击			已支持
ASSERT = dev.AssertMain     --控件校验			已支持
KILLPS = dev.Kill_Process   --杀进程			已支持
APP_AUTO = dev.OpenAPP      --打开app			已支持
SLEEP = dev.Sleep			--暂停s				已支持
DELETE = dev.DeleteStr		--删除字符串		已支持
CAPTURE = dev.VocCapture	--截取屏幕			已支持
COPY = dev.InputString
INPUTC = dev.InputString
INPUT = dev.InputString     --输入字符串		已支持
RATE = dev.null
TITLE = dev.Title           --直接出指标，可能无法独立（取结果值问题）
SFLOW = dev.null			--是否可用新java方式代替？
EFLOW = dev.null
PERFS = dev._PerfsManager			--进程性能监测java方式	已支持
URL_AUTO = dev.OpenBrowser_Android	--默认浏览器打开url		已支持
VIDEO_SIG = dev.null		--vm2视频测试，需root后，配合xposed使用，暂未实现
VIDEO = video_service		--vm2视频测试，需root后, 无root终端,暂未实现
VIDEO_URL = dev.null		
VIDEO_PLAYBACK = dev.null	--不明白是什么场景
CHECKNET = dev.null
INTERACTA = dev.null
INTERACTB = dev.null
PING = dev._PingInfo          --ping测试		已支持
PING_LOSS = dev.null
URL = dev.null
RVRSPIC = dev.null		-- 反向比对
PSTVPIC = dev.null		-- 正向比图
PSTVBUF = dev.null
RVRSBUF = dev.null
RECVSMS_SIG = dev.SMS_RecvSig       --接收短信_信令
CLEARSMS = dev.SMS_Clear            --清除短信
CLEARSMS_SIG = dev.SMS_ClearSig     --信令清除短信
GETINI = dev.ReadIniCyc             --读取文件内容

REMOVECACHE = dev.null
RECVSMS = dev.SMS_Recv         --接收短信
VERSION = dev.null
CONNECTWLAN = dev.null
-- JUDGE = dev.jumpto                  --跳转逻辑，无法独立与结构	已支持
GETVIEW = dev.UI_GetView       --获取界面某部分信息, 待测试  provText 字段
RATE_URL = dev.null
BREAK = dev.null
DNS = dev.null
EPACKET = dev.null
INPUTINI = dev.null
LOOP_END = dev.null
LOOP_START = dev.null
MODIFYFILE = dev.null
CHECKFILE = dev.null
CLEARLOG = dev.null
DOWNBT = dev.null
DOWNH = dev.null
ENGINEUD = dev.null
GETTIME = dev.null
MONITOR = dev.null
PAGETURN = dev.null
READINI = dev.null
REPLYSMS_SIG = dev.null
SENDSMS_SIG = dev.null
SPACKET = dev.null
SVC_WIFI = dev.null
SWIPE = dev.null
TRANSMITSMS_SIG = dev.null
TRAVERSE = dev.null

--以下基本无人用
DBMOVE = dev.null
DBTOUCH = dev.null
DOWNF = dev.null
DRAG = dev.null
ENERGYRANDOM = dev.null
GET_VIEW_AREA = dev.null
GETHTTPINFO_END = dev.null
GETHTTPINFO_START = dev.null
GETWLAN = dev.null
INFOWLAN = dev.null
INPUT_VIDEOURL = dev.null
INTERACT_SIM_B = dev.null
LONGCLICK = dev.null
NETSENSE = dev.null
PERFORMANCE = dev.null
PHONECALL = dev.null
RECVSMS_SIG_UP = dev.null
REPLYSMS = dev.null
SCROLL = dev.null
SENDIMG = dev.null
SENDSMS = dev.null
SIGNAL = dev.null
SNR = dev.null
STARTENERGY = dev.null
STOPENERGY = dev.null
SWITCHCARD = dev.null
TCP = dev.null
TestTime = dev.null
TOUCH_SLICE = dev.null
TRACEROUTE = dev.null
UDFILE = dev.null
UPLOADF = dev.null
VIDEO_PLAY = dev.null
WRITE = dev.null

--以下为临时兼容
-- module("std", package.seeall)
-- dofile("/data/local/tmp/c/mode/autofuncall.lua")	--合并uiauto 和 uuauto		1.0.1_1219pm14
-- dofile("/data/local/tmp/c/mode/bscOpm.lua")
-- std.key = std_uuaction_key					--按键操作
-- std.findelement = std_uifind_element		--查找界面元素 index text id ,t1
-- std.touchpos = std_uuaction_touch				--点击坐标 xy
-- std.clickbounds = std_uiaction_nodes			--点击控件 bounds
-- std.swipebounds = do_uibounds_swipe				--滑动控件 bounds
-- std.imgmatch = std_uuaction_match				--图片比对 x_x_x_x.bmp,t1
-- std.move = std_uuaction_move				--坐标滑动		
-- std.sleep = std_uuaction_sleep				--停顿
-- std.input = std_uuaction_input				--输入字符
-- std.swipe = std_uiaction_swipe				--控件滑动	adjpram 
-- std.click = std_uiaction_cilck				--控件点击	adjpram,t1 
-- std.toresult = std_opm_result				--写result结果
-- std.delete = std_uuaction_delete			--删除字符串
-- std.killps = std_uuaction_killps			--杀进程
-- std.capture = std_uuaction_capture			--截图
-- std.command = std_uuaction_command			--执行命令
-- std.clock = Get_OsClock						--时间戳ms
-- std.matchtext = XY_getUIText		--匹配获取页面文本  暂未实现
