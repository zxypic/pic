BscEdt="2.1.3"		--咪咕版本
BscEdt="3.2.59.091115"	

-------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------全局变量声明----------------------------------------------------------------------
--引擎中使用的全局变量
G_EngineMode=nil										--全局变量，引擎模式(IOS,Android等)
G_Id=nil												--全局变量，任务ID
G_SysParms=nil											--全家变量，系统传入参数
G_DeviceName=nil										--全局变量，设备名
G_RelDeviceName=nil										--全局变量，真设备名
G_SysRstPath=nil										--全家变量，结果目录
G_SysDbgPath=nil										--全家变量，调试目录
G_SysEngPath=nil										--全家变量，引擎比图路径
G_SysScpPath=nil										--全家变量，脚本比图路径
G_Pflg="/"												--全局变量，目录分隔符
G_RecvNumber=nil										--全局变量，比对成功的短信特服号，用于回复短信
G_recvcontent=nil										--全局变量，比对成功的短信内容，用于转发短信
G_FuzzyFlag=nil											--全局变量，模糊比对标志
G_FTouchFlag=nil										--全局变量，相对坐标touch标志
G_res_x=nil												--全局变量，ftouch起点x坐标
G_res_y=nil												--全局变量，ftouch起点y坐标
G_CycUrl=nil											--全局变量，循环模版测试参数
G_Captcha=nil											--全局变量，短信中获取到的验证码
G_Turnnumber=nil										--全局变量，测试轮次
--G_BigMode=nil											--全局变量，大图方法测试
G_ScriptStart=nil										--全局变量，脚本开始计时
G_ScriptEnd=nil											--全局变量，脚本结束计时
G_OpSrver="result"										--全局变量，运营商名(结果文件名)
G_GlbVocMsg=""											--全局变量，短信，信令凭证信息
G_CMValueTable={}										--全局变量，结果记录表
G_CaptureTab={}											--全局变量，脚本截图名称表
G_CMVouc=""												--全局变量，脚本凭证文件名
G_CMPNVouc=""											--全局变量，ping文件名
G_CMDNSVouc=""											--全局变量，dns文件名
G_NETSENSE=""											--全局变量，netsense元素测试值
G_INIContList=nil										--全局变量，INI内容列表
G_INIFalse=nil											--全局变量，指标失败记录INI内容
G_TestTimeTab={}										--全局变量，时长指标加几的表
G_img2=nil												--全局变量，多张比图
G_Imgtime=nil											--全局变量，单次比图时间
G_first_time = nil										--全局变量，点击前耗时
G_ScriptPic=""											--全局变量，返回脚本图片
G_ScriptList={}											--全局变量，当前脚本
G_AutoUPload=false										--全局变量，上传脚本标志
G_ScriptID=''											--全局变量，脚本ID号
G_actionID=0											--全局变量，正常执行流程ID
G_scriptactionID=0										--全局变量，模版流程序号
G_ExactionID=false										--全局变量，异常流程执行标志
G_ReActionID=false 										--全局变量，复测前置流程
G_scriptflag=false										--全局变量，多流程模版标识
G_Oderflag=0											--全局变量，订购退订模版标识
G_scriptimg={}											--全局变量，脚本图片集合
G_packet={}												--全局变量，抓包名字
G_packetflag=false										--全局变量，抓包标记
G_vm2time=nil											--全局变量，vm2方法调用时间
G_vm2flag=nil											--全局变量，标记视频数据日志名
G_vm2flag_new=nil										--全局变量，视频缓冲时间记录文件名称
G_vm2timeflag=false										--全局变量，vm2方法时间标记
G_sig=nil												--全局变量，信号强度统计文件路径
G_PNVouc={}												--全局变量，ping文件名称列表
G_DNSVouc={}											--全局变量，dns文件名称列表
G_videoUrl_table={}										--全局变量，湖北视频测试全局变量
G_videoUrl_band_table={}								--全局变量，湖北视频测试码率表
G_videoUrl_flag=false									--全局变量，湖北视频测试标识
G_VideoUrl_cnt=1										--全局变量，湖北视频测试次数标识
G_VideoUrl_input_cnt=1									--全局变量，湖北视频测试次数标示
G_startenergy=nil										--全局变量，电量消耗初始状态
G_fail_dump_tab={}										--全局变量，失败时dump存放路径列表
G_fail_flag = false										--全局变量，测试失败标记
G_loop = nil											--全局变量，循环测试标记
G_loop_flag = 0											--全局变量，循环测试位置标记
G_rate_url = nil										--全局变量，视频下载时间
G_rateTime_url = nil									--全局变量，视频下载速度
G_WRITE_FILE = {}										--全局变量，写文件的全表
G_flag_ = 1                                             --全局变量，逻辑与
G_now_width = nil										--全局变量，当前手机宽度
G_now_height = nil										--全局变量，当前手机长度
G_APPscript=nil											--全局变量，App测试标志
G_WEBscreen=nil											--全局变量，web视频记录标志
G_JRResultXml = {}										--全局变量,兼容测试结果
G_FrameRate = nil										--全局变量,预留给录屏功能帧率调整
G_BitRate = nil											--全局变量,预留给录屏功能帧率调整
G_TmpValue = nil										--临时需求变量：咪咕多渠道app测试
G_mgScriptFlg = {RESPONSE="nil"}										--咪咕直播比对识别
--脚本中使用的全局变量
Businesses=nil										--全局变量，测试业务名（必填）
G_Replace_Turnnumber=false							--全局变量，为true时表示脚本需要在测试过程中替换将某些值替换为轮次
UnInit=nil											--全家变量，不执行设备初始化的全局变量
TestMode = nil										--全家变量，测试类型，包括："wlan"，"MONITOR"
PortFlag=nil										--全局变量，视频测试启动端口
G_timeOut = 60										--全局变量，统一比图的超时时间
G_ClickTimeOut = 30									--全局变量，统一控件点击查找的超时时间
G_Reboot=nil										--全局变量，重启手机时间间隔
G_failflag = false									--全局变量，为真时，失败后0流程会验证，通过后会将结果改为无法拨测。
G_Fuzzy_flag = false								--全局变量，非出指标步骤启用模糊比对方式
DScreen = nil										--全局变量，脚本编写手机分辨率
G_Fuzzy_Offset = 100								--全局变量，脚本限定，指给定图片的扩张位置，默认100像素
G_pkgName = nil										--全局变量，脚本指定，测试app包名
G_logcat_flag = false								--全局变量，logcat日志开关
G_video_buf = false									--全局变量，视频卡顿时，若可能，上传数据包。
SwitchCity = nil									--全局变量，切网城市，格式：5710|1000|2100|7550
SwitchTime = nil									--全局变量，切网时间，对应切网城市，格式：1,2,3|1,3,4|11,19,21|15,17,18
G_PackageName = nil									--全局变量，被测app报名，主要服务于获取http相互通讯的功能，若要启用功能，该变量为入口，不可或缺
G_http_keyword = nil								--全局变量，被测目标url中的关键字，当前主要服务于获取http相互通讯的功能，选填
G_mgAppTest = nil 									--全局变量，咪咕多渠道app测试时填写的packageName
G_UIAutoClick = true								--全局变量，开启拨测过程中的UI_AutoClickOpen功能
G_mgKVENURL = nil									--全局变量，特定链接解密地址
G_OnecTime = nil									--全局变量，脚本定义单次比图超时时间 单位ms毫秒
DebugSCPath = DebugSCPath or '/data/local/tmp/c'	--本地调试目录
IOSCALE,IOSPTYPE,WDATYPE,IOSPOINT = nil,nil,nil		--macios

----------------------------------------------------------脚本运行函数------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------
function MainFunction()				--主函数
	local ret=0
	local sig
	local FileName
	local scriptcontent

	if ScriptAction then	--多流程模版
		Serv_Action(G_DeviceName,ScriptAction)
	elseif CycAction then	--循环模版
		Serv_Action(G_DeviceName,CycAction,"Y")
	elseif BusinessActionA and not BusinessActionB then	--单流程模版
		Serv_ALL_OneAction(G_DeviceName,BusinessActionA)
	elseif BusinessActionA and BusinessActionB then	--订购退订模版
		Serv_OrderAndCancel(G_DeviceName,BusinessActionA,BusinessActionB)
	end
	if G_FileName then
		DebugLogId("性能测试方法未关闭,系统强制关闭!","脚本错误")
		GetAPI_perf_monitor(nil,nil,1)
	end

	GetAPI_stop_signal_monitor()
	DebugLogId("结束信号强度统计...")
	-- if not DebugFlag then
	-- 	if G_AutoUPload==true then
	-- 		GetAPI_auto_FileZIP()											--自动修改脚本压缩函数
	-- 		FileName = io.open(G_SysScpPath..G_Pflg..'script.zip', "rb")
	-- 		scriptcontent=FileName:read('*all')
	-- 		DLURL=string.format("POST /apps/scriptupload/upload HTTP/1.1\r\nHOST:a.netsense.cn\r\nzipfilename:script.lua\r\ntype:2\r\nscript_id:%s\r\nbody:%s",G_ScriptID,scriptcontent)
	-- 		ret,_,_,_,_,_,_,_,_,_,concent=GetAPI_HttpClient("a.netsense.cn",DLURL)
	-- 	end
	-- end
	return ret
end

--ParmSysParms：OS类型|任务Id|执行ID|执行轮次|脚本名称ID|
-- android|682044|9983|15|14026|   old
-- android|102850|9983|15|102121|auto|0||||||||1|102850##0##0############|       new
--"android|5606516|2|1|111864|auto|0||||||||5606516##0##0##############5##1##1##5##1|"
--"android|5606503|1|1|2|mob|0||||||||5606503##1##0####http://39.156.1.70:81/data/apps/201712/5a3ba33d2952a514.apk##com.qq.reader##6.5.7.888##106##87faa6391c8dd0d4c19eeae0570bc07c##5##1##1##5##1|"
function uusenseMain(ParmSysParms)
	local status,err
	local devcount
	local UsrParms = ""
	--本地调试判断
	if DebugFlag then
		ParmSysParms=DebugFlag
	elseif ParmSysParms=="" or ParmSysParms=="android|" then
		DebugFlag="Android|1|1|1|200|"
		ParmSysParms=DebugFlag
	end
	G_SysParms = ParmSysParms
	local ArguMentList = splittable(G_SysParms,"|")
	GetOSFlag(ParmSysParms)				--获取引擎模式（G_EngineMode = Android or IOS）
	localToGlobal(ArguMentList)			--把局部变量转换成全局变量
	G_DeviceName = GetDeviceNameConfig()		--获取终端名
	local EngineName=G_DeviceName.."Engine"
	if G_EngineMode == 'Android' then
		AndroidFunction(EngineName)			--Andriod脚本运行前处理
	elseif G_EngineMode == 'IOS' then
		IOSFunction(EngineName)				--IOS脚本运行前处理
	elseif G_EngineMode == 'MacIOS' then
		MACFunction(EngineName)				--MAC脚本运行前处理
	end
	DebugLogId(ParmSysParms)
	
	scriptDeal()						--脚本内容处理
	DebugLogId("任务编号:"..G_Id.."--(任务Id_执行Id_执行轮次)")
	--DebugLogByFile("任务编号:"..G_Id.."--(任务Id_执行Id_执行轮次)"))
	--DebugLogByFile(ParmSysParms)
	DebugLogId("脚本名称:"..ArguMentList[5])
	-- DebugLogId("引擎图片路径:"..G_SysEngPath)
	DebugLogId("脚本图片路径:"..G_SysScpPath)
	DebugLogId("引擎版本:Bsc"..tostring(BscEdt).."-Mob"..tostring(MobEdt))
	DebugLogId("模块版本:App"..tostring(AppEdt).."-Lib"..tostring(LibEdt).."-Dev"..tostring(DevEdt).."-Api"..tostring(ApiEdt).."-Mon"..tostring(MonEdt))
	DebugLogId("脚本版本:"..tostring(Edition))
	GetAPI_GetDevicesInfo()			--获取设备参数信息
	
	DebugLogId("Test Start..............")
	DebugLogId("开始信号强度统计...")
	local sig=GetAPI_signalPath()
	G_sig=sig.."signal.txt"
	GetAPI_start_signal_monitor(G_sig,5)
	
	if ArguMentList[15] and ArguMentList[15] ~=1 then 					--解析参数开关
		local taskPram = _xsplit(ArguMentList[15],"##")
		if taskPram[12] and tonumber(taskPram[12])== 1 then 			--录制视频标识 1表示录屏
			local rlog = _cfunc.Command("getprop ro.build.version.release") 
			if tonumber(string.sub(rlog,1,1)) >= 5 then
				G_RSflag = true												--录屏标志
				G_FrameRate = taskPram[13]									--帧率
				G_BitRate  = taskPram[14] or 1								--码率					
				GetAPI_RecordScreenManager("start",G_FrameRate,G_BitRate)
			else
				DebugLogId("当前设备的系统版本(%s)低于5.0,不支持录屏功能。",rlog)
			end
		end
	end
	
	if UnInit then
		devcount = Device_SimpleInit()
	else
		devcount = Device_Init(G_Id,G_DeviceName,G_SysParms,UsrParms)
	end
	
	DebugLogId("devcount="..devcount)
	if devcount == 0 then
		if G_EngineMode=="IOS" then End() end		--IOS方法对应start(127.0.0.1)
		return -1
	end
	
	if SwitchCity then Device_SwitchNetwork(G_DeviceName) end
	timeOutSet()
	TestMode = TestMode or ''
	
	if G_mgAppTest then MgAppTest() end				--适配mg多渠道app测试

	--开始测试
	if ArguMentList[6] == 'mob' then
		G_APPscript = 1			
		status,err=pcall(APPtestMain,ArguMentList)
	else
		status,err=pcall(MainFunction)
	end
	if status==true then
		DebugLogId("script execute ok")
	else
		DebugLogId("script execute error:"..err)
		GetSurplusResultTitle()
	end
	
	if G_EngineMode=="Android" then
		AndroidEnd()
	elseif G_EngineMode=="IOS" then 
		End()
	end

	if not UnInit then
		Device_UnInit(G_Id,G_DeviceName,G_SysParms,UsrParms)
		GetAPI_OpenAutosense()		--测试完成打开Autosense
	end
	
	--测试结束，开始结果处理操作
	GetAPI_CreateDir(G_SysRstPath)		--创建结果文件夹
	GetAPI_CreateDir(string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg)		--创建结果文件夹
	if G_APPscript ~= 1 then
		GetAPI_logcat("auto_start",APP_PacketName)
		DebugLogId("写测试结果..."..G_SysRstPath)
		WriteCMValueTable()						--写自动拨测结果，压缩
	else
		GetAPI_CreateDir(string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg.."images"..G_Pflg)		--创建结果文件夹
		if G_APPJRscript then
			WriteJRVakueTable(DebugFlag)		--写兼容测试结果，压缩,打包复制
		elseif G_APPBLscript then
			WriteBLValueTable()					--写遍历测试结果，压缩,打包复制
		elseif G_APPMonkey then
			WriteBLValueTable()					--写monkey测试结果，压缩,打包复制	暂时用遍历测试格式，待测试验证
		end
	end
	if not DebugFlag then
		Complete(G_SysDbgPath)
	else
		DebugLogId("本地调试脚本执行完成...")
	end
	--pcall(CopyFile,'/data/local/tmp/c/filelog.txt',string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg..'filelog.txt')
	--pcall(GetAPI_Deletefile,'/data/local/tmp/c/filelog.txt')
	return 0
end

function GetOSFlag(str)			--获取引擎模式（Android or IOS）
	if string.find(string.lower(str),"android") then
		G_EngineMode="Android"
	elseif string.find(string.lower(str),"mac") then
		G_EngineMode="MacIOS"
		IOSCALE = {
			["iPhone1,1"]=1,["iPhone1,2"]=1,["iPhone2,1"]=1,["iPhone3,1"]=1,["iPhone6,2"]=1,
			["iPhone3,3"]=2,["iPhone4,1"]=2,["iPhone5,1"]=2,["iPhone5,2"]=2,["iPhone5,3"]=2,["iPhone5,4"]=2,
			["iPhone6,1"]=2,["iPhone7,2"]=2,["iPhone8,1"]=2,["iPhone8,3"]=2,["iPhone8,4"]=2,["iPhone9,1"]=2,
			["iPhone7,1"]=3,["iPhone8,2"]=3 ,["iPhone9,2"]=3,["iPhone10,3"]=3,["iPhone10,6"]=3,
			["iPhone10,1"]=2,["iPhone10,4"]=2,["iPhone10,2"]=2.6,["iPhone10,5"]=2.6,
		}
		IOSPTYPE = {
			["iPhone1,1"]="iPhone2G",["iPhone1,2"]="iPhone3G",["iPhone2,1"]="iPhone3GS",
			["iPhone3,1"]="iPhone4",["iPhone3,2"]="iPhone4",["iPhone3,3"]="iPhone4",["iPhone4,1"]="iPhone4S",
			["iPhone5,1"]="iPhone5",["iPhone5,2"]="iPhone5",["iPhone5,3"]="iPhone5c",["iPhone5,4"]="iPhone5c",
			["iPhone6,1"]="iPhone5s",["iPhone6,2"]="iPhone5s",["iPhone7,2"]="iPhone6",["iPhone8,1"]="iPhone6s",
			["iPhone8,3"]="iPhoneSE",["iPhone8,4"]="iPhoneSE",["iPhone9,1"]="iPhone7",["iPhone10,4"]="iPhone8",
			["iPhone7,1"]="iPhone6Plus",["iPhone8,2"]="iPhone6sPlus" ,["iPhone9,2"]="iPhone7Plus",
			["iPhone10,1"]="iPhone8",["iPhone10,2"]="iPhone8Plus",["iPhone10,5"]="iPhone8Plus",
			["iPhone10,3"]="iPhoneX",["iPhone10,6"]="iPhoneX",
		}
		IOSPOINT = {
			["iPhone1,1"]=1,["iPhone1,2"]=1,["iPhone2,1"]=1,["iPhone3,1"]=1,["iPhone3,3"]=2,["iPhone4,1"]=2,["iPhone8,3"]=2,
			["iPhone5,1"]='320*568',["iPhone5,2"]='320*568',["iPhone5,3"]='320*568',["iPhone5,4"]='320*568',
			["iPhone6,1"]='320*568',["iPhone6,2"]='320*568',["iPhone8,4"]='320*568',
			["iPhone7,1"]='414*736',["iPhone8,2"]='414*736',["iPhone9,2"]='414*736',["iPhone10,2"]='414*736',["iPhone10,5"]='414*736',
			["iPhone7,2"]='375*667',["iPhone8,1"]='375*667',["iPhone9,1"]='375*667',["iPhone10,4"]='375*667',["iPhone10,1"]='375*667',
			["iPhone10,3"]='375*812',["iPhone10,6"]='375*812',["iPad7,3"]='834*1112',
		}
		WDATYPE = DevType()
	elseif string.find(string.lower(str),"ios") then
		G_EngineMode="IOS"
		require "devctl"
		require "ping"
		require "web"
		Start("127.0.0.1")
	else
		error("系统标识错误！！！！")
	end
end

function localToGlobal(tab)			--把局部变量转换成全局变量
	--DebugLogByFile('in localToGlobal')
	G_Id = tab[2].."_"..tab[3].."_"..tab[4]
	G_Turnnumber = tab[4]
	G_ScriptID = tab[5]
	G_SysDbgPath = GetAPI_DebugPath()
	G_SysRstPath = GetAPI_ResultPath()
	G_SysEngPath = GetAPI_EnginePicPath()
	G_SysScpPath = GetAPI_ScriptRoot()
	if G_EngineMode == "MacIOS" then
		G_SysDbgPath = G_SysRstPath		--mac目录由app管理，无本地运行目录
		GetAPI_DeleteDir(G_SysDbgPath)	--清除 旧result目录
		GetAPI_CreateDir(G_SysRstPath)	--创建 结果目录 
		GetAPI_CreateDir(G_SysRstPath.."/FILE")	--创建 结果目录 file
		DebugLogId("G_SysDbgPath:"..G_SysDbgPath)
		DebugLogId("G_SysRstPath:"..G_SysRstPath)
	else
		GetAPI_DeleteDir(G_SysDbgPath)	--清除/data/local/tmp/c/result/1_4_5
		GetAPI_CreateDir(G_SysDbgPath)	--创建/data/local/tmp/c/result/1_4_5
	end
end

function GetDeviceNameConfig()				--获取设备名函数
	local FileDeviceName,DeviceName
	FileDeviceName = GetAPI_DevType()
	G_FileDeviceName=FileDeviceName
	DebugLogId("FileDeviceName:"..FileDeviceName)
	if G_EngineMode=="Android" then
		DeviceName = "COMMON"
	elseif G_EngineMode=="MacIOS" then
		DeviceName = "MAC"
	elseif G_EngineMode=="IOS" then
		DeviceName = "IPHONE6"
	else
		DebugLogId("不正确的操作系统，请联系引擎开发人员解决问题")
	end
	G_RelDeviceName=DeviceName
	return DeviceName
end

function AndroidFunction(tmpEngine)
	local keyword
	AndroidEngineDofile(tmpEngine)			--加载COMMONEngine.lua
	if G_Reboot then Method_Reboot() end
	AndroidInit()
	if G_PackageName then			
		if G_http_keyword then
			keyword = G_http_keyword
		else
			keyword = ''
		end
		Method_get_http_info(keyword,G_PackageName,1)
	end
end

function AndroidEngineDofile(tmpEngine)		--加载COMMONEngine.lua
	local dofileret,err=pcall(function()dofile("/data/local/tmp/c/engine/"..tmpEngine..".lua")end)
	if dofileret==false then
		DebugLogId("未找到"..G_DeviceName.."引擎,调用公共引擎...")
		DebugLogId('错误信息：'..err)
		G_DeviceName="COMMON"
		dofile("/data/local/tmp/c/engine/COMMONEngine.lua")
	end
end

function AndroidInit()				--初始化处理
	if DScreen == nil then
		DScreen = tostring(_cfunc.GetDisplayWidth())..'*'..tostring(_cfunc.GetDisplayHeight())
	end
	GetAPI_KillProcess("uiautomator")
	GetAPI_KillProcess("tcpdump")
	GetAPI_KillProcess("logcat")
	GetAPI_KillProcess("com.forys.network")		--抓包的app
	_cfunc.Command("logcat -c")	
	-- GetAPI_CreateDumpDir()			--dump.xml创建和授权
	_cfunc.Command("echo > data/anr/traces.txt")	
	GetAPI_Switch_input(true)
	GetAPI_DeleteDir("/mnt/sdcard/mobileSense")			--清除/mobileSense
	local file = io.open("/sdcard/watchlog.log",'w')
	file:close()
	local file = io.open("/sdcard/watchlog.txt",'w')
	file:close()	
	GetAPI_DeleteDir("/sdcard/AutoManager/")			
	GetAPI_DeleteDir("/sdcard/RecordScreenManager/")	--java性能测试结果目录
	_cfunc.Command("rm -rf /sdcard/AutoManager/")	
	_cfunc.Command("rm -rf /sdcard/RecordScreenManager/")	
	_cfunc.Command("rm -rf /sdcard/packet.log")	
	_cfunc.Command("rm -rf /sdcard/packet_log.txt")	
	_cfunc.Command("rm -rf /data/local/tmp/.fna*")	
end

function IOSFunction(tmpEngine)
	-- require "devctl"
	-- require "ping"
	-- require "web"
	-- Start("127.0.0.1")
	IOSEngineRequire(tmpEngine)
end
function MACFunction(tmpEngine)
	DebugLogId("MacIOS模式，运行脚本。"..tmpEngine)
	G_DeviceName="COMMON"
	require("COMMONEngine")
	-- GetAPI_DeleteDir("/sdcard/AutoManager/")			
end

function IOSEngineRequire(tmpEngine)
	local dofileret=pcall(function()require(tmpEngine)end)
	pcall(UnlockScreen)
	if dofileret==false then
		DebugLogId("未找到"..G_DeviceName.."引擎,调用公共引擎...")
		G_DeviceName="COMMON"
		require(G_DeviceName.."Engine")
	end
end

function timeOutSet()
	if Time_Wait_2G ~= nil and Time_Wait_2G ~= 0 then
		if GetAPI_NetFlag() == "2G" then
			G_timeOut = Time_Wait_2G
		end
	elseif Time_Wait_3G ~= nil and Time_Wait_3G ~= 0 then
		if GetAPI_NetFlag() == "3G" then
			G_timeOut = Time_Wait_3G
		end
	elseif Time_Wait_4G ~= nil and Time_Wait_4G ~= 0 then
		if GetAPI_NetFlag() == "4G" then
			G_timeOut = Time_Wait_4G
		end
	elseif Time_Wait_Wifi ~= nil and Time_Wait_Wifi ~= 0 then
		if GetAPI_NetFlag() == "WIFI" or GetAPI_NetFlag() == "LAN" then
			G_timeOut = Time_Wait_Wifi
		end
	end
end

function AndroidEnd()
	local keyword
	local vocpath=string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg
	if G_RSflag then
		GetAPI_RecordScreenManager()		--结束录屏
		cpdir(string.format("%s%sscreen%s",string.sub(G_SysDbgPath,1,-2),G_Pflg,G_Pflg),string.format( "%sscreen%s",vocpath,G_Pflg))	
	end
	if G_Perfsflag then
		Method_PerformanceManager()			--结束java性能统计
		cpdir(string.format("%s%sperfs%s",string.sub(G_SysDbgPath,1,-2),G_Pflg,G_Pflg),string.format( "%sperfs%s",vocpath,G_Pflg))
	end	
	if G_PackageName or G_mgKVURl then
		if G_http_keyword then
			keyword = G_http_keyword
		else
			keyword = ''
		end
		--Method_get_http_info(keyword,G_PackageName,2)
		pcall(CopyFile,'/sdcard/packet_log.txt',string.sub(G_SysDbgPath,1,-2)..G_Pflg..'packet_log.txt')
	end
	
	if G_TraceRoute then
		pcall(CopyFile,'/sdcard/traceroute.txt',string.sub(G_SysDbgPath,1,-2)..G_Pflg..'traceroute.txt')
	end
	
	if G_fail_flag == true then
		_cfunc.Command('logcat -d -v time -f '..string.sub(G_SysDbgPath,1,-2)..G_Pflg..'logcat.txt')
		_cfunc.Command('dmesg > '..string.sub(G_SysDbgPath,1,-2)..G_Pflg..'kernel_log.txt')
		pcall(CopyFile,'/data/anr/traces.txt',string.sub(G_SysDbgPath,1,-2)..G_Pflg..'traces.txt')
	end

	if G_logcat_flag == true then
		_cfunc.Command('logcat -d -v time -f '..string.sub(G_SysDbgPath,1,-2)..G_Pflg..'logcat.txt')
	end
	
	--结束初始化(杀进程，回待机界面)
	DebugLogId("脚本结束初始化...")
	if G_packetflag==true then
		GetAPI_KillProcess("tcpdump")
		GetAPI_KillProcess("com.forys.network")		--抓包的app
		GetAPI_Switch_input()
	end
	GetAPI_KillProcess("logcat")
	_cfunc.Command("rm /data/data/com.autosense/files/vm2*.log")
	GetAPI_KillProcess("uiautomator")
	GetAPI_KillProcess_byPID("uiautomator")
	G_click_view = false
	G_check_view = false
end

function cpdir(spath, epath)	--带目录符 如 /sdcard/	
	local tmpfiles = getPathFiles(spath)		
	if #tmpfiles > 0 then 
		_cfunc.Command(string.format("mkdir -p %s", epath)) 
		for k, v in pairs(tmpfiles) do
			if string.find(v,"mp4") or string.find(v,"csv") then
				if string.find(v,"mp4") then 
					DebugLogId(string.format("录屏凭证: %s  >>>  %s", v, epath))
				else
					DebugLogId(string.format("性能凭证: %s  >>>  %s", v, epath))
				end
				_cfunc.Command(string.format("cp %s%s %s%s", spath, v, epath, v))
			end
		end
	end
end

function MgAppTest()	--适配mg多渠道app测试
	local mgPath = "/data/local/tmp/mgapp"
	local mgfile = "/data/local/tmp/mgapp.txt"	
	if tonumber(G_Turnnumber) == 1 then										--首次下发任务测试，保存目录文件清单
		pcall(GetAPI_Deletefile(mgfile))
		local cmd = string.format("ls %s/*.apk > %s",mgPath,mgfile)
		_cfunc.Command(cmd)
		DebugLogId(string.format('mgApp Testing file save :%s',mgfile))
	end
	
	if File_Exists(mgfile) then 
		local apkName = getFileFirst(mgfile)				--获取待测app名称
		G_TmpValue = apkName:match("^.*/(.*)")
		local pkgname = G_mgAppTest			--待测app卸载	--需脚本中填写 包名 
		local ret = CheckPKG( pkgname )		--检查是否已安装
		
		if ret == 0 then
			DebugLogId(string.format("app -> %s 已安装,执行卸载 ",pkgname))
			local ret ,status = AppUnInstall( pkgname )
			if ret ~=0 then 
				DebugLogId(string.format('App uninstall FAILED !!!!!!! %s',pkgname))
			end
		else
			DebugLogId(string.format("APP %s 未安装,无须执行卸载！",pkgname))
		end
		--app安装
		local sclock = GetAPI_OsClock()
		local pkgpath = string.format( "%s",apkName)
		-- local pkgpath = string.format( "%s/%s",mgPath,apkName)
		DebugLogId(string.format('App install start：%s ',pkgpath))
		local ret,log = AppInstall( pkgpath,pkgname )	--安装，直接安装
		if ret == 0 then
			local installtime = GetAPI_SubTime(GetAPI_OsClock(),sclock)	--安装时间
			DebugLogId(string.format('App install time :%s ret:%s.',installtime,ret))
		else
			DebugLogId("App install failed exit test !")
		end
	else
		DebugLogId(string.format('待测试app列表文件不存在，无法安装！！！！%s',mgfile))
	end	
end

function getFileFirst(file)		--读取文件第一行
	local t = {}
	for line in io.lines(file) do
		table.insert(t,line)
		DebugLogId("读取到的文件："..line)
	end
	local list = table.remove(t,1)	--当前行
	local debu = io.open(file,"w")
	debu:write(table.concat(t,"\n"))
	debu:close()
	return list
end

function Complete(file)
	if G_EngineMode~="MacIOS" then
		GetAPI_DeleteDir(file)			--/data/local/tmp/c/result/1_4_5  --删除本地结果目录
	end
	pcall(GetAPI_Deletefile,'/sdcard/watchlog.log')
	pcall(GetAPI_Deletefile,'/sdcard/watchlog.txt')
	pcall(GetAPI_Deletefile,'/sdcard/anrlog.txt')
	pcall(GetAPI_Deletefile,'/sdcard/crashlog.txt')
end

function scriptDeal()		
	local scriptcontent=GetAPI_ScriptContent()
	local ScriptList = splittable(scriptcontent,"\n")
	------------------------------------------------------------将脚本注释内容转为空值-----------------------------------
	for i=1,#ScriptList do
		local ret1
		local ret2,ret3,ret4
		local TempRet
		ScriptList[i]=string.gsub(ScriptList[i],'\n','')
		ScriptList[i]=string.gsub(ScriptList[i],'\r','')
		ScriptList[i]=string.gsub(ScriptList[i],'CycAction','ScriptAction')
		ret1,ret2=string.find(ScriptList[i],'%-%-')
		if ret2 then
			local ret5
			if string.sub(ScriptList[i],ret2+1,ret2+2)=="[[" then
				for j=i,#ScriptList do
					if j == i then
						_,ret4,_=string.find(ScriptList[j],"]]")
						if ret4 then
							ScriptList[j]=string.sub(ScriptList[j],1,ret1-1)..string.sub(ScriptList[j],ret4+1,-1)
							break
						else
							ScriptList[j]=string.sub(ScriptList[j],1,ret1-1)
						end
					else
						if findword(ScriptList[j],"]]") then
							_,ret3,_=string.find(ScriptList[j],"]]")
							ScriptList[j]=string.sub(ScriptList[j],ret3+1,-1)
							break
						else
							ScriptList[j]=''
						end
					end
				end
			end
			ret5,_,_=string.find(ScriptList[i],'%-%-')
			if ret5 then
				if string.sub(ScriptList[i],ret2+1,ret2+2)~="[[" then
					ScriptList[i]=string.sub(ScriptList[i],1,ret5-1)
				end
			end
		end
		TempRet=string.find(ScriptList[i],'}')
		if TempRet then
			ScriptList[i]=string.sub(ScriptList[i],1,TempRet)
		end
	end
	G_ScriptList=ScriptList
end

function Serv_ALL_OneAction(G_DeviceName,OneActionList,step)				--单流程模版主函数
	local Titletab,RelTitletab
	local NewOneTagList
	local NewOneActionList
	local DoAffActionList,AffActionList
	local TestTime,StaSetp
	local DlLcTb={}								--每一个动作的延迟时间记录
	local tempflag=false						--处理#号不能重复跑的问题
	local vm2time
	G_FuzzyFlag=false							--单步模糊比对全局变量标志复位
	G_area = 0									--置零全局变量
	G_CMVouc=""									--置空全局变量
	G_NETSENSE=""								--置空全局变量
	G_CMDNSVouc=""								--置空全局变量
	G_CMPNVouc=""								--置空全局变量
	--查找如果有“VIDEO”方法，提前start
	for i=1,#OneActionList do
		if string.match(OneActionList[i][1],"VIDEO],") then
			Vid_Test=true
			DebugLogId("开启视频监控模块")
			vm2time=os.time()
			GetAPI_VM2_Start()
			G_vm2time=os.time()
			break
		end
	end
	if os.date("%Y%m%d%H%M%S",vm2time)~=os.date("%Y%m%d%H%M%S",G_vm2time) then
		G_vm2timeflag = true
	end
	Titletab,RelTitletab,NewOneTagList,NewOneActionList,AffActionList,TestTime,StaSetp=PrevAction(OneActionList)	--从整个流程内读取测试指标、已订购或已退订凭证
	--指标表，带业务类型的指标表，逻辑表，脚本内容表，附属流程表，最小测试时间，多行时间记录(+x)
	local oneastart=GetAPI_OsClock()
	DebugLogId("##############################################################################################")
	local x=1
	--打印测试指标
	while x<=#Titletab do
		DebugLogId("测试指标"..x..":"..Titletab[x])
		x=x+1
	end
	DebugLogId("##############################################################################################")--开始流程s
	local ResultTable,picidx
	local retsetp=nil
	local LastResultTable
	local failpos,retlen
	local ret=0
	local Jumptimes=3
	local nowtimes=0
	local jumpstep,falseflag,allflag
	local jumpflag
	local templist={}
	local temptable={}
	local scriptaction={}
	local tempconcent
	local reta
	local retc=0
	if G_scriptflag then
		templist=ReBuiltList(G_ScriptList,'ScriptAction')
		for i=1,#templist do
			if templist[i]~='' then
				table.insert(scriptaction,templist[i])
			end
		end
		tempconcent=scriptaction[G_scriptactionID]
		temptable=splittable(tempconcent,",")
		for i=1,#temptable do
			temptable[i]=string.gsub(temptable[i],'{','')
			temptable[i]=string.gsub(temptable[i],'}','')
			temptable[i]=Strip(temptable[i])
		end
		if G_ExactionID then
			templist,reta=ReBuiltList(G_ScriptList,temptable[3])
		elseif G_ReActionID then
			templist,reta=ReBuiltList(G_ScriptList,temptable[4])
		else
			templist,reta=ReBuiltList(G_ScriptList,temptable[2])
		end
	elseif G_Oderflag==1 then
		templist,reta=ReBuiltList(G_ScriptList,'BusinessActionA')
	elseif G_Oderflag==2 then
		templist,reta=ReBuiltList(G_ScriptList,'BusinessActionB')
	else
		templist,reta=ReBuiltList(G_ScriptList,'BusinessActionA')
	end
	local i = 1
	while i<=#NewOneActionList do
		local scriptcontent=''
		local jumpflag
		local BackFlag
		local retb=0
		DebugLogId("##############################################################################################")
		-------------------------------------------------------------------------------------------------------------------------------
		DebugLogId("--------------------------------------处理流程开始--------------------------------------------")
		DebugLogId("处理流程idx:"..i.."	tag:"..NewOneTagList[i])
		BackFlag=NewOneActionList[i][3]
		for j=1,#NewOneActionList[i] do
			scriptcontent=scriptcontent..',['..NewOneActionList[i][j]..']'
		end
		scriptcontent='{"['..NewOneTagList[i]..']'..scriptcontent..'"}'
		failpos,retlen,NewOneActionList[i][3]=CheckPicLine(NewOneActionList[i][3]) 		--处理无图片流程，方便后面查找流程
		
		local commantitle = NewOneActionList[i] [4]
		if G_mgAppTest and G_TmpValue and string.find(commantitle, "%b<>") then			--咪咕多渠道app测试
			local AppTitle = string.gsub(G_TmpValue, ".apk", "")
			local endtitle = string.format("<%s%s>", commantitle:sub(2, - 2), AppTitle)
			NewOneActionList[i][4] = endtitle
		end
		
		if G_coordinate and string.find(NewOneActionList[i][1],'TRAVERSE') then
			DebugLogId("传入的表长度："..#G_coordinate)
			ret,ResultTable,picidx=cycRunOneCommand(i,G_coordinate,NewOneActionList[i],failpos,retlen,BackFlag,AffActionList,RelTitletab,scriptcontent,templist,retc,retb,reta)
		else
			ret,ResultTable,picidx=RunTestOneCommand(i,NewOneActionList[i],failpos,retlen,BackFlag,AffActionList,RelTitletab,scriptcontent,templist,retc,retb,reta)		
		end

		--------------------------------------------------循环测试模块----------------------------------------------------------
		if G_loop_flag == 1 and G_loop then
			G_i = i
		elseif G_loop_flag == 2 and G_loop then
			i = G_i
		end
		G_loop_flag = 0
		-------------------------------------------------------------------------------------------------------------------------------
		i=FindNextIdx(i,NewOneTagList,picidx)	--查找下一步流程

		--处理JUMP方法
		if NewOneActionList[i] and NewOneActionList[i][1]=="JUMPTO" then

			--跳转次数
			if tonumber(NewOneActionList[i][3]) then
				Jumptimes=tonumber(NewOneActionList[i][3])
			end

			--跳转流程
			if tonumber(NewOneActionList[i][2]) then
				jumpstep=tonumber(NewOneActionList[i][2])
			elseif string.sub(NewOneActionList[i][2],1,1)=="Y" then
				jumpstep=tonumber(string.sub(NewOneActionList[i][2],2,-1))
			elseif string.sub(NewOneActionList[i][2],1,1)=="N" then
				jumpstep=tonumber(string.sub(NewOneActionList[i][2],2,-1))
				falseflag=true
			elseif string.sub(NewOneActionList[i][2],1,1)=="A" then
				jumpstep=tonumber(string.sub(NewOneActionList[i][2],2,-1))
				allflag=true
			end

			--处理是否跳转逻辑
			if allflag then
				ret=0
				jumpflag=true
			elseif falseflag then
				if ret~=0 then
					ret=0
					jumpflag=true
				end
			else
				if ret==0 then
					jumpflag=true
				end
			end
			if jumpflag then
				if nowtimes<Jumptimes then
					i=jumpstep
					nowtimes=nowtimes+1
					DebugLogId("跳转至步骤:"..jumpstep)
				else
					i=FindNextIdx(i,NewOneTagList,0)
				end
			end
		end
		if not i or ret~=0 then
			break
		end
		-------------------------------------------------------------------------------------------------------------------------------
		DebugLogId("##############################################################################################")
	end
	local oneaend=GetAPI_OsClock()
	local needwait
	--Testtime等待时间
	if GetAPI_SubTime(oneaend,oneastart)<TestTime then
		needwait=TestTime-(oneaend-oneastart)
		DebugLogId("下限时间"..TestTime.."秒，测试用时"..(oneaend-oneastart).."秒，需再等待"..needwait.."秒")
		GetAPI_Sleep(needwait)
	end

	if tempflag then
		OneActionList[1][1]=tempflag
	end
	--视频测试停止方法
	if Vid_Test then
		GetAPI_VM2_Stop()
		Vid_Test = false
	end
	return ret,retsetp
end

function cycRunOneCommand(i,table,NewOneActionList,failpos,retlen,BackFlag,AffActionList,RelTitletab,scriptcontent,templist,retc,retb,reta)
	local ret=0
	local ResultTable = {}
	local picidx = 0
	G_cyc_traverse = true
	for xx = 1,#table do
		if type(table[xx][1]) == "table" then
			G_flag_traverse = false
			cycRunOneCommand(i,table[xx],NewOneActionList,failpos,retlen,BackFlag,AffActionList,RelTitletab,scriptcontent,templist,retc,retb,reta)
		else
			if not G_flag_traverse then
				G_CMVouc = ""
				NewOneActionList[2] = string.format(NewOneActionList[2],table[xx][1])
				NewOneActionList[4] = string.format(NewOneActionList[4],table[xx][2])
				ret,ResultTable,picidx=RunTestOneCommand(i,NewOneActionList,failpos,retlen,BackFlag,AffActionList,RelTitletab,scriptcontent,templist,retc,retb,reta)
				NewOneActionList[2] = string.gsub(NewOneActionList[2],table[xx][1],"%%s")
				NewOneActionList[4] = string.gsub(NewOneActionList[4],table[xx][2],"%%s")
				if G_flag_traverse then
					break
				end
			end
		end
	end
	G_cyc_traverse = false
	return ret,ResultTable,picidx
end

function RunTestOneCommand(i,NewOneActionList,failpos,retlen,BackFlag,AffActionList,RelTitletab,scriptcontent,templist,retc,retb,reta)
	G_position1 = nil
	G_position2 = nil
	G_ActionElement = nil
	ret,ResultTable,picidx=DealOneCommand(NewOneActionList)
	picidx = picidx or 0
	if failpos=="1" then                               --允许以所有图比对是否成功，进行流程分流运行
		if ret==0 and picidx~=0 then
			picidx=picidx+1
		else
			picidx=1
		end
		ret=0                                          --所有图比对分流，无论成功与否都继续流程
	elseif failpos=="2" then
		if ret~=0 then
			picidx=retlen
		end
		ret=0                                          --所有图比对分流，无论成功与否都继续流程
	end
	NewOneActionList[3]=BackFlag
	ResultTable[2]=ret
	picidx=tostring(picidx)
	DebugLogId("处理结果ret:"..ret.."	(0=成功,其他=失败)	picidx:"..picidx)
	DebugLogId("--------------------------------------处理流程结束--------------------------------------------")
	-------------------------------------------------------------------------------------------------------------------------------
	if ret==0 and G_failflag == false then
		--成功时附属流程处理
		DoAffActionList,AffActionList=GetAffAction(i,AffActionList)
		if #DoAffActionList~=0 then
			DebugLogId("--------------------------------------处理附属流程开始--------------------------------------------")
			x=1
			while x<=#DoAffActionList do
				DebugLogId("处理流程idx:"..i.."	affidx:"..x)
				ret=DealOneCommand(DoAffActionList[x])                 --附属流程只记录ret，将主流程ret替换
				DebugLogId("处理附属流程结果ret:"..ret)
				if ret~=0 then
					break
				end
				x=x+1
			end
			if ret~=0 then
				ret = 5
				DebugLogId("附属流程执行失败,改写测试结果ret:"..ret)
			else
				DebugLogId("附属流程执行成功,无需改写测试结果ret:"..ret)
			end
			DebugLogId("--------------------------------------处理附属流程结束--------------------------------------------")
			ResultTable[2]=ret
		end
	elseif ret~=0 and G_failflag == true then
		--失败时附属流程处理
		DoAffActionList,AffActionList=GetAffAction(i,AffActionList)
		if #DoAffActionList~=0 then
			DebugLogId("--------------------------------------处理附属流程开始--------------------------------------------")
			x=1
			while x<=#DoAffActionList do
				DebugLogId("处理流程idx:"..i.."	affidx:"..x)
				ret=DealOneCommand(DoAffActionList[x])                 --附属流程只记录ret，将主流程ret替换
				DebugLogId("处理附属流程结果ret:"..ret)
				if ret~=0 then
					break
				end
				x=x+1
			end
			if ret == 0 then
				ret = 5
				DebugLogId("附属流程执行成功,改写结果ret:"..ret)
			else
				DebugLogId("附属流程执行失败,不改写测试结果ret:"..ret)
			end
			DebugLogId("--------------------------------------处理附属流程结束--------------------------------------------")
			ResultTable[2]=ret
		end
	end
	-------------------------------------------------------------------------------------------------------------------------------
	DebugLogId("--------------------------------------处理结果开始--------------------------------------------")
	if G_INIFalse  then
		if ret==0 then
			DebugLogId("指标测试成功,不记录ini内容...")
		else
			if G_INIContList then
				local inicont
				for a=1,#G_INIContList do
					if not inicont then
						inicont=G_INIContList[a]
					else
						inicont=inicont.."	"..G_INIContList[a]
					end
				end
				local bakfile=io.open("/data/local/tmp/c/fail.txt","a")
				bakfile:write(inicont.."\n");
				bakfile:close();
				G_INIFalse=nil
				DebugLogId("ini内容记录...")
			else
				DebugLogId("ini记录内容未找到...")
			end
		end
	end
	--兼容测试结果处理
	if G_APPscript and G_EngineMode~="IOS" then
		DebugLogId(string.format("记录兼容测试步骤 %s 测试结果。",i))
		JRWriteResult(ResultTable,i,NewOneActionList)
		if ret==0 then
			retc=DeleteScript(scriptcontent,templist,i-retc,retc)
		else
			retb=FindScriptID(templist,i-retc)
			local errlog = string.format( "ScriptErrorRow(%s): near the %s line Error，Script Content：%s",retb+reta,retb+reta,scriptcontent )
			if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
			DebugLogId(errlog)
			if G_cyc_traverse == true then 
				ret = reset()
			end
		end
	else		--自动拨测结果处理
		RelTitletab=TableRemoveTitle(ResultTable[1],RelTitletab)	--测试完成，把指标从指标表移除
		if ret==0 then
			retc=DeleteScript(scriptcontent,templist,i-retc,retc)
			CMWriteResultLog(ResultTable,{},LastResultTable)		--写成功测试指标表
		else
			retb=FindScriptID(templist,i-retc)
			DebugLogId("ScriptErrorRow("..retb+reta.."):第"..retb+reta..'行脚本运行失败:'..scriptcontent,'运行失败')
			CMWriteResultLog(ResultTable,RelTitletab,LastResultTable)		--写失败测试指标表
			if G_cyc_traverse == true then
				ret = reset()
			end
		end
	end
	DebugLogId("--------------------------------------处理结果结束--------------------------------------------")
	LastResultTable = ResultTable
	G_position1 = nil
	G_position2 = nil 
	G_ActionElement = nil
	return ret,ResultTable,picidx
end

--ResultTable = {ResultTitle,ret,ResultContent,ActionStartTime,ActionEndTime}  ResultContent={"auto",DelayTime}
--写兼容测试结果	ResultTable = {ResultTitle,ret,ResultTb} ResultTb = {"mob",Actiontimes,stime,poson1,poson2,'touch'}
function JRWriteResult(ResultTable,i,NewOneActionList)		--形成文件，某步骤失败后不写剩余结果
	--- local oneName = ResultTable[1]	--单步名记录
	local ActionEvent = NewOneActionList[1]	
	if ResultTable[2] ==0 then
		resultRet = "ture"
	else
		resultRet = "false"
	end
	local oneResultTb = ResultTable[3]	--单步测试结果
	
	--oneResultTb[3] = (not string.find(oneResultTb[3],":")) and os.date("%Y-%m-%d %H:%M:%S",oneResultTb[3]) or oneResultTb[3]
	
	local ActionSTime = os.date("%Y-%m-%d %H:%M:%S",ResultTable[4])	--单步开始时间
	--ResultTable[5] = tonumber(ResultTable[5]) or os.time()
	local ActionETime = os.date("%Y-%m-%d %H:%M:%S",ResultTable[5])	--单步结束时间
	---local oneDelayTime = GetAPI_SubTime(ResultTable[5],ResultTable[4])	--单步耗时
	
	--截图
	local picname 
	local tmpstr = string.format("%simages/shot.jpg",G_SysDbgPath)
	if File_Exists(tmpstr) then 
		picname = i and string.format("%s_%s.jpg",os.date("%Y-%m-%d_%H%M%S",ResultTable[5]),i) or string.format("%s_.jpg",os.date("%Y-%m-%d_%H%M%S",ResultTable[5]))	--单步图片名
		local tmpstr = string.format("%simages/%s",G_SysDbgPath,picname)
		local tmpPng = string.format("mv %simages/shot.jpg %s",G_SysDbgPath,tmpstr)
		local aa = _cfunc.Command(tmpPng)
		--ResultTable[6] = picname
	end
	local ActionImg = picname or ""	----单步截图
	DebugLogId(ActionImg)
	
	--截图名称、开始时间、点击坐标值，序号、
	--local ActionElement = oneResultTb[1]=="mob" and "对象" or "坐标"
	local ActionElement = G_ActionElement or "坐标"
	local position1 = G_position1 or ""
	local position2 = G_position2 or ""
	JRResult(ActionEvent,ActionSTime,ActionElement,ActionImg,resultRet,position1,position2)	----记录单步测试结果
end

function JRResult( event, time, element, img, result, position1, position2 )	--处理单步骤兼容测试结果
	local actionResult = string.format('event="%s" time="%s" element="%s" img="%s" result="%s" value="" position1="%s" position2="%s"', event, time, element, img, result, position1, position2)
	actionResult = string.format("<action %s />",actionResult)
	table.insert(G_JRResultXml,#G_JRResultXml-1,actionResult)
	DebugLogId(actionResult)
end



function reset()
	G_flag_traverse = true
	local ret =-1
	for i =1,7 do
		r2 = _cfunc.FetchCharPoint()
		if G_r1 == r2 then
			ret =0
			break
		else
			DebugLogId("失败处理，点击B键")
			GetAPI_Key("B",3,1)
		end
	end
	return ret
end

function Serv_OrderAndCancel(G_DeviceName,OrderCommandList,CancleCommandList)				--订购退订模版主函数
	local ret
	local step=nil
	G_Oderflag=1
	ret,step=Serv_ALL_OneAction(G_DeviceName,OrderCommandList,step)
	DebugLogId("开通流程ret:"..ret)
	if ret==0 then
		OrderedFlag=true
	else
		OrderedFlag=false
	end
	if string.match(CancleCommandList[1][1],",%[#") then               --第2个流程必须从头开始的标志
		CancleCommandList[1][1]=string.gsub(CancleCommandList[1][1],",%[#",",%[")
		step=nil
	end
	if not step then
		DebugLogId("开始初始化测试条件")
		Device_SecondInit(G_DeviceName)
	end
	G_Oderflag=2
	ret=Serv_ALL_OneAction(G_DeviceName,CancleCommandList,step)
	DebugLogId("取消流程ret:"..ret)
	return ret
end

function Serv_Action(G_DeviceName,actionTab,stepflag)				--多流程，循环模版主函数
	local i=1
	local indexlist={}
	local ProcessTab=actionTab
	local FailFlag
	local ret
	local wrflag
	local breakflag
	local tmpvc
	local CycFlag
	local ii=1
	local URLTba
	local j=1
	local idx=1
	local errflag
	local rex
	--取出多流程模版的流程
	G_scriptflag=true
	while i<=#ProcessTab do
		table.insert(indexlist,string.upper(ProcessTab[i][1]))
		i=i+1
	end

	--循环模版获取任务
	if stepflag and stepflag=="Y" then
		DebugLogId("循环模版,获取任务中....")
		if string.upper(TestMode)=="MONITOR" then	--监控模式专用
			URLTba=GetTestContent()		--获取任务
		else
			if G_Turnnumber=="1" then
				URLTba=GetTestContent()		--获取任务
				WriteTestLog(URLTba)	--把任务写进测试任务文件中
			end
			URLTba=GetTestLog()		--读取测试任务文件,取第一条任务
		end
		if #URLTba==0 then
			DebugLogId("无测试任务...")
			GetAPI_Sleep(60)
			return 0
		end
		DebugLogId("任务获取成功....")
		CycFlag=#URLTba
		G_CycUrl=URLTba[ii]	
		DebugLogId(G_CycUrl)		--定义全局变量	打印测试任务的各URL
	end

	--多流程模版循环
	while j<=#indexlist do
		G_scriptactionID=j
		if stepflag and stepflag=="Y" then
			if j==1 then
				DebugLogId("循环测试第"..idx.."次...")
				idx=idx+1
			end
		end
		--流程失败写余下流程测试结果（第1次没有breakflag，所以直接执行else)
		if breakflag then
			DebugLogId("记录"..indexlist[j].."测试失败结果")
			tmpvc=WriteTitleTab(ProcessTab[j][2],tmpvc)
			j=j+1
			if j>#indexlist and CycFlag then
				--重置变量，给下一次循环测试使用
				if CycFlag>1 then
					j=1
					breakflag=nil
					ii=ii+1
					G_CycUrl=URLTba[ii]		--重置全局变量
					CycFlag=CycFlag-1
				end
			end
		else
			--正常流程
			DebugLogId("总流程:"..indexlist[j])
			if ProcessTab[j][2] and #ProcessTab[j][2]>0 then
				G_ExactionID=false
				G_ReActionID=false
				ret=Serv_ALL_OneAction(G_DeviceName,ProcessTab[j][2])
			else
				ret=-1
				errflag=true
				DebugLogId("Action名错误,或者Action为空！","脚本错误")
			end
			if ret~=0 then
				--复测流程
				if not ProcessTab[j][4] or errflag then	--没有异常流程直接退出
					DebugLogId("无复测前置流程，不进行复测")
					ret=-1
				else
					for k=1,2 do
						G_ReActionID=true
						G_ExactionID=false
						DebugLogId("复测前置运行")
						if G_FileName then
							DebugLogId("复测前置流程强制关闭性能测试方法!")
							GetAPI_perf_monitor(nil,nil,1)
							G_FileName=nil
						end
						ret=Serv_ALL_OneAction(G_DeviceName,ProcessTab[j][4])
						if ret==0 then
							DebugLogId("开始第"..k.."次复测")
							G_ReActionID=false
							G_ExactionID=false
							ret=Serv_ALL_OneAction(G_DeviceName,ProcessTab[j][2])
							DebugLogId("复测结果："..ret)
							if ret==0 then break end
						else
							DebugLogId("复测前置流程运行失败，不进行复测")
							ret=-1
							break
						end
					end
				end
				if ret~=0 then
					--异常流程
					if not ProcessTab[j][3] or ProcessTab[j][3]=="" or errflag then	--没有异常流程直接退出
						DebugLogId("无异常流程或异常流程名不正确...直接退出!")
						breakflag=true
					else
						FailFlag=true
						DebugLogId("异常流程"..indexlist[j])
						if ProcessTab[j][3] and #ProcessTab[j][3]>0 then
							for ii=1,3 do
								DebugLogId("异常流程"..indexlist[j]..'\t第'..ii..'次测试')
								if G_FileName then
									DebugLogId("异常流程强制关闭性能测试方法!")
									GetAPI_perf_monitor(nil,nil,1)
									G_FileName=nil
								end
								G_ReActionID=false
								G_ExactionID=true
								ret=Serv_ALL_OneAction(G_DeviceName,ProcessTab[j][3])	--走异常流程3遍
								if ret==0 then
									break
								else
									DebugLogId("异常流程"..indexlist[j])
								end
							end
						else
							ret=-1
							errflag=true
							DebugLogId("Action名错误,或者Action为空！","脚本错误")
						end
						if ret~=0 then
							breakflag=true
						else
							local k,t
							local tmpvc
							t=j
							k=FindNextIdxEX(j,indexlist,true)
							--写因为异常成功没有跑的流程的指标结果
							while 1 do
								t=FindNextIdxEX(t,indexlist,false)
								if t==k then
									break
								else
									tmpvc=WriteTitleTab(ProcessTab[t][2],tmpvc)
								end
							end
						end
					end
				end
				G_VideoUrl_cnt = G_VideoUrl_input_cnt
			end
			--变量重置，给下一次循环测试使用
			if breakflag then
				FailFlag=false
				j=j+1
				if j>#indexlist and CycFlag then
					if CycFlag>1 then
						j=1
						ii=ii+1
						G_CycUrl=URLTba[ii]		--重置全局变量
						CycFlag=CycFlag-1
						breakflag=nil
					end
				end
			else
				j= FindNextIdxEX(j,indexlist,FailFlag)
				if j>#indexlist and CycFlag then
					if CycFlag>1 then
						j=1
						ii=ii+1
						G_CycUrl=URLTba[ii]		--重置全局变量
						CycFlag=CycFlag-1
					end
				end
				FailFlag=false      --重置失败标志
			end
		end
	end
	return ret
end

function CompTag(lasttag,nexttag,picidx)				--比对目标流程函数
	local lastlen=string.len(lasttag)
	local nextlen=string.len(nexttag)
	local retval
	local idxtab={"1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}

	if lastlen<nextlen then

		if lasttag..tostring(idxtab[tonumber(picidx)])==nexttag then
			retval=true
		else
			retval=false
		end
	elseif lastlen>nextlen then

		if string.sub(lasttag,1,nextlen)==nexttag then
			retval=true
		else
			retval=false
		end
	else

		if lasttag==nexttag then
			retval=true
		else
			retval=false
		end
	end
	return retval
end

function CompTagEX(lasttag,nexttag)				--比对目标流程函数
	local lastlen=string.len(lasttag)
	local nextlen=string.len(nexttag)
	local temptag
	local retval
	local i=-2
	local j
	local ret
	ret=FindStrAndNum(lasttag,nexttag)
	if ret then
		retval=true
	else
		while i>=-lastlen do
			temptag=string.sub(lasttag,1,i)
			ret=FindStrAndNum(temptag,nexttag)
			if ret then
				retval=true
				break
			end
			i=i-1
		end
	end
	return retval
end

function FindNextIdx(lasti,NewOneTagList,picidx)				--查找下一个流程函数
	local lasttag
	lasttag=NewOneTagList[lasti]
	local nexttag
	lasti=lasti+1
	while lasti<=#NewOneTagList do
		nexttag=NewOneTagList[lasti]
		if CompTag(lasttag,nexttag,picidx) then
			return lasti
		end
		lasti=lasti+1
	end
	return
end

function FindNextIdxEX(lasti,NewOneTagList,FailFlag)				--查找下一个流程函数
	local lasttag
	lasttag=NewOneTagList[lasti]
	local nexttag
	if  not FailFlag then
		nexti=lasti+1
		while nexti<=#NewOneTagList do
			nexttag=NewOneTagList[nexti]
			if string.upper(nexttag)>=string.upper(lasttag) then
				return nexti
			end
			nexti=nexti+1
		end
	else
		nexti=lasti+1
		while nexti<=#NewOneTagList do
			nexttag=NewOneTagList[nexti]
			if CompTagEX(lasttag,nexttag) then
				break
			end
		nexti=nexti+1
		end
	end
	return nexti
end

function GetAffAction(nowi,AffActionList)				--获取流程函数
	local DoAffActionList={}
	local i=1
	while i<=#AffActionList do
		if nowi>AffActionList[i][1] then
			table.remove(AffActionList,i)
			i=i-1
		elseif nowi==AffActionList[i][1] then
			table.remove(AffActionList[i],1)
			table.insert(DoAffActionList,AffActionList[i])
			table.remove(AffActionList,i)
			i=i-1
		end
		i=i+1
	end
	return DoAffActionList,AffActionList
end

function CheckPicLine(InPics)				--检查图片，并分割函数
	local tmptb,tmpstr
	local failpos="0"
	local retInPics
	local retlen
	tmptb=splittable(InPics,",")
	tmpstr=tmptb[1]
	retlen=#splittable(tmpstr,"|")
	if string.sub(tmpstr,1,1)=="|" then
		failpos="1"
		retInPics=string.sub(tmpstr,2,-1)
	elseif string.sub(tmpstr,-1,-1)=="|" then
		failpos="2"
		retInPics=string.sub(tmpstr,1,-2)
	else
		retInPics=InPics
	end
	if failpos~="0" and tmptb[2] then
		retInPics=retInPics..","..tmptb[2]
	end
	return failpos,retlen,retInPics
end

function TableRemoveTitle(RemoveTitle,Titletab)				--从表中移除指定字符串
	local ArguMentList
	local temptab
	local i=1
	local removetab={}
	if string.find(RemoveTitle,"+") then
		RemoveTitle=string.gsub(RemoveTitle,"+%d","")
	end
	ArguMentList = splittable(RemoveTitle,"|")
	while  i<=#ArguMentList do
		for j=1,#Titletab do
			temptab=splittable(Titletab[j],"\t")
			if temptab[1]==ArguMentList[i] then
				if not InTable(j,removetab) then
					table.insert(removetab,j)
				end
				DebugLogId("指标:"..ArguMentList[i]..",测试完成从指标表中移除!")
			end
		end
		i=i+1
	end
	table.sort(removetab)
	i=#removetab
	while i>0 do
		table.remove(Titletab,removetab[i])
		i=i-1
	end
	return Titletab
end

function WriteTitleTab(ActionTab,tmpvc,ResultContent)				--写指标表函数
	local Titletab
	local i=1
	local ResultTable
	local cmflag="N4"
	if ActionTab and #ActionTab>0 then
		_,Titletab=PrevAction(ActionTab)
	else
		DebugLogId("Action名错误,或者Action为空！","脚本错误")
	end
	if ResultContent then
		cmflag=ResultContent
	end
	_,ResultTable=MulitiMethod("Device_Title",cmflag,"","",1)
	if Titletab and #Titletab>0 then
		CMWriteResultLog(ResultTable,Titletab)
	end
	return tmpvc
end

function PrevAction(OneActionList)				--处理脚本Action函数
	local i=1
	local j
	local servcommandtb
	local Titletab={}
	local RelTitletab={}
	local tmptitle,titletmptb
	local NewOneTagList={}
	local NewOneActionList={}
	local AffActionList={}                                                                                          --标志为"0"的附属流程，暂只支持一个附属流程
	local retitle,inretitle
	local TestTime=0
	local tempflag,RltTypeTab
	local k,StaSetp
	while i<=#OneActionList do
		retitle=""
		servcommandtb=splittable(string.sub(OneActionList[i][1],2,-2),"%],")			--分割脚本
		--servcommandtb = {1,"TOUCH","x,y","a.bmp","title",""}
		if servcommandtb[2]=="TestTime" and tonumber(servcommandtb[3]) then										--处理“TestTime”方法
			TestTime=tonumber(servcommandtb[3])
		elseif servcommandtb[1]=="0" then
			servcommandtb[1]=#NewOneTagList                                                               --附属流程位于主流程的位置索引
			table.insert(AffActionList,servcommandtb)                                                                --附属流程动作
		else
			table.insert(NewOneTagList,table.remove(servcommandtb,1))                                                --组成流程表
			table.insert(NewOneActionList,servcommandtb)                                      						 --组成动作表
			--NewOneActionList = {"TOUCH","x,y","a.bmp","title",""}
			if not servcommandtb[4] then
				DebugLogId("当前Action第"..i.."行错误!","脚本错误")
				DebugLogId("内容:"..OneActionList[i][1],"脚本错误")
				error("脚本错误!!!!!!!")
			end
			tmptitle=servcommandtb[4]
			_,_,k=string.find(tmptitle,"+(%d)")
			if k then
				tmptitle=string.gsub(tmptitle,"+%d","")
				StaSetp=i-k
				if StaSetp<0 then
					StaSetp=1
				end
			end
			titletmptb=splittable(tmptitle,"|")	--分割指标
			j=1
			while j<=#titletmptb do
				if string.sub(titletmptb[j],1,1)=="<" and string.sub(titletmptb[j],-1,-1)==">" then
					if G_CycUrl then																--后台下载的任务进行处理
						local a,b,c,cyctab
						a,b,c=string.find(titletmptb[j],"[$]([%d]+)[$]")
						if c then
							DebugLogId("尝试替换指标")
							cyctab=splittable(G_CycUrl,"\t")
							if cyctab[tonumber(c)] then
								titletmptb[j]=string.gsub(titletmptb[j],"[$][%d]+[$]",cyctab[tonumber(c)])
							end
						end
					elseif G_INIContList then
						local a,b,c
						a,b,c=string.find(titletmptb[j],"[$]([%d]+)[$]")
						if c then
							DebugLogId("尝试替换指标")
							if G_INIContList[tonumber(c)] then
								titletmptb[j]=string.gsub(titletmptb[j],"[$][%d]+[$]",G_INIContList[tonumber(c)])
							end
						end
					elseif G_mgAppTest then	--咪咕多渠道app测试
						local commantitle = titletmptb[j]
						if G_TmpValue and string.find(commantitle, "%b<>") then	
							local AppTitle = string.gsub(G_TmpValue, ".apk","")
							local endtitle = string.format("<%s%s>", commantitle:sub(2,-2), AppTitle)
							DebugLogId(string.format( "咪咕渠道app测试指标修改：%s >>>>>> %s",commantitle,endtitle ))
							titletmptb[j] = endtitle
						end	
					end
					--如果是指标就重新拼接起来
					if not InTable(titletmptb[j],Titletab) then
						retitle=retitle.."|"..titletmptb[j]
					end
					--把动作名跟指标名一起插入表中，方便后面出指标
					RltTypeTab="DNS,PING,VIDEO,VIDEO_SIG,DOWNH,DOWNBT,DOWNF,UPLOADF,INFOWLAN,NETSENSE"
					if string.find(RltTypeTab,servcommandtb[1]) then
						if servcommandtb[1]=="DNS" then
						tempflag=titletmptb[j].."\t".."dns"
						elseif servcommandtb[1]=="PING" then
							tempflag=titletmptb[j].."\t".."ping"
						elseif servcommandtb[1]=="VIDEO" or "VIDEO_SIG" then
							tempflag=titletmptb[j].."\t".."video"
						elseif servcommandtb[1]=="DOWNH" then
							tempflag=titletmptb[j].."\t".."http"
						elseif servcommandtb[1]=="DOWNBT" or servcommandtb[2]=="DOWNF" or servcommandtb[2]=="UPLOADF" then
							tempflag=titletmptb[j].."\t".."file"
						elseif servcommandtb[1]=="INFOWLAN" then
							tempflag=titletmptb[j].."\t".."wifi"
						elseif servcommandtb[1]=="NETSENSE" then
							tempflag=titletmptb[j].."\t".."netsense"
						end
					else
						tempflag=titletmptb[j].."\t".."auto"
					end

					if not InTable(tempflag,RelTitletab) then
						table.insert(RelTitletab,tempflag)
					end
				end
				j=j+1
			end
			--把指标插入指标表
			inretitle=string.sub(retitle,2,-1)
			if inretitle~="" and not InTable(inretitle,Titletab) then
				table.insert(Titletab,inretitle)
			end
		end
		i=i+1
	end
	return Titletab,RelTitletab,NewOneTagList,NewOneActionList,AffActionList,TestTime,StaSetp
end

function DealOneCommand(OneCommandList)				--处理一行动作函数	
	local hbtb,hbtimeout
	local ret,ResultTable,picidx
	local CompType,BuffType,parmTab,parmCommandImg,parmTimeOut,parmSPOrder,parmDestCode,parmRecvCont
	local nosmsflg=false
	local ResultFlag
	local tale,redu
	local inifile
	local FunName,paraflag1,paraflag
	local a,b,c,ii,cyctab
	local temp=''
	local keyword
	local title
	G_Imgtime=nil
	G_first_time = nil
	G_Automatical=false
	G_ScriptPic=''								--置空全局变量
	if G_Fuzzy_flag == true then
		G_img_flag = true
	else
		G_img_flag = false
	end
	
	if G_PackageName then			
		if G_http_keyword then
			keyword = G_http_keyword
		else
			keyword = ''
		end
		Method_get_http_info(keyword,G_PackageName,2)
	end
	title = OneCommandList[4] or ""
	
	if string.match(OneCommandList[1],"<") and string.match(OneCommandList[1],">") then
		OneCommandList[1]=string.gsub(OneCommandList[1],"<","")
		OneCommandList[1]=string.gsub(OneCommandList[1],">","")
		G_INIFalse=true                                                      --判断成功失败记录到日志中的标志
	end
	--检查脚本初始化标识
	if string.sub(OneCommandList[1],1,1) == "#" then
		DebugLogId("开始初始化测试条件")
		Device_SecondInit(G_DeviceName)
		OneCommandList[1]=string.gsub(OneCommandList[1],"#","")
	end
	--单步动作模糊比对标志检查
	if string.sub(OneCommandList[1],1,1) == "*" then
		OneCommandList[1]=string.gsub(OneCommandList[1],"*","")
		G_FuzzyFlag=true                                                      --单步模糊比对全局变量标志设置
		G_img_flag=false
	elseif string.sub(OneCommandList[1],1,1) ~= "*" and G_Fuzzy_flag == true then
		if string.sub(OneCommandList[1],1,1) ~= '&' then
			G_FuzzyFlag = true
		else
			OneCommandList[1]=string.gsub(OneCommandList[1],"&","")
			G_FuzzyFlag = false
		end
	end
	-- --单步动作自动修改脚本标识检查
-- 	if string.sub(OneCommandList[1],1,1) == "&" then
-- 		G_Automatical=true                                                      --单步动作自动修改脚本标识检查
-- 		OneCommandList[1]=string.gsub(OneCommandList[1],"&","")
-- 	end
	OneCommandList[1] = string.upper(OneCommandList[1])
	--单步动作模糊点击标志检查
	if string.sub(OneCommandList[1],1,1) == "F" then
		if not G_res_x or not G_res_y then
			DebugLogId("前一步模糊比对坐标为空值,无法操作"..OneCommandList[1]..",请检查脚本！")
			return
		else
			DebugLogId(string.format("起点坐标(%s,%s)",G_res_x,G_res_y))
			G_FTouchFlag=true                                                     --偏移坐标触屏点击全局变量标志设置
		end
		OneCommandList[1]=string.sub(OneCommandList[1],2,-1)
	end
	--处理后台下载任务统一替换需求
	if G_CycUrl then																--后台下载的任务进行处理
		for ii=1,#OneCommandList do
			a,b,c=string.find(OneCommandList[ii],"[$]([%d]+)[$]")
			if c then
				cyctab=splittable(G_CycUrl,"\t")
				if cyctab[tonumber(c)] then
					OneCommandList[ii]=string.gsub(OneCommandList[ii],"[$][%d]+[$]",cyctab[tonumber(c)])
				end
			end
		end
	elseif G_INIContList then
		for ii=1,#OneCommandList do
			a,b,c=string.find(OneCommandList[ii],"[$]([%d]+)[$]")
			if c then
				if G_INIContList[tonumber(c)] then
					OneCommandList[ii]=string.gsub(OneCommandList[ii],"[$][%d]+[$]",G_INIContList[tonumber(c)])
				end
			end
		end
	end
	if G_Replace_Turnnumber then
		for ii=1,#OneCommandList do
			a,b,c=string.find(OneCommandList[ii],"[%%](.-)[%%]")
			if c == 'round' then
				OneCommandList[ii]=string.gsub(OneCommandList[ii],"[%%].-[%%]",G_Turnnumber)
			end
		end
	end
		--具体方法
	if string.upper(OneCommandList[1])=="TOUCH" or string.upper(OneCommandList[1])=="CLICK" or OneCommandList[1]=="KEY" then        
		FunName="Device_Touchs"
	elseif OneCommandList[1]=="CTOUCH" then     --循环动作
		FunName="Device_CycTouchs"
		if OneCommandList[5] and tonumber(OneCommandList[5]) and OneCommandList[5]~="" then
			paraflag1=OneCommandList[5]
		end
	elseif OneCommandList[1]=="RATE" then
		paraflag1=OneCommandList[5]
		FunName="Device_Rate"
	elseif OneCommandList[1]=="URL_AUTO" then
		FunName="Device_WAP_VisitPageAUTO"
	elseif OneCommandList[1]=="APP_AUTO" then
		FunName="Device_OpenAPP_Auto"
	elseif OneCommandList[1]=="SLEEP" then                                               --延迟命令
		if tonumber(OneCommandList[2]) then
			GetAPI_Sleep(tonumber(OneCommandList[2]))
		end
		paraflag1=0
		FunName="Device_ExecuteTargetResult"
	elseif OneCommandList[1]=="INPUT" or OneCommandList[1]=="INPUTINI" then
		if OneCommandList[1]=="INPUTINI" then
			if G_EngineMode=="IOS" then
				inifile="/var/mobile/uusense/input.ini"
			else
				inifile="/data/local/tmp/c/engine/input.ini"
			end
			OneCommandList[2]=GetFileValue(inifile,OneCommandList[2])
		end
		if G_DeviceName == "COMMON" then
			FunName="Device_InputString"
		else
			FunName="Device_Input"
		end
	elseif OneCommandList[1]=="INPUTC" or OneCommandList[1]=="TEXT" then
		paraflag1=1
		if G_DeviceName == "COMMON" then
			FunName="Device_InputString"
		else
			FunName="Device_Input"
		end
	elseif OneCommandList[1]=="COPY" then
		FunName="Device_InputString"
	elseif OneCommandList[1]=="KILLPS" then
		FunName="Device_KillProcess"
	elseif OneCommandList[1]=="COMMAND" then
		FunName="Device_AdbCommand"
	elseif OneCommandList[1]=="DELETE" then
		FunName="Device_deleteString"
	elseif OneCommandList[1]=="TITLE" then
		FunName="Device_Title"
	elseif OneCommandList[1] == "PSTVPIC" or OneCommandList[1] == "PSTVBUF" or OneCommandList[1] == "RVRSPIC" or OneCommandList[1] == "RVRSBUF" then
		if OneCommandList[1] == "PSTVPIC" then
			paraflag1=0
			paraflag=0
		elseif OneCommandList[1] == "PSTVBUF" then
			paraflag1=0
			paraflag=1
		elseif OneCommandList[1] == "RVRSPIC" then
			paraflag1=-1
			paraflag=0
		elseif OneCommandList[1] == "RVRSBUF" then
			paraflag1=-1
			paraflag=1
		end
		FunName="Device_TouchsByBuffer"
	elseif OneCommandList[1]=="CLEARSMS_SIG" then
		FunName="Device_SMS_ClearSMSSIG"
	elseif OneCommandList[1]=="SENDSMS_SIG" then
		FunName="Device_SMS_SendSMSSIG"
	elseif OneCommandList[1]=="RECVSMS_SIG" then
		if string.match(OneCommandList[2],"NOSMS") then
			paraflag1=1
		else
			paraflag1=0
		end
		FunName="Device_SMS_RecvSMSSIG"
	elseif OneCommandList[1]=="REPLYSMS_SIG" then
		FunName="Device_SMS_ReplySMSSIG"
		paraflag1=1
	elseif OneCommandList[1]=="TRANSMITSMS_SIG" then
		FunName="Device_SMS_ReplySMSSIG"
		paraflag1=0
	elseif OneCommandList[1]=="VIDEO" then
		FunName="Device_VideoTest"
	elseif OneCommandList[1]=="VIDEO_SIG" then
		FunName="Device_VideoTest_sig"
	elseif OneCommandList[1]=="SFLOW" then
		paraflag1=0
		FunName="Device_FlowCalculation"
	elseif OneCommandList[1]=="EFLOW" then
		paraflag1=1
		FunName="Device_FlowCalculation"
	elseif string.upper(OneCommandList[1])=='LOOP_START' then
		FunName='Device_loop'
		paraflag1 = 1
	elseif string.upper(OneCommandList[1])=='BREAK' then
		FunName='Device_break'
	elseif string.upper(OneCommandList[1])=='LOOP_END' then
		FunName='Device_loop'
		paraflag1 = 2
	elseif OneCommandList[1]=="SPACKET" then
		FunName="Device_PACKET"
		paraflag1=0
	elseif OneCommandList[1]=="EPACKET" then
		FunName="Device_PACKET"
		paraflag1=1
	elseif OneCommandList[1]=="INTERACTA" then
		FunName="Device_Interactive"
		paraflag1=OneCommandList[5]
	elseif OneCommandList[1]=="INTERACTB" then
		FunName="Device_Interactive_recv"
		paraflag1=OneCommandList[5]
	elseif OneCommandList[1]=="MONITOR" then
		FunName="Device_MonitorTest"
	elseif OneCommandList[1]=="CLEARLOG" then
		FunName="Device_ClearLog"
	elseif OneCommandList[1]=="REMOVECACHE" then
		FunName="Device_RemoveCache"
	elseif OneCommandList[1]=="CHECKFILE" then
		FunName="Device_CheckFile"
	elseif OneCommandList[1]=="READINI" then
		FunName="Device_readini"
	elseif OneCommandList[1]=="VERSION" then
		FunName="Device_AdbVersion"
	elseif OneCommandList[1]=="GETINI" then
		FunName="Device_readinicyc"
	elseif OneCommandList[1]=="MODIFYFILE" then
		FunName="Device_modifyfile"
	elseif OneCommandList[1]=="CHECKNET" then
		FunName="Device_CheckNet"
	elseif OneCommandList[1]=="GETWLAN" then
		FunName="Device_GetWlanInfo"
	elseif OneCommandList[1]=="INFOWLAN" then
		FunName="Device_WlanInfo"
	elseif OneCommandList[1]=="CONNECTWLAN" then
		FunName="Device_ConnectWlan"
	elseif string.upper(OneCommandList[1])=="SVC_WIFI" then
		FunName="Device_svc_wifi"
	elseif OneCommandList[1]=="DOWNH" then
		FunName="Device_HttpDownload"
	elseif OneCommandList[1]=="PING" then
		FunName="Device_PingTest"
	elseif string.upper(OneCommandList[1])=="PING_LOSS" then
		FunName="Device_packet_loss"
	elseif OneCommandList[1]=="DNS" then
		FunName="Device_DnsTest"
	elseif OneCommandList[1]=="TCP" then
		FunName="Device_TCPTest"
	elseif OneCommandList[1]=="TRACEROUTE" then
		FunName="Device_TraceRoute"
	elseif string.upper(OneCommandList[1])=="RATE_URL" then
		FunName="Device_rate_url"
	elseif OneCommandList[1]=="ENGINEUD" then
		FunName="Device_UpdateEngine"
	elseif OneCommandList[1]=="UDFILE" then
		FunName="Device_UpdateFile"
	elseif OneCommandList[1]=="STARTENERGY" then
		FunName="Device_ENERGY"
		paraflag1=0
	elseif OneCommandList[1]=="STOPENERGY" then
		FunName="Device_ENERGY"
		paraflag1=1
	elseif OneCommandList[1]=="CAPTURE" then
		FunName="Device_CaptureImg"
	elseif OneCommandList[1]=="PICOCR" then
		FunName="Device_ImgOcr"
	elseif OneCommandList[1]=="DIFSUB" then
		FunName="Device_DiffOcr"
	elseif OneCommandList[1]=="VOUCHER" then
		FunName="Device_Voucher"
	elseif OneCommandList[1]=="VIDEO_PLAYBACK" then
		FunName="Device_video_playback"
		if OneCommandList[5] and OneCommandList[5]~="" then
			paraflag1=OneCommandList[5]
		end
	elseif OneCommandList[1]=="PAGETURN" then        --一般动作
		FunName="Device_pageturn"
		paraflag1=OneCommandList[5]
	elseif string.upper(OneCommandList[1])=='GET_VIEW_AREA' then
		FunName="Device_get_area"
	elseif string.upper(OneCommandList[1])=='GETTIME' then
		FunName="Device_GetTime"
	elseif string.upper(OneCommandList[1])=="GETVIEW" then
		FunName="Device_getview"
	elseif string.upper(OneCommandList[1])=='JUDGE' then
		FunName="Device_judge"
	elseif string.upper(OneCommandList[1])=='PERFS' then	--java性能统计
		FunName="Method_PerformanceManager"
	else					--	长期未用方法，暂时移除
		if OneCommandList[1]=="CLEARSMS" then
			FunName="Device_SMS_ClearSMS"
		elseif OneCommandList[1]=="SENDIMG" then
			FunName="Device_SMS_SendIMG"
		elseif OneCommandList[1]=="SENDSMS" then
			FunName="Device_SMS_SendSMS"
		elseif OneCommandList[1]=="RECVSMS" then
			if string.match(OneCommandList[2],"NOSMS") then
				paraflag=1
			else
				paraflag=0
			end
			FunName="Device_SMS_RecvSMS"
		elseif OneCommandList[1]=="REPLYSMS" then
			FunName="Device_SMS_ReplySMS"
		elseif OneCommandList[1]=="RECVSMS_SIG_UP" then
			paraflag1=2
			FunName="Device_SMS_RecvSMSSIG"
		elseif OneCommandList[1]=="DBMOVE" then
			OneCommandList[2]=OneCommandList[2].."-DBM"
			FunName="Device_Touchs"
		elseif OneCommandList[1]=="DBTOUCH" then
			OneCommandList[2]=OneCommandList[2].."-DBT"
			FunName="Device_Touchs"
		elseif OneCommandList[1]=="DOWNBT" then
			FunName="Device_BTDownTest"
		elseif OneCommandList[1]=="DOWNF" then
			paraflag1=0
			FunName="Device_FtpDownAndUp"
		elseif OneCommandList[1]=="UPLOADF" then
			paraflag1=1
			FunName="Device_FtpDownAndUp"
		elseif OneCommandList[1]=="SCROLL" then
			FunName="Device_Drag"
			paraflag1=1
		elseif string.upper(OneCommandList[1])=="SWIPE" then
			FunName="Device_Drag"
			paraflag1=2
		elseif string.upper(OneCommandList[1])=="DRAG" then
			FunName="Device_Drag"
			paraflag1=3
		elseif string.upper(OneCommandList[1])=="LONGCLICK" then
			FunName="Device_Drag"
			paraflag1=4
		elseif OneCommandList[1]=="ENERGYRANDOM" then
			FunName="Device_energyrandom"
		-- elseif string.upper(oneCommandList[1])=='GETHTTPINFO_START' then
		--     FunName='Device_getHTTPInfo'
		--     paraflag1 = 1
		-- elseif string.upper(oneCommandList[1])=='GETHTTPINFO_END' then
		--     FunName='Device_getHTTPInfo'
		--     paraflag1 = 2
		-- elseif OneCommandList[1]=="PERFORMANCE" then
		--     FunName="Device_Performance"
		elseif OneCommandList[1]=="VIDEO_URL" then
			FunName="Device_Urlvisit_video"
		elseif OneCommandList[1]=="INPUT_VIDEOURL" then
			FunName="Device_Input_videourl"
			if string.find(OneCommandList[4],"%%s") and G_videoUrl_band_table[G_VideoUrl_input_cnt]~= nil then
				OneCommandList[4] = string.format(OneCommandList[4],G_videoUrl_band_table[G_VideoUrl_input_cnt])
			end
		elseif OneCommandList[1]=="VIDEO_PLAY" then
			FunName="Device_videoPlay"
			if string.find(OneCommandList[4],"%%s") and G_videoUrl_band_table[G_VideoUrl_cnt]~= nil then
				OneCommandList[4] = string.format(OneCommandList[4],G_videoUrl_band_table[G_VideoUrl_cnt])
			end
		elseif OneCommandList[1]=="NETSENSE" then
			FunName="Device_Netsense"
		elseif OneCommandList[1]=="PHONECALL" then
			FunName="Device_PhoneCall"
		elseif OneCommandList[1]=="SIGNAL" then
			FunName="Device_sig"
		elseif OneCommandList[1]=="SNR" then
			FunName="Device_snr"
		elseif OneCommandList[1]=="SWITCHCARD" then
			FunName="Device_SwitchCard"
		elseif string.upper(OneCommandList[1])=='TOUCH_SLICE' then
			FunName="Device_slice_pic"
			paraflag1=OneCommandList[5]
		elseif OneCommandList[1]=="TRAVERSE" then
			FunName="Device_traverse"
			paraflag1=OneCommandList[5]
		elseif OneCommandList[1]=="URL" then
			FunName="Device_WAP_VisitPage"
		elseif string.upper(OneCommandList[1])=='WRITE' then
			FunName='Device_write'
		elseif OneCommandList[1]=="INTERACT_SIM_B" then
			FunName="Device_Interactive_sim_recv"
			paraflag1=OneCommandList[5]
		elseif OneCommandList[1]=='MGHTTP' then		--url正则赋值
			FunName='Device_MGhttp'
		elseif OneCommandList[1]=='SHOWV' then	--生成指定结果
			FunName='Device_ShowHow'
		else
			paraflag1=-2
			FunName="Device_ExecuteTargetResult"
			DebugLogId("没有'"..OneCommandList[1].."'这个动作名!","脚本错误")
		end
		if FunName == "Device_ExecuteTargetResult" then
			local status,info = pcall(function() if G_EngineMode=="Android" then dofile("/data/local/tmp/c/engine/ExpandEngine.lua") else require("ExpandEngine") end end)
			if not status then 
				DebugLogId("未找到ExpandEngine.lua引擎,请检查。")
			end
		end
	end
	local startclock = GetAPI_OsClock();
	if check_view(OneCommandList[2]) == true then
		G_click_view = true
	end
	if check_view(OneCommandList[3]) == true then
		G_check_view = true
	end
	
	ret,ResultTable,picidx=MulitiMethod(FunName,OneCommandList[2],OneCommandList[3],OneCommandList[4],paraflag1,paraflag,#OneCommandList>4 and OneCommandList[#OneCommandList] or "nil")	--方法模版函数
	JRoneCapture()
	G_FTouchFlag = false		--偏移坐标触屏点击全局变量标志复位
	G_FuzzyFlag = false			--单步模糊比对全局变量标志复位
	G_area = 0					--置零全局变量
	G_Automatical = false		--单步脚本自动修改全局变量标志复位
	G_click_view = false		--单步控件点击全局变量标志复位
	G_check_view = false		--单步控件比对全局变量标志复位
	local endclock = GetAPI_OsClock();
	local DelayTime = GetAPI_SubTime(endclock,startclock);
	if G_timeflag then
		if string.find(OneCommandList[4],"%+[%d]") and G_Imgtime then
			DelayTime=DelayTime-G_Imgtime
		end
	else
		if G_Imgtime then
			DelayTime=DelayTime-G_Imgtime
		end
	end
	table.insert(G_TestTimeTab,DelayTime)
	if G_PackageName then			
		if G_http_keyword then
			keyword = G_http_keyword
		else
			keyword = ''
		end
		Method_get_http_info(keyword,G_PackageName,3,title)
	end
	return ret,ResultTable,picidx
end


function MulitiMethod(FunName,strCommand,strCommandImg,ResultTitle,paraflag1,paraflag,lastPram)				--方法模版函数
	local actionTable = {
		"Device_VideoTest","UPLOADF","DOWNF",
		"Device_VideoTest_sig","Device_Rate",
		"Device_traverse","Device_Urlvisit_video",
		"Device_videoPlay","Device_pageturn"
	}
	local ret,ResultContent,picidx,res
	local ActionStartTime = os.time()
	res,ret,ResultContent,picidx=pcall(_G[FunName],strCommand,strCommandImg,paraflag1,paraflag)		--PCall方法名
	if G_EngineMode=="Android" and ResultTitle:find("%b<>") and lastPram:find("%b<>") then --指标且控件且特殊标记
		DebugLogId(string.format( "处理migu指标凭证: ResultTitle: %s 获取自定义凭证信息: %s",ResultTitle,lastPram))
		local ret,view_str
		lastPram = lastPram:match("%b<>"):gsub(" ", ""):sub(2, - 2)
		DebugLogId(string.format("lastPram:%s",lastPram))
		if lastPram:find("%=") then	--控件捕获
			local ImgTmpTb=splittable(lastPram,",")
			local timeOut = ImgTmpTb[2] and tonumber(ImgTmpTb[2]) or G_timeOut
			local userPram = not ImgTmpTb[2] and ImgTmpTb[1]
			ret,view_str = Dump_get_view(userPram,timeOut)
			view_str = _cfunc.Utf8ToGbk(view_str)
			DebugLogId(string.format( "获取自定义凭证: ret = %s\ttext = %s",ret,view_str))
			ResultContent.provText = ret~=-1 and view_str or ""
		elseif lastPram:find("%d+_%d+_%d+_%d+") then	--ocr识别
			local tmptb = {}
			local OCR_txt,pic_name
			for k in lastPram:gmatch('%d+') do
				table.insert(tmptb, k)
			end
			local tmpx1, tmpx2, tmpy1, tmpy2 = tmptb[1], tmptb[2], tmptb[3], tmptb[4]
			local pic_path = string.format("%s%s", string.sub(G_SysDbgPath, 1, - 2), G_Pflg)
			if G_EngineMode=="Android" then
				pic_name = string.format("%s_%s_%s_%s_CapturePic.bmp", tmpx1, tmpx2, tmpy1, tmpy2)
				GetAPI_CaptureRectangle(pic_path .. pic_name)
			else
				pic_name = string.format("%s_%s_%s_%s_CapturePic.png", tmpx1, tmpx2, tmpy1, tmpy2)
				GetAPI_CaptureRectangle(pic_path .. pic_name, tmpx1, tmpx2, tmpy1, tmpy2) 
			end
			local all_pic = pic_path .. pic_name	--图片名称(全路径)，截图保存位置
			DebugLogId('图片全路径:'..all_pic)
			OCR_txt = mgpic_Ocrhttps(all_pic)	--ocr识别
			if OCR_txt==0 then DebugLogId(string.format("PIC OCR FALSE !!!\t%s", all_pic)) ret = -1 end
			OCR_txt = _cfunc.Utf8ToGbk(OCR_txt)
			DebugLogId('OCR_txt:'..OCR_txt)
			DebugLogId(string.format( "OCR获取自定义凭证: ret = %s\ttext = %s",tostring(ret),OCR_txt))
			ResultContent.provText = ret~=-1 and OCR_txt or ""
		elseif lastPram == 'A' and G_mgScriptFlg.A then
			ResultContent.provText = G_mgScriptFlg.A[3] or ""
		elseif lastPram == 'B' and G_mgScriptFlg.B then
			ResultContent.provText = G_mgScriptFlg.B[3] or ""
		elseif lastPram == 'C' and G_mgScriptFlg.C then
			ResultContent.provText = G_mgScriptFlg.C[3] or ""
		elseif lastPram == 'D' and G_mgScriptFlg.D then
			ResultContent.provText = G_mgScriptFlg.D[3] or ""
		elseif G_mgScriptFlg[lastPram] then 	--定义的变量值
			DebugLogId(string.format( "记录: G_mgScriptFlg[lastPram] = %s",G_mgScriptFlg[lastPram]))
			ResultContent.provText = G_mgScriptFlg[lastPram] or ""
			DebugLogId(string.format( "记录: ResultContent.provText = %s",ResultContent.provText))
		else
			ResultContent.provText = tostring(lastPram) or ""	--不知道什么凭证
			DebugLogId(string.format( "记录: ResultContent.provText = %s",ResultContent.provText))
		end
		if ResultContent.provText and ResultContent.provText ~= "" then
			ResultContent.provText = string.gsub(ResultContent.provText,'\n','/n')
			ResultContent.provText = string.gsub(ResultContent.provText,'\t','/t')
			ResultContent.provText = string.gsub(ResultContent.provText,'|','$$$')
			DebugLogId("自定义凭证特殊字符转化完成")
		end
		DebugLogId(string.format( "记录凭证结果: text = %s",ResultContent.provText))
		-- ResultTitle=string.format("<%s%s>", ResultTitle:match("%b<>"):sub(2, - 2), lastPram:match("%b<>"):gsub(" ", ""):sub(2, - 2))
	end
	local ActionEndTime = os.time()
	if G_Imgtime then
		if G_first_time then
			G_Imgtime = G_Imgtime + G_first_time
		end
	elseif G_first_time then
		G_Imgtime = G_first_time
	end
	if G_Imgtime and ResultContent[2] and tonumber(ResultContent[2]) and not InTable(FunName,actionTable) then
		G_Imgtime = DecPoint(G_Imgtime,3)
		ResultContent[2] = DecPoint(ResultContent[2],3)
		DebugLogId("总时间:"..ResultContent[2])
		ResultContent[2]=tonumber(ResultContent[2])-G_Imgtime
		DebugLogId("减去最后一次比图时间:"..G_Imgtime)
		ResultContent[2] = string.format("%.3f",ResultContent[2])
		DebugLogId("矫正后时间为:"..ResultContent[2])
	end
	local ResultTable ={}
	table.insert(ResultTable,ResultTitle)		--<11111>	
	table.insert(ResultTable,ret)				--0或1
	table.insert(ResultTable,ResultContent)		--auto,动作时间
	table.insert(ResultTable,ActionStartTime)
	table.insert(ResultTable,ActionEndTime)
	table.insert(ResultTable,paraflag1)
	return ret,ResultTable,picidx
	
end
------------------------脚本运行函数结束----------------------------------------------------------------------------
------------------------基础方法函数开始----------------------------------------------------------------------------
function Print(str)
	if G_EngineMode=="Android" then
		_cfunc.Print(str)
	elseif G_EngineMode=="IOS" then
		print(str)
	end
end

function TableInStr_sigle(tab,s)
	for i = 1,#tab do
		if string.find(s,tab[i])then
			return i
		end
	end
	return -1
end

function check_view(str)
	local tab_view_attribute = {"index='","text='","class='","package='","desc='","content%-desc='","id='","resource%-id='","editable='","checkable='","checked='","clickable='","enabled='","focusable='","focused='","scrollable='","long%-clickable='","password='","selected='","xpath='","bounds='"}
	local index = TableInStr_sigle(tab_view_attribute,str)
	if index > 0 then
		if string.find(str,tab_view_attribute[index].."(.-)'") then
			return true
		end
	end
	return false
end

function CopyFile(sourcefile,destfile)				--复制源文件到目标文件
	local inp = assert(io.open(sourcefile,"rb"))
	local out = assert(io.open(destfile, "wb"))
	local data = inp:read("*all")
	local ret
	-- DebugLogId("开始复制文件")
	local value=GetAPI_Command(string.format( "ls %s -l", sourcefile))
	DebugLogId("ls -l:\n"..value)
	DebugLogId(string.format( "copy >>> %s", destfile))

	if not out then
		DebugLogId("文件拷贝:"..destfile.."打开失败!")
	end
	out:write(data)
	out:close()
	inp:close()
	local deinp = assert(io.open(destfile,"rb"))
	local dedata = deinp:read("*all")
	deinp:close()
	if dedata==data then
		ret=0
	else
		ret=-1
	end
	-- DebugLogId("复制文件结束")
	return ret
end

function randomnum(num1,num2)
	math.randomseed(tonumber(tostring(os.time()):reverse():sub(1,6)))
	return tostring(math.random(num1,num2))
end

function traceroute(url)
	local ip
	local value
	local pingz
	local fp
	_,_,ip=string.find(url,"([%d]*.[%d]*.[%d]*.[%d]*)[//]")
	if ip then
		local cmd = string.format("su -c 'busybox traceroute -I %s'",ip)
		DebugLogId(cmd)
		value=GetAPI_Command(cmd..'\nexit')
		DebugLogId("value="..value)
		pingz=os.date("%Y%m%d%H%M%S")..".txt"
		fp=assert(io.open(G_SysDbgPath..G_Pflg..pingz,"wb"))
		fp:write(value)
		fp:close()
		table.insert(G_CaptureTab,pingz)
		DebugLogId("记录value至文件："..pingz)
	end
end

function FindMax(a,b,typeflg)
	if tonumber(a) and tonumber(b) then
		a=tonumber(a)
		b=tonumber(b)
		if typeflg then
			if a>b then
				return b
			else
				return a
			end
		else
			if a>b then
				return a
			else
				return b
			end
		end
	else
		return b
	end
end

function Strip(str)
	local i
	if str then
		while 1 do
			if string.sub(str,1,1)==" " or string.sub(str,1,1)=="\r" or string.sub(str,1,1)=="\n" then
				str=string.sub(str,2,-1)
			else
				break
			end
		end
		while 1 do
			if string.sub(str,-1,-1)==" " or string.sub(str,-1,-1)=="\r" or string.sub(str,-1,-1)=="\n" then
				str=string.sub(str,1,-2)
			else
				break
			end
		end
	end
	return str
end

function comTabtoStr(str,tab)
	if str == nil or tab == {} or tab == nil then
		return false
	else
		for i,j in pairs(tab) do
			if individualContrast(str,j) then
				return true
			end
		end
		return false
	end
end

function ReadFileToTable(filename)				--读取指定文件内容到表里
	local datalists = {}
	local sourcetxt = assert(io.open(filename, "rb"))
	for line in sourcetxt:lines() do
		table.insert(datalists,line)
	end
	sourcetxt:close()
	return datalists
end

function GetFileValue(filename,ininame)				--获取指定参数对应内容
	local is,ie,tmptb,tptb
	local retval
	local i=1
	retval=ininame
	tmptb=ReadFileToTable(filename)
	while i<=#tmptb do
		is,ie=string.find(tmptb[i],ininame)
		if is then
			tptb=splittable(tmptb[i],"=")
			if #tptb == 2 then
				retval=string.gsub(tptb[2],"\r","")
				retval=string.gsub(retval,"\n","")
				retval=string.gsub(retval," ","")
			end
			break
		end
		i=i+1
	end
	return retval
end

function FindStrAndNum(lasttag,nexttag)				--查找字符串和数字函数
	local ret
	local n="123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local vol
	if string.sub(lasttag,1,-2) == string.sub(nexttag,1,-2) then
		vol= string.find(n,string.sub(lasttag,-1))
		n=string.sub(n,vol+1,-1)
		if string.find(n,string.sub(nexttag,-1)) then
		ret=true
		end
	end
	return ret
end

function CheckActionResults(Imgs,TimeOut,conflag)
	local ret
	local picidx
	if G_check_view == true then
		ret,picidx = Method_clickEx(Imgs,TimeOut,conflag)
	else
		ret,picidx = ImgsWaitEx(Imgs,TimeOut,conflag)
	end
	return ret,picidx
end

function ImgsWaitEx(Imgs,TimeOut,conflag)				--图片比对主函数
	local imgstart,imgend
	local picidx=0
	local compimgres
	local onecetime=0.4
	DebugLogId("开始比图:"..Imgs)
	G_ScriptPic=Imgs
	imgstart=GetAPI_OsClock()
	i = 1
	while 1 do
		ret,picidx = WaitEx(Imgs,onecetime,conflag)
		imgend=GetAPI_OsClock()
		if GetAPI_SubTime(imgend,imgstart)>TimeOut then
			compimgres=string.format("%s秒图片比对超时!",TimeOut)
			ret=1
			break
		elseif ret==0 then
			compimgres=string.format("第%s张图比对成功!",picidx)
			break
		elseif ret==-2 and not Imgs:find("|") then
			compimgres=string.format("脚本图片不存在，比对退出!",Imgs)
			ret=1
			break
		end
		i=i+1
	end
	DebugLogId("比图结果:"..compimgres)
	return ret,picidx
end

function Dump_wait_get_view(strCommandImg,TimeOut)
	local start_clock=GetAPI_OsClock()
	DebugLogId('开始查找组件：'..strCommandImg)
	local value_table = GetAPI_att_cbt_get_view(strCommandImg)
	while 1 do
		local end_clock=GetAPI_OsClock()
		if GetAPI_SubTime(end_clock,start_clock)>TimeOut then
			DebugLogId(string.format("%s秒组件信息查找超时!",TimeOut))
			return -1
		end
		local single_start_clock = GetAPI_OsClock()

		local ret,view = GetAPI_Dump(value_table)
		local single_end_clock = GetAPI_OsClock()
		G_Imgtime = GetAPI_SubTime(single_end_clock,single_start_clock)
		if ret ~= -1 then
			DebugLogId("viewret:0".."		"..G_Imgtime)
			DebugLogId(string.format("第%s个组件信息比对成功!",ret))
			local tmp_sci =splittable(strCommandImg,'|')
			local view_user = tmp_sci[ret]
			view_user = string.gsub(view_user,"='",'=".*')
			if string.sub(view_user,-1,-1) == "'" then
				view_user = string.sub(view_user,1,-2)
			end
			DebugLogId("被查询信息："..view_user..'(%w+)')
			_,_,G_Captcha = string.find(view,view_user..'(%w+)')
			DebugLogId("验证码为："..G_Captcha)
			return ret
		else
			DebugLogId("viewret:-1".."		"..G_Imgtime)
		end
	end
end

function Dump_get_view(strCommandImg,TimeOut)
	local start_clock=GetAPI_OsClock()
	DebugLogId('获取自定义凭证，开始查找组件：'..strCommandImg)
	local value_table = GetAPI_att_cbt(strCommandImg)
	while 1 do
		local end_clock=GetAPI_OsClock()
		if GetAPI_SubTime(end_clock,start_clock)>TimeOut then
			DebugLogId(string.format("%s秒组件信息查找超时!",TimeOut))
			return -1,""
		end
		local ret,view = GetAPI_Dump(value_table)
		if ret ~= -1 then
			DebugLogId(string.format("viewret:0\t找到组件信息: %s",_cfunc.Utf8ToGbk(view)))
			-- local tmp_sci =splittable(strCommandImg,'|')
			-- local view_user = tmp_sci[ret]
			local view_str = view_str~="" and view:match('text%=(%b"")'):sub(2, - 2) or view:match('content%-desc%=(%b"")'):sub(2, - 2)
			DebugLogId(string.format( "获取到文本信息: %s",_cfunc.Utf8ToGbk(view_str) ))
			return ret,view_str
		end
	end
end

function Dump_wait(strCommandImg,TimeOut,conflag)
	local start_clock=GetAPI_OsClock()
	local flag = false
	DebugLogId('开始查找组件：'..strCommandImg)
	if string.find(strCommandImg,"NOMATCH_") or (conflag and conflag ==true) then
		strCommandImg = string.gsub(strCommandImg,'NOMATCH_',"")
		flag = true
	end
	local value_table = GetAPI_att_cbt(strCommandImg)				--{{'index="1"','resource-id="com.autosense:id/top2"'},{'index="1"','text="autosense"'}}
	while 1 do
		local end_clock=GetAPI_OsClock()
		if GetAPI_SubTime(end_clock,start_clock)>TimeOut then
			DebugLogId(string.format("%s秒组件信息查找超时!",TimeOut))
			return -1,''
		end
		local single_start_clock = GetAPI_OsClock()
		local ret,view = GetAPI_Dump(value_table,flag)
		local single_end_clock = GetAPI_OsClock()
		G_Imgtime = GetAPI_SubTime(single_end_clock,single_start_clock)
		if ret ~= -1 then
			DebugLogId("viewret:0".."		"..G_Imgtime)
			DebugLogId(string.format("第%s个组件信息比对成功!",ret))
			if G_FuzzyFlag then
				G_res_x,G_res_y = dump_Coordinate(view)
			end
			return ret,view
		else
			DebugLogId("viewret:-1".."		"..G_Imgtime)
			if G_UIAutoClick then 
				UI_AutoClickOpen(pkgname,7)
			end
		end
	end
end

function judge_wait_ex(strCommand,subtime)
	local tmp_table = splittable(string.gsub(strCommand,' ',''),"|")
	local ret,index = -1,0
	for i,j in pairs(tmp_table) do
		if j == '' then
			ret = true
		else
			ret = judge_wait_expr(j,subtime)
		end
		if ret == true then
			DebugLogId("成功"..j)
			return 0,i
		end
	end
	DebugLogId("失败")
	return -1,0
end

function judge_wait_expr(Expression,subtime)
	local tmp_tab = {}
	local flag = 0
	if string.find(Expression,"<") and not string.find(Expression,"=") then
		tmp_tab = splittable(Expression,"<")
		flag = 1
	elseif string.find(Expression,"<=") then
		tmp_tab = splittable(Expression,"<=")
		flag = 2
	elseif string.find(Expression,"==") and not string.find(Expression,">") and not string.find(Expression,"<") then
		tmp_tab = splittable(Expression,"==")
		flag = 3
	elseif string.find(Expression,"=") and not string.find(Expression,">") and not string.find(Expression,"<") and not string.find(Expression,"==") then
		tmp_tab = splittable(Expression,"=")
		flag = 3
	elseif string.find(Expression,">") and not string.find(Expression,"=") then
		tmp_tab = splittable(Expression,">")
		flag = 4
	elseif string.find(Expression,">=") then
		tmp_tab = splittable(Expression,">=")
		flag = 5
	else
		return false
	end
		
	if #tmp_tab == 1 then
		return true
	end
	for i = 2,#tmp_tab do
		if string.upper(tmp_tab[i]) == 'AREA' then
			tmp_tab[i] = G_area
		end
		if string.upper(tmp_tab[i-1]) == 'AREA' then
			tmp_tab[i-1] = G_area
		end
		if string.upper(tmp_tab[i]) == 'CNT' then
			tmp_tab[i] = G_cnt
		end
		if string.upper(tmp_tab[i-1]) == 'CNT' then
			tmp_tab[i-1] = G_cnt
		end
		if string.upper(tmp_tab[i]) == 'TIME' then
			tmp_tab[i] = subtime
		end
		if string.upper(tmp_tab[i-1]) == 'TIME' then
			tmp_tab[i-1] = subtime
		end
		if flag == 1 then
			if tonumber(tmp_tab[i-1]) >= tonumber(tmp_tab[i]) then
				return false
			end
		elseif flag == 2 then
			if tonumber(tmp_tab[i-1]) > tonumber(tmp_tab[i]) then
				return false
			end
		elseif flag == 3 then
			if tonumber(tmp_tab[i-1]) ~= tonumber(tmp_tab[i]) then
				return false
			end
		elseif flag == 4 then
			if tonumber(tmp_tab[i-1]) <= tonumber(tmp_tab[i]) then
				return false
			end
		elseif flag == 5 then
			if tonumber(tmp_tab[i-1]) < tonumber(tmp_tab[i]) then
				return false
			end
		end
	end
	return true
end

function WaitEx(Imgs,onecetime,conflag)         --单次比图函数
	local i,ScriptPath,imgFile
	local ImgsTab,idx,CompImage
	local tempimg
	local resx,resy
	local flag = 0
	local imgret,imgidx = 1,0
	if string.find(Imgs,'%-') then
		flag=1
		Imgs=string.gsub(Imgs,'%-','|')
	end
	ImgsTab=splittable(Imgs,"|")
	local ss=GetAPI_OsClock()
	if G_FuzzyFlag then
		ScriptPath=G_SysScpPath
		tempimg = ScriptPath..G_Pflg.."temp.bmp"
		-- GetAPI_CaptureImg(tempimg,11)
		for idx,CompImage in pairs(ImgsTab) do
			if string.match(string.lower(CompImage),"engine") then
				ScriptPath=G_SysEngPath
			else
				ScriptPath=G_SysScpPath
			end
			imgFile = ScriptPath..G_Pflg..CompImage    ---脚本路径加资源名
			if G_img_flag == true then
				imgret,resx,resy= GetAPI_MatchScreenEX(imgFile,tempimg,ScriptPath,CompImage,conflag)
			else
				imgret,resx,resy= GetAPI_MatchScreenEX(imgFile,tempimg,ScriptPath,'',conflag)
			end
			if imgret == 0 then
				MathCoordinates(CompImage,resx,resy)
			end
			if imgret ==0 then
				imgidx=idx
				break
			end
		end
	else
		if #ImgsTab>70 then
			imgFile=""
			local count = 0
			local tmp_tab_pic = {}
			for idx,CompImage in pairs(ImgsTab) do
				if string.match(string.lower(CompImage),"engine") then
					ScriptPath=G_SysEngPath
				else
					ScriptPath=G_SysScpPath
				end
				if count == 70 then
					table.insert(tmp_tab_pic,imgFile)
					count = 0
					imgFile = ""
				else
					imgFile=imgFile..ScriptPath..G_Pflg..CompImage.."|"    --脚本路径加资源名
					count = count + 1
				end
			end
			if imgFile ~= '' then
				table.insert(tmp_tab_pic,imgFile)
			end
			for i,j in pairs(tmp_tab_pic) do
				DebugLogId('第'..i..'次比图，参数：'..j)
				imgret = GetAPI_MatchScreen2(j,flag,conflag)
				if imgret == -1 then
					break
				else
					imgidx=imgret
					if flag == 1 then
						imgidx = 0
					end
					imgret=0
				end
				GetAPI_Sleep(0.01)
			end
			DebugLogId('比图结束')
		elseif #ImgsTab>3 or flag == 1 then
			imgFile=""
			local count = 1
			local tmp_tab_pic = {}
			for idx,CompImage in pairs(ImgsTab) do
				if string.match(string.lower(CompImage),"engine") then
					ScriptPath=G_SysEngPath
				else
					ScriptPath=G_SysScpPath
				end
				imgFile=imgFile..ScriptPath..G_Pflg..CompImage.."|"    --脚本路径加资源名
			end
			imgret= GetAPI_MatchScreen2(imgFile,flag,conflag)
			if imgret>0 then
				imgidx=imgret
				if flag == 1 then
					imgidx = 0
				end
				imgret=0
			end
		else
			for idx,CompImage in pairs(ImgsTab) do
				if string.match(string.lower(CompImage),"engine") then
					ScriptPath=G_SysEngPath
				else
					ScriptPath=G_SysScpPath
				end
				imgFile = ScriptPath..G_Pflg..CompImage    --脚本路径加资源名
				if File_Exists(imgFile) then 
					imgret= GetAPI_MatchScreen(imgFile,conflag)
				else
					DebugLogId("图片不存在: "..imgFile)
					imgret = -2
				end
				if flag ==0 then
					if imgret ==0 then
						imgidx=idx
						break
					end
				else
					if imgret ~=0 then
						imgidx=-1
						break
					end
				end
			end
		end
	end
	local se=GetAPI_OsClock()
	local sdelay=GetAPI_SubTime(se,ss)
	-- onecetime = G_OnecTime or onecetime or 0.01
	-- GetAPI_Sleep(onecetime)
	-- DebugLogId(string.format("onecetime: %s s", onecetime))
	return imgret,imgidx
end


function MathCoordinates(ImgName,resx,resy)				--处理偏移量由左上角坐标变成图片中心点坐标函数
	local x1,y1,x2,y2,retx,rety
	local ImgsTab
	ImgsTab=splittable(ImgName,"_")
	x1=tonumber(ImgsTab[1])
	y1=tonumber(ImgsTab[2])
	x2=tonumber(ImgsTab[3])
	y2=tonumber(ImgsTab[4])
	retx=math.modf((x1+x2)/2)
	rety=math.modf((y1+y2)/2)
	G_res_x=resx-x1+retx			--设置偏移中心坐标为全局变量
	G_res_y=resy-y1+rety
end

function FindCaptcha(RecvContent,Compkeyword)				--查找关键字后的数字或英文字母
	local number="0123456789"
	local i=1
	local Contentlist
	local Content
	local word
	local tempflag
	local ret,w
	local b
	RecvContent=RecvContent.."完"
	if G_FuzzyFlag then
		_,b=string.find(RecvContent,Compkeyword)
		if b then
			Content=string.sub(RecvContent,b+1,-1)
			for w in string.gmatch(Content,"%w+") do
				ret=w
				if ret then
					G_Captcha=ret  --定义全局变量Captcha的值
					DebugLogId("验证码为:"..G_Captcha)
					break
				end
			end
		end
	end
end

function MakePattern(a,c)				--生成指定格式字符串函数，换行而已
	local strings
	if a then
		strings=a..c.."\r\n"
	else
		strings=c.."\r\n"
	end
	return strings
end

function CalVar(resultvalue)				--处理ping测试结果函数
	local resultTab,tempTab
	local testtime
	local TTL
	local ICMP
	local ret
	tempTab=splittable(string.sub(resultvalue,1,-2),",")
	testtime=tempTab[2]
	if not testtime then
		ret=1
		testtime="nil"
		TTL="nil"
		ICMP="nil"
	elseif tonumber(testtime)>0 then
		ret=0
		TTL=tempTab[3]
		ICMP=tempTab[4]
	else
		ret=1
		TTL=tempTab[3]
		ICMP=tempTab[4]
	end
	return ret,testtime,TTL,ICMP
end

function CheckPingRes(pingret,times)				--检查PING测试是否成功函数
	local ret,temptab,tmtab
	local average=0
	if not pingret then
		return 0
	elseif pingret=="" then
		return -1
	elseif #pingret>0 then
		pingret=string.sub(pingret,1,-2)
		temptab=splittable(pingret,"|")
		for i=1,times do
			tmtab=splittable(temptab[i],",")
			if tonumber(tmtab[2])>0 then
				average=average+tonumber(tmtab[2])
			else
				return -1
			end
		end
		if average>1500 then
			return -2
		else
			return 0
		end
	else
		return -3
	end
end

function DecPoint(value,flag)				--取两位小数函数
	value=tonumber(value)
	if not flag or flag == 2 then
		if math.floor(value*100) ~= value*100 then
			value=(value-value%0.01)
		end
	elseif flag == 3 then
		if math.floor(value*1000) ~= value*1000 then
			value=(value-value%0.001)
		end
	end
	return value
end

function WriteTestLog(urltab)				--写测试内容到指定文件中
	local wlog
	DebugLogId("写测试内容...")
	for i=1,#urltab do
		if not wlog then
			wlog=urltab[i]
		else
			wlog=wlog.."\n"..urltab[i]
		end
	end
	local filename
	filename=GetAPI_TestInfoPath()
	local file = io.open(filename,"w")
	file:write(wlog)
	file:close()
end

function GetTestLog()				--获取第一条测试内容
	local URLTba={}
	local filename
	filename=GetAPI_TestInfoPath()
	local cc=io.open(filename,"rb")
	local Content = cc:read("*all")
	cc:close()
	if string.sub(Content,-1,-1)~="\n" then
		Content=Content.."\n"
	end
	local retval,a,b
	a,b=string.find(Content,"\n")
	if a then
		retval=string.sub(Content,1,a-1)
		Content=string.sub(Content,b+1,-1)..retval.."\n"
		local file = io.open(filename,"w")
		file:write(Content)
		file:close()
	end
	if retval then
		table.insert(URLTba,retval)
	end
	return URLTba
end

function Redispose(UrlLine)				--处理网址函数
	local i
	if string.find(UrlLine,"://") then
		i=string.find(UrlLine,"//")
		UrlLine=string.sub(UrlLine,i+2,-1)
	end
	if string.sub(UrlLine,-1)=="/" then
		UrlLine=string.sub(UrlLine,1,-2)
	end
	return UrlLine
end

function WaitExeption(VocImg,Imgs)				--处理异常比对图片格式函数
	local ScriptPath
	local ImgsTab,ImgNameTb
	local idx,CompImage,ldx,ImgName
	local imgFile
	local imgret,retimg
	ScriptPath=G_SysEngPath                  --必须为引擎图片
	ImgsTab=splittable(Imgs,"|")
	for idx,CompImage in pairs(ImgsTab) do
		if string.match(CompImage,"-") then
			ImgNameTb=splittable(CompImage,"-")
		else
			ImgNameTb={CompImage}
		end
		for ldx,ImgName in pairs(ImgNameTb) do
			imgFile = ScriptPath..G_Pflg..ImgName    --脚本路径加资源名
			imgret= GetAPI_MatchFileImg(VocImg,imgFile)   --待方法给出
			if imgret~=0 then
				break
			else
				retimg=ImgName
			end
		end
		if imgret ==0 then
			break
		end
	end
	return imgret,retimg
end

function GetRedirectUrl(HUrl,Content)				--重定向网页连接获取函数
	local nurl,ret
	local url,i,j
	local tempcontent
	if string.find(Content,"[ ]*400[ ]*[Bb][Aa][Dd][ ]*[Rr][Ee][Qq][Uu][Ee][Ss][Tt]") then
		ret=-1
	else
		if string.find(Content,"<[ ]*[Oo][Nn][Ee][Vv][Ee][Nn][Tt][ ]*[Tt][Yy][Pp][Ee][ ]*=[ ]*['\"][Oo][Nn][Ee][Nn][Tt][Ee][Rr][Ff][Oo][Rr][Ww][Aa][Rr][Dd]['\"][ ]*>") then
			i,j,url=string.find(Content,"[Hh][Rr][Ee][Ff][ ]*=[ ]*['\"]([^'\"]*)['\"][ ]*>")
			if url then
				ret=0
				nurl=url
			else
				ret=1
			end
		elseif string.find(Content,"<[ ]*[Mm][Ee][Tt][Aa][ ]*[Hh][Tt][Tt][Pp]%-[Ee][Qq][Uu][Ii][Vv][ ]*=[ ]*['\"][Rr][Ee][Ff][Rr][Ee][Ss][Hh]['\"]") then
			i,j,url=string.find(Content,"[Cc][Oo][Nn][Tt][Ee][Nn][Tt][ ]*=[ ]*['\"][ ]*[^;]*;[ ]*[Uu][Rr][Ll][ ]*=[ ]*([^'\"]*)['\"][ ]*")
			if url then
				ret=0
				nurl=url
			else
				ret=1
			end
		elseif string.find(Content,"[Oo][Nn][Tt][Ii][Mm][Ee][Rr][ ]*=[ ]*['\"]([^'\"]*)['\"][ ]*") then
			i,j=string.find(Content,"[Oo][Nn][Tt][Ii][Mm][Ee][Rr]")
			_,_,url=string.find(Content,"[Oo][Nn][Tt][Ii][Mm][Ee][Rr][ ]*=[ ]*['\"]([^'\"]*)['\"][ ]*")
			local tval
			tempcontent=string.sub(Content,j,j+500)
			tval=string.match(tempcontent,"[Tt][Ii][Mm][Ee][Rr].*[Vv][Aa][Ll][Uu][Ee][ ]*[=][ ]*['\"]([^'\"]*)['\"]")
			if tval and tonumber(tval) and tonumber(tval)>65 then
				ret=1
			else
				ret=0
				nurl=url
			end
		elseif string.find(Content,"[Oo][Nn][Ee][Vv][Ee][Nn][Tt]") then
			i=string.find(Content,"[Oo][Nn][Ee][Vv][Ee][Nn][Tt]")
			_,j=string.find(Content,"[/][ ]*[Oo][Nn][Ee][Vv][Ee][Nn][Tt][ ]*[>]")
			tempcontent=string.sub(Content,i,j)
			url=GetTagUrl(tempcontent,"go")
			if url~="" then
				ret=0
				nurl=url
			else
				ret=1
			end
		else
			ret=1
		end
		if ret==0 then
			nurl=RemakeUrl(HUrl,nurl)
		end
	end
	return ret,nurl
end

function RemakeUrl(VisitUrl,url)				--重组网址函数
	local i,j
	local nurl
	VisitUrl=string.gsub(VisitUrl," ","")
	url=string.gsub(url," ","")
	if string.find(url,"://") then
		i=string.find(url,"//")
		if i then
			nurl=string.sub(url,i+2,-1)
		else
			VisitUrl=Redispose(VisitUrl)
			nurl=VisitUrl
		end
	else
		if string.sub(url,1,1)=="%." then
			url=string.sub(url,2,1)
		elseif string.sub(url,1,1)~="/" then
			url="/"..url
		end
		VisitUrl=Redispose(VisitUrl)
		nurl=VisitUrl..url
	end
	return nurl
end

function GetUrlFromAHref(VisitUrl,content)				--取网页内容中的A连接函数
    local table1={}
	local table2={}
	local table3={"javascript:;","","/","#url","\r","\n","\n\r","\r\n","url","#;","#"}
	while 1 do
		local i,j,url
		local ret
		i,j,url = string.find(content,"<[ ]*[Aa][ ]*[Hh][Rr][Ee][Ff][ ]*=[ ]*['\"]([^'\"]*)['\"][^>]*>")
		if not url then
			break
		end
		url=string.gsub(url," ","")
		ret=InTable(url,table3)
		if not ret then
			if not InTable(url,table1) then
				table.insert(table1,url)
			end
		end
		content=string.sub(content,j+1)
	end
	local i=1
	while i<=#table1   do
		local nurl
		nurl=RemakeUrl(VisitUrl,table1[i])
		if not InTable(nurl,uutab) then
			table.insert(uutab,nurl)
			table.insert(table2,nurl)
		end
		i=i+1
	end
	return table2
end

function GetTagUrl(XMLContent,Utype)
	local LinkContent,linkurl
	local lstart,lend,estart,eend,SearchData
	local fname,fvalue,connect
	LinkContent=XMLContent
	connect="?"
	linkurl=GetFirstTagValue(LinkContent,"href")
	if Utype=="go" then
		while 1 do
			lstart,lend=string.find(LinkContent,"<postfield")
			if lstart~=nil then
				LinkContent=right(LinkContent,len(LinkContent)-lstart+1)
				estart,eend=string.find(LinkContent,">")
				SearchData=string.sub(LinkContent,1,eend)
				fname=GetFirstTagValue(SearchData,"name")
				fvalue=GetFirstTagValue(SearchData,"value")
				linkurl=linkurl..connect..fname.."="..fvalue
				LinkContent=right(LinkContent,len(LinkContent)-eend)
			else
				break
			end
			connect="&"
		end
	end
	return linkurl
end

function GetFirstTagValue(XMLContent,tag)
	local tstart,tend,xindex,tagvalue,hrefflag
	tagvalue=""
	hrefflag=0
	XMLContent=string.gsub(XMLContent,"'",'"')
	XMLContent=string.gsub(XMLContent,"&amp;","&")
	tstart,tend = string.find(XMLContent,tag..'="')
	if tag=="href" and not tstart then                                 --处理href=后不跟"的情况
		tstart,tend = string.find(XMLContent,tag..'=')
		hrefflag=1
	end
	if tend~=nil then
		xindex=tend+1
		while 1 do
			if hrefflag==0 and string.sub(XMLContent,xindex,xindex)=='"' then
				tagvalue=string.sub(XMLContent,tend+1,xindex-1)
				break
			elseif hrefflag==1 and string.sub(XMLContent,xindex,xindex)=='>' then
				tagvalue=string.sub(XMLContent,tend+1,xindex-1)
				break
			end
			xindex=xindex+1
		end
	end
	return tagvalue
end

function WriteCMValueTable()				--写测试结果并打包
	local cmtVenderCode,cmtDevType,cmtDevCode,cmtIP,cmtMobileNum,cmtTotalNum
	local idx,srvtkey,srvtkeytb,srvtkeytbn,cmtServiceTb
	local i=1
	local filename,valuefile,ValueStr,tmpstr,tmptb,voctb
	local vocpath
	local zipname,tmpfile,zuhestr
	local ArguMentList
	local zipret,wcmret
	local logzip
	local numbertab
	local CMPos,zupnstr

	--获取写结果需要的参数
	zuhestr=""
	vocpath=string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg
	ValueStr=""
	tmpstr=""
	srvtkeytb={}
	srvtkeytbn={}
	cmtServiceTb={}
	voctb={}
	cmtVenderCode=GetAPI_VenderCode()
	cmtDevType=GetAPI_DevType()
	cmtDevCode=GetAPI_DevCode()
	cmtIP=GetAPI_DeviceIP()
	CMPos=GetAPI_GPSInfo()
	cmtMobileNum=GetAPI_MobileNum()
	cmtTotalNum=#G_CMValueTable
	ArguMentList = splittable(G_SysParms,"|")

	--把指标表以字符串的形式连接
	DebugLogId("**********************************************************************************************")
	DebugLogId("**********************************************************************************************")
	for i=1,#G_CMValueTable do
	--while i<=cmtTotalNum do
		tmptb=splittable(string.sub(G_CMValueTable[i],1,-2),"\t")
		DebugLogId("记录测试指标:"..tmptb[3])
		if tmptb[14]~="" then
			table.insert(voctb,tmptb[14])
			tmptb[14]=string.sub(tmptb[14],1,-5)..".zip"
		end
		if #tmptb==15 then
			G_CMValueTable[i]=tmptb[1].."\t"..tmptb[2].."\t"..tmptb[3].."\t"..tmptb[4].."\t"..tmptb[5].."\t"..tmptb[6].."\t"..tmptb[7].."\t"..tmptb[8].."\t"..tmptb[9].."\t"..tmptb[10].."\t"..tmptb[11].."\t"..tmptb[12].."\t"..tmptb[13].."\t"..tmptb[14].."\t"..tmptb[15].."\n"
		else
			G_CMValueTable[i]=tmptb[1].."\t"..tmptb[2].."\t"..tmptb[3].."\t"..tmptb[4].."\t"..tmptb[5].."\t"..tmptb[6].."\t"..tmptb[7].."\t"..tmptb[8].."\t"..tmptb[9].."\t"..tmptb[10].."\t"..tmptb[11].."\t"..tmptb[12].."\t"..tmptb[13].."\t"..tmptb[14].."\n"
		end
		tmpstr=tmpstr..G_CMValueTable[i]
		--i=i+1
	end
	DebugLogId("**********************************************************************************************")
	DebugLogId("**********************************************************************************************")

	if not Businesses then
		DebugLogId("业务名称未配置...","脚本错误")
	end
	if not Clientversion then Clientversion="UNKNOWN" end
	--wlan测试上传参数修改
	if cmtVenderCode=="hzys-wlan" then
		numbertab=splittable(cmtMobileNum,"-")
		cmtMobileNum=numbertab[1]
		CMPos=CMPos..","..numbertab[2]
	end

	--组合头信息和指标，写入结果文件
	ValueStr=cmtVenderCode.."\t"..cmtDevType.."\t"..cmtDevCode.."\t"..CMPos.."\t"..cmtIP.."\t"..cmtMobileNum.."\t"..ArguMentList[2].."\t"..tostring(Businesses).."\t"..Clientversion.."\t"
	ValueStr=string.sub(ValueStr,1,-2).."\n"..tmpstr
	filename=string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_OpSrver..".txt"
	if cmtTotalNum>0 and Businesses then
		DebugLogId(string.format("结果目录：%s\n%s",filename,ValueStr))
		valuefile = io.open(filename, "a")
		valuefile:write(ValueStr)
		valuefile:close()
		DebugLogId("测试结果记入成功...")
	end
	local rlvoctab={}
	--复制result.txt，压缩凭证文件到上传目录
	if string.upper(TestMode)~="MONITOR" then
		if cmtTotalNum>0 and Businesses then
			if G_EngineMode ~= "MacIOS" then
				DebugLogId("复制result.txt")
				CopyFile(filename,string.sub(G_SysRstPath,1,-2)..G_Pflg..G_OpSrver..".txt")		--复制result.txt
			end
			if G_EngineMode=="Android" then
				pcall(function() CopyFile("/mnt/sdcard/Dresden.log",vocpath.."Dresden.txt") GetAPI_Deletefile("/mnt/sdcard/Dresden.log") end)
				pcall(function() CopyFile("/mnt/sdcard/PELog.txt",vocpath.."PELog.txt") GetAPI_Deletefile("/mnt/sdcard/PELog.txt") end)
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..'logcat.txt',vocpath.."logcat.txt")
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..'kernel_log.txt',vocpath..'kernel_log.txt')
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..'traces.txt',vocpath..'traces.txt')
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump_err_log.txt",vocpath..'dump_err_log.txt')
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump_content_log.txt",vocpath..'dump_content_log.txt')
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg.."packet_log.txt",vocpath..'packet_log.txt')
				pcall(CopyFile,"/sdcard/packet_log.txt",vocpath..'packet_log.txt')	--复制抓包文件
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg.."traceroute.txt",vocpath..'traceroute.txt')
				filename=GetAPI_signalPath().."signal.txt"
				pcall(CopyFile,filename,vocpath.."signal.txt")
			end
			DebugLogId("压缩测试结果...")
			if #voctb>0 and cmtTotalNum>0 then
				i=1
				--压缩凭证文件
				while i<=#voctb do
					if not InTable(voctb[i],rlvoctab) then
						table.insert(rlvoctab,voctb[i])
						zipname=vocpath..string.sub(voctb[i],1,-5)..".zip"
						tmpfile=string.sub(G_SysDbgPath,1,-2)..G_Pflg..voctb[i]
--~ 						zipret=GetAPI_Zip(zipname,zuhestr)
						if G_EngineMode=="Android" then
							zuhestr=tmpfile.."|"
							for j=1,#G_scriptimg do
								if G_scriptimg[j][2]==string.sub(voctb[i],1,-5) then
									DebugLogId("压缩脚本图片与区域截图："..G_scriptimg[j][1]..'|'.."到："..vocpath..G_scriptimg[j][2]..'.zip')
									if string.sub(G_scriptimg[j][1],-1,-1)=="|" then
										zipret=GetAPI_Zip(vocpath..G_scriptimg[j][2]..'.zip',G_scriptimg[j][1])
									else
										zipret=GetAPI_Zip(vocpath..G_scriptimg[j][2]..'.zip',G_scriptimg[j][1].."|")
									end
								end
							end
							DebugLogId("截图凭证："..zuhestr.."到："..zipname)
							zipret=GetAPI_Zip(zipname,zuhestr)
						elseif G_EngineMode=="IOS" then
							zuhestr=string.sub(tmpfile,1,-5).."|"
							DebugLogId("截图凭证："..zuhestr.."到："..zipname)
							zipret=GetAPI_Zip(zipname,zuhestr)
						elseif G_EngineMode=="MacIOS" then
							zuhestr=string.sub(tmpfile,1,-5).."|"
							DebugLogId("截图凭证："..zuhestr.."到："..zipname:sub(2))
							zipret=GetAPI_Zip(zipname,zuhestr)
						end
					end
					i=i+1
				end
				--压缩日志文件
				DebugLogId("压缩其他凭证文件")
				logzip="Voucher.zip"
				zipname=vocpath..logzip
				zuhestr=""
				if G_CaptureTab and #G_CaptureTab>0 then
					for jj=1,#G_CaptureTab do
						zuhestr=zuhestr..string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_CaptureTab[jj].."|"
					end
					GetAPI_Zip(zipname,zuhestr)
				end
			else
				--压缩日志文件
				DebugLogId("压缩其他凭证文件")
				logzip="Voucher.zip"
				zipname=vocpath..logzip
				zuhestr=""
				if G_CaptureTab and #G_CaptureTab>0 then
					for jj=1,#G_CaptureTab do
						zuhestr=zuhestr..string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_CaptureTab[jj].."|"
					end
					GetAPI_Zip(zipname,zuhestr)
				end

			end
			if #G_PNVouc~=0 then
				for i=1,#G_PNVouc do
					-- zupnstr=zuhestr..string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_PNVouc[i].."|"
					GetAPI_Zip(vocpath..G_PNVouc[i]..'.zip',string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_PNVouc[i]..".txt|")
				end
			end
			if #G_DNSVouc~=0 then
				for i=1,#G_PNVouc do
					-- zupnstr=zuhestr..string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_PNVouc[i].."|"
					GetAPI_Zip(vocpath..G_DNSVouc[i]..'.zip',string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_DNSVouc[i]..".txt|")
				end
			end
			if G_vm2flag then
				-- if #G_packet~=0 then
-- 						DebugLogId("压缩抓到的数据包...")
-- 						for i=1,#G_packet do
-- 							DebugLogId("包体存放路径："..vocpath..G_packet[i])
-- 							CopyFile(string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_packet[i],vocpath..G_packet[i])
-- 							-- GetAPI_Zip(vocpath..string.sub(G_packet[i],1,-6)..'.zip',string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_packet[i]..'|')
-- 						end
-- 					end
				CopyFile(string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_vm2flag,vocpath..G_vm2flag)
			end
			if G_vm2flag_new then
				if pcall(function()local file=io.open("/data/data/com.autosense/files/"..G_vm2flag_new,"r") file:close() end) then
					pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_vm2flag_new,vocpath..G_vm2flag_new)
					GetAPI_Deletefile("/data/data/com.autosense/files/"..G_vm2flag_new)
				end
			end
			-- else
			for i=1,#G_packet do
				DebugLogId("包体保存位置："..vocpath..G_packet[i])
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_packet[i],vocpath..G_packet[i])
				-- GetAPI_Zip(vocpath..string.sub(G_packet[i],1,-6)..'.zip',string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_packet[i]..'|')
			end
			for i=1,#G_fail_dump_tab do
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..G_fail_dump_tab[i],vocpath..G_fail_dump_tab[i])
			end
			for i=1,#G_WRITE_FILE do
				local file_name_write = GetAPI_GetFileName(G_WRITE_FILE[i])
				pcall(CopyFile,G_WRITE_FILE[i],vocpath..file_name_write)
			end
			if pcall(function() local file=io.open(string.sub(G_SysDbgPath,1,-2)..G_Pflg..'ping.txt',"r") file:close() end) then
				pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..'ping.txt',vocpath..'ping.txt')
			end
			filename=string.sub(G_SysDbgPath,1,-2)..G_Pflg.."debug.txt"
			DebugLogId("复制Debug.txt"..filename)
			ret,err=pcall(CopyFile,filename,vocpath.."debug.txt")
			if not ret then DebugLogId(err) end
		end
	end
	return 0
end

function UpLoad_Identify()
	local PhoneNum=GetAPI_MobileNum()
	local PhoneImei=GetAPI_DevCode()
	local NowTime=os.date("%Y-%m-%d %H:%M:%S")
	local content
	local PostContent,PostUrl
	local r1,r12
	content=string.format('<?xml version="1.0" encoding="UTF-8"?>\r\n<root>\r\n<flag>script</flag>\r\n<device>%s</device>\r\n<content>%s</content>\r\n<mobile>%s</mobile>\r\n<client_time>%s</client_time>\r\n</root>\r\n',PhoneNum,G_Captcha,PhoneNum,NowTime)
	PostUrl="a.netsense.cn"
	PostContent=string.format("POST /apps/telecomsms/insert_sms HTTP/1.1\r\nHOST:a.netsense.cn\r\nAccpt:*/*\r\nContent-Length:%s\r\nConnection:Close\r\n\r\n%s",#content,content)
	DebugLogId(string.format("开始上传：%s\n%s",PostUrl,PostContent))
	for i=1,10 do
		r1,_,_,_,_,_,_,_,_,_,_,r12=GetAPI_HttpClient(PostUrl,PostContent,PostUrl)

		if r1==6 and r12 then
			if string.find(r12,"0000") then
				DebugLogId("上传成功...")
				break
			end
		end
		DebugLogId("上传失败...第"..i.."次")
	end
end

function EngineDownload(Dlurl,Dlmode,Dlname)				--下载引擎并写重写引擎函数
	local ret,DLName,filesize
	local i,HUrl,DUrl
	local Content,dltime,urlhand
	local HTTPReturn
	local file
	if Dlmode==1 and not Dlname then
		DLName=os.date("%Y%m%d%H%M%S")
		Dlname=G_SysDbgPath..DLName..".dat"
	end
	i=string.find(Dlurl,"/")
	if i then
		HUrl=string.sub(Dlurl,1,i-1)
		DUrl=string.format("GET /%s HTTP/1.1\r\nHOST:%s\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",string.sub(Dlurl,i+1,-1),string.sub(Dlurl,1,i-1))
	else
		HUrl=Dlurl
		DUrl=string.format("GET / HTTP/1.1\r\nHOST:%s\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",Dlurl)
	end
	ret,_,_,_,_,_,dltime,_,_,urlhand,Content=GetAPI_HttpClient(HUrl,DUrl,Dlurl)
	DebugLogId("下载结果:ret="..ret.."(6是成功)")
	if ret==6 then
		if tonumber(urlhand) then
			HTTPReturn=tostring(urlhand)
		else
			_,_,HTTPReturn=string.find(urlhand,"[Hh][Tt][Tt][Pp][/][^ ]*[ ]*(%w+)")
		end
		DebugLogId("HTTPReturn:"..HTTPReturn)
		if string.sub(HTTPReturn,1,1)=="2" or string.sub(HTTPReturn,1,1)=="3" then
			if dltime == 0 then
				dltime=1
			end
			ret=dltime
		else
			ret=0
		end
	else
		ret=0
	end
	DebugLogId("Dlname:"..Dlname)
	if ret~=0 then
		if Dlmode==1 then
			file = io.open(Dlname,"w")
			file:write(Content)
			file:close()
		end
	end
	return ret
end

function GetSurplusResultTitle()						--重写结果表函数
	G_CMValueTable={}
	local ReTitletab,Titletab,TitletabA,TitletabB,i
	if ScriptAction then
		i=1
		while i<=#ScriptAction do
			WriteTitleTab(ScriptAction[i][2],"","N1")
			i=i+1
		end
	elseif CycAction then
		i=1
		while i<=#CycAction do
			WriteTitleTab(CycAction[i][2],"","N1")
			i=i+1
		end
	elseif BusinessActionA and not BusinessActionB then
		WriteTitleTab(BusinessActionA,"","N1")
	elseif BusinessActionA and BusinessActionB then
		WriteTitleTab(BusinessActionA,"","N1")
		WriteTitleTab(BusinessActionB,"","N1")
	end
end

function GetGVM(GVMstr,GVMtab)						--记录文本凭证内容
	local retGVM
	local i=1
	while i<=#GVMtab do
		if not GVMtab[i] then
			GVMtab[i]=""
		end
		i=i+1
	end
	retGVM=string.format(GVMstr,GVMtab[1],GVMtab[2],GVMtab[3],GVMtab[4],GVMtab[5],GVMtab[6],GVMtab[7],GVMtab[8],GVMtab[9],GVMtab[10])
	retGVM="["..os.date("%Y-%m-%d %H:%M:%S").."] "..retGVM
	if not G_GlbVocMsg or G_GlbVocMsg=="" then
		return retGVM
	else
		return G_GlbVocMsg.."\n"..retGVM
	end
end

function InTable(value,tab)
	for i,k in ipairs(tab) do
		if k==value then
			return i
		end
	end
	return false
end

-- function TabInStr(tab,str)
-- 	flag = true
-- 	for i = 1,#tab do
-- 		if G_FuzzyFlag then
-- 		end
-- 		if not string.find(str,tab[i]) then
-- 			flag = false
-- 		end
-- 	end
-- 	return flag
-- end

function TabInStr(tab,str,flag)						--tab = {'index="1"','resource%-id="android:id/action_bar_overlay_layout"','text="徐砚龙"'}, str = <node text="" class="android.widget.FrameLayout" package="com.android.contacts" content-desc="" resource-id="" editable="false" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" xpath="/" bounds="[0,0][1080,1812]"
	for i = 1,#tab do
		local tmp_tab
		local tmp_str = str
		local tab_str = tab[i]
		if G_FuzzyFlag and flag ==1 then
			tmp_tab = splittable(tab[i],'="')
			if string.find(str,tmp_tab[1]..'="') then
				for k in string.gmatch(str,tmp_tab[1].."=\"(.-)\"") do
					tmp_str = k
				end
			else
				return false
			end
			tab_str = string.gsub(tmp_tab[2],'"','')
			tab_str = _cfunc.GbkToUtf8(tab_str)
			if not individualContrast(tmp_str,tab_str) then
				return false
			end
		else
			local x = _cfunc.GbkToUtf8(tab[i])
			if not x or x == "" then
				return false
			end
			if not string.find(str,x) then
				return false
			end
		end
	end
	return true
end

function ReBuiltList(ScriptList,KeyWord)					--查找脚本列表,返回脚本模板或者执行列表与序号
	local list={}
	local x=-1
	for i=1,#ScriptList do
		if string.find(ScriptList[i],KeyWord) then
			x=i
			for j=i+1,#ScriptList do
				ScriptList[j]=Strip(ScriptList[j])
				if ScriptList[j]=='' then
					table.insert(list,ScriptList[j])
				elseif string.find(ScriptList[j],'}') and string.sub(ScriptList[j],1,string.find(ScriptList[j],'}')-1)~='' then
					table.insert(list,ScriptList[j])
				else
					break
				end
			end
			break
		end
	end
	return list,x
end

function FindScriptID(list,a)
	i=1
	while i<a do
		if list[i]=='' then
			a=a+1
		end
		i=i+1
	end
	while 1 do
		if list[a]=='' then
			a=a+1
		else
			break
		end
	end
	return a
end

function DeleteScript(SingleScript,list,a,c)
	local b
	a=FindScriptID(list,a)
	if list[a]==SingleScript then
		list[a]=''
		c=c+1
	end
	return c
end

function individualContrast(str,str_com_ed)
	return string.find(str,str_com_ed) and true or false
end

function StringFindIdx(str,fd)
	local i=1
	local thestr
	thestr=tostring(str)
	while thestr and i<=string.len(thestr) do
		if string.sub(thestr,i,i)==fd then
			return i
		end
		i=i+1
	end
end

--不支持转义符分割
function splittable(string,split)				--分割函数
    local tab = {}
    local b=0
	local s,e
    while true do
        s,e= string.find(string,split,b)
        if s then
            local temp = string.sub(string,b,s-1)
            table.insert(tab,temp)
            b=s+string.len(split)
        else
            local temp = string.sub(string,b,-1)
            table.insert(tab,temp)
            break
        end
    end
    return tab
end

function splittableEx(string,split,i)				--分割函数
    local b=0
	local s,e
	local retn
    for j=1,i do
        s,e= string.find(string,split,b)
        if s then
            local temp = string.sub(string,b,s-1)

            b=s+string.len(split)
			if j==i then
				retn=temp
			end
        else
            break
        end
    end
    return retn
end

function left(string,index)
	return string.sub(string,1,index)
end

function right(string,index)
	return string.sub(string,string.len(string)-index+1,string.len(string))
end

function upper(string)
	return string.upper(string)
end

function lower(string)
	return string.lower(string)
end

function findword(str,words)			--找关键字
	local s,slen,wlen
	slen=string.len(str)
	wlen=string.len(words)
	s=1
	while s<=slen do
		if string.sub(str,s,s+wlen-1)==words then
			return true
		end
		s=s+1
	end
	return false
end

------------------------基础库函数结束----------------------------------------------------------------------------------
------------------------公用库开始--------------------------------------------------------------------------------------

function DebugLogId(DataLog,ddate)				--写日志文件函数
	local time
	if not DataLog then
		DataLog="DebugLogId传入参数为空..."
	elseif type(DataLog)=="table" then
		DataLog=table.concat(DataLog,"\n")
	end
	local debugfile
	local filename
	filename = string.sub(G_SysDbgPath,1,-2)..G_Pflg.."debug.txt"
	while 1 do
		debugfile = io.open(filename, "a")
		if not debugfile then
			GetAPI_Sleep(5)
		else
			break
		end
	end
	if not ddate then
		ddate="测试日志"
	end
	time = GetAPI_OsClock()
	if G_EngineMode=="MacIOS" then
		DataLog = "["..os.date('%Y-%m-%d %H:%M:%S').."."..string.sub(time,-5,-3).." "..ddate.."]"..DataLog.."\t\n"
	else
		DataLog = "["..os.date('%Y-%m-%d %H:%M:%S',string.sub(time,1,-4))..'.'..string.sub(time,-3,-1).." "..ddate.."]"..DataLog.."\t\n"
	end
	-- if G_EngineMode=="Android" then
	-- 	DataLog = _cfunc.Utf8ToGbk(DataLog)
	-- end
	debugfile:write(DataLog)
	debugfile:close()
	print(DataLog)
end

function DebugLogByFile(DataLog,ddate)				--写日志文件函数
	local time
	if not DataLog then
		DataLog="DebugLogId传入参数为空..."
	elseif type(DataLog)=="table" then
		DataLog=table.concat(DataLog,"\n")
	end
	local debugfile
	local filename = "/data/local/tmp/c/filelog.txt"
	while 1 do
		debugfile = io.open(filename, "a")
		if not debugfile then
			GetAPI_Sleep(5)
		else
			break
		end
	end
	if not ddate then
		ddate="测试日志"
	end
	time = GetAPI_OsClock()
	DataLog = "["..os.date('%Y-%m-%d %H:%M:%S',string.sub(time,1,-4))..'.'..string.sub(time,-3,-1).." "..ddate.."]"..DataLog.."\t\n"
	debugfile:write(DataLog)
	debugfile:close()
	print(DataLog)
end

function DebugLog(G_Id,DataLog,ActName)				--写日志文件函数
	if not DataLog then
		DataLog="nil value"
	end
	if not ActName then
		ActName="UNKNOWN"
	end
	local debugfile
	local path=GetAPI_UusensePath()
	local filename
	filename = path.."log.txt"
	while 1 do
		debugfile = io.open(filename, "a")
		if not debugfile then
			GetAPI_Sleep(5)
		else
			break
		end
	end
	DataLog = G_Id.."--["..os.date("%Y-%m-%d %H:%M:%S").."]".." 测试动作:"..ActName..",内容:"..DataLog.."\t\n"
	debugfile:write(DataLog)
	debugfile:close()
end

--url组合，次数，包大小，成功计数标识
function DetectionNetwork(Purls,Ptimes,Ppcgsize,Psuccal)				--验证网路函数
	local res,pvalue
	local utab,ptab,vtab
	local succount=0
	local i,j

	DebugLogId("***************************************Ping 验证开始***************************************")
	utab=splittable(Purls,"|")
	i=1
	while i<=#utab do
		res,pvalue=GetAPI_PingInfo(utab[i],Ptimes,Ppcgsize)
		if res==0 then
			ptab=splittable(string.sub(pvalue,1,-2),"|")
			j=1
			while j<=#ptab do
				vtab=splittable(ptab[j],",")
				if tonumber(vtab[2])>0 then
					succount=succount+1
				end
				DebugLogId(""..string.format("Reply from %s: bytes=%s time=%sms TTL=%s",utab[i],Ppcgsize,vtab[2],vtab[3]))
				j=j+1
			end
			if succount>=Psuccal then
				DebugLogId("***************************************Ping 验证结束**************************************")
				return 0
			end
		else
			DebugLogId("noReply from "..utab[i])
		end
		i=i+1
	end
	DebugLogId("***************************************Ping 验证结束***************************************")
	return 1
end

function CMCheckResultFile(ResultTitle)				--检查是否需要出结果指标数据
	local CMResultList,CMTitleList
	local CMRetTable={}
	local CMList
	local typetab={"P","T","S","I","C","N","L","K","G"}
	local cmtype
	CMTitleList=splittable(ResultTitle,"|")
	for i=1,#CMTitleList do
		if string.sub(CMTitleList[i],1,1)=="<" and string.sub(CMTitleList[i],-1,-1)==">" then	
			CMList=splittable(string.sub(CMTitleList[i],2,-2),"#")
			if #CMList==2 then
				cmtype=InTable(string.upper(CMList[2]),typetab)
				if not cmtype then
					cmtype=FindTitleType(CMList[1])
				end
			else
				cmtype=FindTitleType(CMList[1])
			end
			table.insert(CMRetTable,CMList[1].."\t"..cmtype)
		end
	end
	return CMRetTable
end

function FindTitleType(ret)				--查找指标类型函数
	local cmtype
	if string.find(ret,"成功率") then
		cmtype=1
	elseif string.find(ret,"时长") or string.find(ret,"时延") or string.find(ret,"丢包率") or string.find(ret,"信噪比")then
		cmtype=2
	elseif string.find(ret,"速率") then
		cmtype=3
	else
		cmtype=1
	end
	return cmtype
end

function GetVoucTale(G_Id)				--产生凭证尾数
	local i,strid,retvouc
	retvouc=""
	strid=tostring(G_Id)
	strid=string.gsub(strid,"_","")
	i=1
	while i<=5-string.len(strid) do
		retvouc=retvouc.."0"
		i=i+1
	end
	retvouc=retvouc..strid
	return retvouc
end

--ErrImageTab:形如{"[xa_ya_xb_yb_xxxxx_Engine_异常结果代码.png],[key|touchx,touchy]",...}
--1、可以不带处理动作
--2、比图支持多图或关系用"|"分隔，多图与关系用"-"连接
function CMVoucFile(MakeLogfile,CMVouc)				--记录凭证图片并进行异常图片比对函数
	local vret,VoucAllPath
	local i=1
	local retCMRlt
	local TempTab,ret,tb,retimg,res
	vret=-100
	VoucAllPath=MakeLogfile..CMVouc
	vret=GetAPI_CaptureImg(VoucAllPath)
	DebugLogId("记录凭证截图文件："..VoucAllPath..",结果："..vret)
	if ErrImageTab then
		DebugLogId("#########################################################################")
		DebugLogId("##########################开始异常图片比对###############################")
		while i<=#ErrImageTab do
			TempTab=splittable(string.sub(ErrImageTab[i],2,-2),"%],")
			ret,retimg=WaitExeption(VoucAllPath,TempTab[1])
			if ret == 0 then
				DebugLogId("异常图片比对成功："..retimg)
				tb=splittable(retimg,"_")
				retCMRlt=string.sub(tb[#tb],1,-5)
				if TempTab[2] then
					Method_Touchs(TempTab[2],"",2)
				end
				res="2"
				break
			end
			i=i+1
		end
		DebugLogId("##########################结束异常图片比对###############################")
		DebugLogId("#########################################################################")
	end
	if retCMRlt and tonumber(retCMRlt) then
		print("出对应指标")
	else
		retCMRlt=false
	end
	return retCMRlt,res
end

function CMVoucFileTxt(MakeLogfile,CMVouc)				--记录凭证文本
	local lfile
	lfile=io.open(MakeLogfile..CMVouc, "a")
	lfile:write(G_GlbVocMsg.."\n")
	lfile:close()
end

function CMVoucSuccessTxt(G_Id,MakeLogfile,CMVouc,CMRlt,CMResultTitile)				--记录成功测试的凭证文本
	local lfile
	lfile=io.open(MakeLogfile..CMVouc, "a")
	lfile:write(G_GlbVocMsg.."\n")
	lfile:close()
end

function SplitSpnumContent(OldReceiveContent)				--分离特服号和比对图片内容
	local SPNumReceiveContent=""
	local ReceiveContent=""
	local TmpTab,tmptb
	local t=1
	TmpTab=splittable(OldReceiveContent,"|")
	while t<=#TmpTab do
		if string.match(TmpTab[t],"-") then
			tmptb=splittable(TmpTab[t],"-")
			SPNumReceiveContent=SPNumReceiveContent.."|"..tmptb[1]
			ReceiveContent=ReceiveContent.."|"..tmptb[2]
		else
			ReceiveContent=ReceiveContent.."|"..TmpTab[t]
		end
		t=t+1
	end
	SPNumReceiveContent=string.sub(SPNumReceiveContent,2,-1)
	ReceiveContent=string.sub(ReceiveContent,2,-1)
	return SPNumReceiveContent,ReceiveContent
end

--检查短信凭证最后一行内容，如果有"失败"或"超时"返回true，否则返回false
function CheckGlbVocMsg()				--检查短信凭证内容
	local retval
	local voctab
	local vi
	retval=false
	voctab=splittable(G_GlbVocMsg,"\n")
	vi=#voctab
	while vi>0 do
		if voctab[vi]~="" then
			if string.match(voctab[vi],"%)失败") or string.match(voctab[vi],"%)超时") or string.match(voctab[vi],"成功/失败") then
				retval=true
				break
			end
		end
		vi=vi-1
	end
	return retval
end

function ChangeUDTpye(nowtype,resulttitle)
	nowtype=tonumber(nowtype)
	if nowtype==2 then
		if string.find(resulttitle,"个数") or string.find(resulttitle,"次数") then
			nowtype=4
		elseif string.find(resulttitle,"信号") and not string.find(resulttitle,"信噪比") then
			nowtype=11
		elseif string.find(resulttitle,"信噪比") then
			nowtype=15
		elseif string.find(resulttitle,"电量") then
			nowtype=16
		elseif string.find(resulttitle,"丢包率") then
			nowtype=1
		elseif string.find(resulttitle,"ping") and string.find(resulttitle,"时") then
			nowtype=8
		elseif string.find(string.lower(resulttitle),"dns") then
			nowtype=8
		elseif string.find(string.lower(resulttitle),"tcp") then
			nowtype=8
		else
			nowtype=3
		end

	elseif nowtype==3 then
		nowtype=2
	end
	if nowtype==10 then
		nowtype=11
	end
	if string.find(resulttitle,"上行") or string.find(resulttitle,"下行") then
		if nowtype == 6 or nowtype == 7 then
			nowtype=1
		else
			nowtype=7
		end
	elseif string.find(resulttitle,"[Cc][Pp][Uu]") and string.find(resulttitle,"峰值") or string.find(resulttitle,"[Cc][Pp][Uu]") and string.find(resulttitle,"均值") or string.find(resulttitle,"[Cc][Pp][Uu]") and string.find(resulttitle,"占比") or string.find(resulttitle,"内存") and string.find(resulttitle,"占比") then
		nowtype=1
	elseif string.find(resulttitle,"内存") and string.find(resulttitle,"峰值") or string.find(resulttitle,"内存") and string.find(resulttitle,"均值") then
		nowtype=7
	end

	return nowtype
end
--[[
1=成功率(%)
2=速率(KB/s)
3=时长(s)
--4=次数
--5=时间(s)
--6=方差
7=页面大小(KB)
--8=时长(ms)
--9=页面大小(B)
--10=带宽大小(MB)
--11=信号强度(dbm)
--12=频段(HZ)
--13=频点
--]]

function miguUpValue(oneValue,cmtTestResult)	--只实时上传 业务指标失败结果
	if cmtTestResult == "03" then
		local file = io.open("/data/data/com.autosense/files/cfg/setting.cfg","r")
		local Content = file:read("*all")
		file:close()
		if string.find(Content,"39.156.1.13:9091") then	
			oneValue = string.gsub(oneValue,"\n","")
			Businesses = string.gsub(Businesses,'"',"")
			local ArguMentList = splittable(G_SysParms, "|")
			local taskID = ArguMentList[2]		-- 任务Id_执行Id_执行轮次	
	
			local updatestr_debug = string.format('taskId=%s&serviceName=%s&result=%s', taskID, Businesses, oneValue)
			DebugLogId(string.format("上报 [%s] 测试结果: %s", ArguMentList[2], updatestr_debug))
	
			local result = _cfunc.GbkToUtf8(oneValue)
			local serviceName = _cfunc.GbkToUtf8(Businesses)
			local updatestr = string.format('taskId=%s&serviceName=%s&result=%s', taskID, serviceName, result)
			local cmd = "/data/local/tmp/curl-7.40.0/bin/curl -s -X POST http://39.156.1.13:9091/apps/instant_results/upload_result -H 'Cache-Control: no-cache' -H 'Connection: Close' -H 'Content-Type: application/x-www-form-urlencoded; charset=utf-8' -H 'HOST: 39.156.1.70:81' -d ".."'"..updatestr.."'"
			local ret = _cfunc.Command(cmd)	
			DebugLogId(string.format("本次上报return: %s（0：成功\t1：失败）", ret))
		end
	end
end

function CMWriteResultLog(ResultTable,Titletab,LastTab)				--记录测试指标函数
	local ResultTitle=ResultTable[1]								--指标名
	local ret=ResultTable[2]										--成功失败标记
	local ResultContent=ResultTable[3]								--指标内容表，动作名返回的resulttable
	local ActionStartTime=os.date("%Y%m%d%H%M%S",ResultTable[4])	--指标开始时间
	local ActionEndTime=os.date("%Y%m%d%H%M%S",ResultTable[5])		--指标结束时间
	local CMRetIdxTable
	local ArguMentList
	local resultEdt="1.0.0"
	local cmtTestMode,cmtTestNum
	local ReTestCount="0"
	local ResultType
	local ResultTypeTab={"auto","auto_capture","video","dns","http","ping","file","wifi","netsense"}
	local CMRecordTab,cmtServiceCode,CMRetFlag,CMRetFlagEx
	local cmtTestResult
	local vocchkflg,CMRlt
	local TestValue
	local Netflag
	local cmtNetworkFlag,CMValue
	local AttachFileType
	local reltype
	local setp
	local tstime=0
	local imgret,imgidx
	local autoret,autoid,ImgFileName
	local scriptpath
	local scriptfile
	local tempscript
	local tmpcontect
	local tempscript1
	local abc=-1
	local TempTime,TempImgName
	local TempIMGtable={}
	local scriptIMG
	local pic_path
	local SinglePicList={}
	local LastIMG={}
	local retx,err
	cmtTestMode=GetAPI_TestMode()
	--argument内容：OS类型|任务Id|执行ID|执行轮次|脚本名称|TargetId|
	ArguMentList = splittable(G_SysParms,"|")
	cmtTestNum=ArguMentList[4]

	if string.find(ResultTitle,"+(%d)") then	--处理“+”问题
		_,_,setp=string.find(ResultTitle,"+(%d)")
		ResultTitle=string.gsub(ResultTitle,"+%d","")
		for i=#G_TestTimeTab-tonumber(setp),#G_TestTimeTab do
			tstime=tstime+G_TestTimeTab[i]
		end
		ResultContent[2]=tstime

		if ResultContent[5]=="rate" then
			ResultContent[3]=DecPoint(ResultContent[4]/ResultContent[2])
		end
	end

	CMRetIdxTable=CMCheckResultFile(ResultTitle)
	cmtNetworkFlag=GetAPI_NetFlag()
	DebugLogId("网络制式："..cmtNetworkFlag)
	if ret~=0 then	--流程失败，去验证网络和截取凭证文件
		G_fail_flag = true
		vocchkflg=CheckGlbVocMsg()
		if G_GlbVocMsg=="" or not vocchkflg then
			if G_CMVouc=="" then
				TempTime=os.date("%Y%m%d%H%M%S")
				if G_EngineMode=="MacIOS" then
					G_CMVouc="hzys_"..TempTime..GetVoucTale(G_Id)..".jpeg"
				else
					G_CMVouc="hzys_"..TempTime..GetVoucTale(G_Id)..".png"
				end
				DebugLogId("截取凭证文件中...")
				if G_EngineMode == "Android" then
					CMRlt=CMVoucFile(string.sub(G_SysDbgPath,1,-2)..G_Pflg,G_CMVouc)
					if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
					if pcall(function()local file=io.open(string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump.xml","r") file:close() end) then
						DebugLogId("复制dump.xml")
						local filename=string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump.xml"
						local filename_timestamp="hzys_"..TempTime..GetVoucTale(G_Id)..".xml"
						retx,err=pcall(CopyFile,filename,string.sub(G_SysDbgPath,1,-2)..G_Pflg..filename_timestamp)
						if retx then
							table.insert(G_fail_dump_tab,filename_timestamp)
						end
					end
				elseif G_EngineMode=="IOS" then
					pic_path = string.sub(G_SysDbgPath,1,-2)..G_Pflg.."hzys_"..TempTime..GetVoucTale(G_Id)
					GetAPI_CreateDir(pic_path)
					CMRlt=CMVoucFile(pic_path..G_Pflg,G_CMVouc)
				elseif G_EngineMode=="MacIOS" then
					DebugLogId("创建目录，截取屏幕图片，保存图片凭证：")
					pic_path = string.sub(G_SysDbgPath,1,-2)..G_Pflg.."FILE"..G_Pflg.."hzys_"..TempTime..GetVoucTale(G_Id)
					CMRlt=CMVoucFile(pic_path,".jpeg")
				end
				if G_ScriptPic~='' then
					G_ScriptPic=string.gsub(G_ScriptPic,'%-','|')
					SinglePicList=splittable(G_ScriptPic,'|')
					for i=1,#SinglePicList do
						local Imgtmp
						scriptIMG="hzys_"..TempTime..GetVoucTale(G_Id)
						TempIMGtable=splittable(SinglePicList[i],'_')
						scriptIMG=scriptIMG..'_'..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4]..'_('..i..')'
						if not InTable(TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4],LastIMG) then
							if G_EngineMode=="Android" then
								Imgtmp=string.sub(G_SysDbgPath,1,-2)..G_Pflg.."hzys_"..TempTime..GetVoucTale(G_Id).."_"..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_ComPoSc.bmp"
								GetAPI_CaptureRectangle(string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_.bmp")
								CopyFile(string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_.bmp",Imgtmp)
								GetAPI_Deletefile(string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_.bmp")
								table.insert(LastIMG,TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4])
							elseif G_EngineMode=="IOS" then
								Imgtmp=pic_path..G_Pflg.."hzys_"..TempTime..GetVoucTale(G_Id).."_"..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_ComPoSc.png"
								GetAPI_CaptureRectangle(string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_.png",TempIMGtable[1],TempIMGtable[2],TempIMGtable[3],TempIMGtable[4])
								pcall(CopyFile,'/var/mobile/ua_small.png',Imgtmp)
								pcall(CopyFile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_.png",Imgtmp)
								pcall(GetAPI_Deletefile,'/var/mobile/ua_small.png')
								pcall(GetAPI_Deletefile,string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_.png")
								table.insert(LastIMG,TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4])
							end
						else
							Imgtmp=""
						end
						if G_EngineMode=="Android" then
							retx,err=pcall(CopyFile,G_SysScpPath..G_Pflg..SinglePicList[i],string.sub(G_SysDbgPath,1,-2)..G_Pflg..scriptIMG..string.sub(SinglePicList[i],-4,-1))
							if retx then
								DebugLogId("图片全路径："..string.sub(G_SysDbgPath,1,-2)..G_Pflg..scriptIMG..string.sub(SinglePicList[i],-4,-1).."|"..Imgtmp)
								DebugLogId("截图路径：".."hzys_"..TempTime..GetVoucTale(G_Id))
								table.insert(G_scriptimg,{string.sub(G_SysDbgPath,1,-2)..G_Pflg..scriptIMG..string.sub(SinglePicList[i],-4,-1).."|"..Imgtmp,"hzys_"..TempTime..GetVoucTale(G_Id)})
							end
						elseif G_EngineMode=="IOS" then
							retx,err=pcall(CopyFile,G_SysScpPath..G_Pflg..SinglePicList[i],pic_path..G_Pflg..scriptIMG..string.sub(SinglePicList[i],-4,-1))
						end
						if err then
							DebugLogId("拷贝文件失败原因："..err)
						end
					end
				end
				--Netflag=DetectionNetwork("3g.baidu.com|3g.qq.com",3,32,1)
				if G_Automatical==true then
					if G_EngineMode=="Android" then
						autoret,autoid,ImgFileName=auto_WaitEx(G_ScriptPic)
						-- if autoret==0 then
-- 							if DebugFlag then
-- 								scriptpath='/data/local/tmp/c'
-- 							else
-- 								scriptpath=G_SysScpPath
-- 							end
-- 							scriptfile=io.open(scriptpath..'/script.lua',"rb")
-- 							tempscript=scriptfile:read("*all")
-- 							tempscript=string.gsub(tempscript,'\r\n','\n')
-- 							tempscript=string.gsub(tempscript,'\n\r','\n')
-- 							scriptfile:close()
-- 							tempscript=string.gsub(tempscript,"(%[&[^%]]*%],)".."(%[[^%]]*%],)".."(%[)"..G_ScriptPic,"%1%2%3"..ImgFileName.."|"..G_ScriptPic)
-- 							scriptfile=io.open(scriptpath..'/script.lua',"w")
-- 							scriptfile:write(tempscript)
-- 							scriptfile:close()
-- 							G_AutoUPload=true
-- 						end
					else
						print('该机型不支持')
					end
				end
			end
		else
			if G_CMVouc=="" then
				G_CMVouc="hzys_"..os.date("%Y%m%d%H%M%S")..GetVoucTale(G_Id)..".txt"
				CMVoucFileTxt(string.sub(G_SysDbgPath,1,-2)..G_Pflg,G_CMVouc)
				G_GlbVocMsg = ""
			end
		end
	else
		G_GlbVocMsg = ""
	end
	
	if ResultContent[1]=="TITLE" then	--处理TITLE问题和直接出指标问题
		if ResultContent[2]=="N4" then
			reltype="04"
		elseif ResultContent[2]=="N3" then
			reltype="03"
		elseif ResultContent[2]=="N2" then
			reltype="02"
		elseif ResultContent[2]=="N1" then
			reltype="01"
		elseif ResultContent[2]=="N10" then
			reltype="10"
		elseif ResultContent[2]=="N11" then
			reltype="11"
		elseif ResultContent[2]=="N12" then
			reltype="12"
		elseif ResultContent[2]=="N13" then
			reltype="13"
		elseif ResultContent[2]=="N14" then
			reltype="14"
		elseif ResultContent[2]=="Y" then
			reltype="00"
		else
			reltype="01"
			DebugLogId("TITLE传入参数'"..ResultContent[2].."'有误!","脚本错误")
		end
		if LastTab then
			ResultContent=LastTab[3]
			ActionStartTime=os.date("%Y%m%d%H%M%S",LastTab[4])
			ActionEndTime=os.date("%Y%m%d%H%M%S",LastTab[5])
		end
	end
	local connectionflag	--关联指标
	for i=1,#CMRetIdxTable do	--处理指标表
		connectionflag=true
		TestValue=""
		if InTable(ResultContent[1],ResultTypeTab) then
			ResultType=ResultContent[1]
		else
			ResultType="auto"
		end
		CMRecordTab=splittable(CMRetIdxTable[i],"\t")
		cmtServiceCode=CMRecordTab[1]
		CMRetFlag=CMRecordTab[2]
		if ret==0 then  --测试成功
			cmtTestResult="00"
			AttachFileType="0"	--无凭证文件
		else
			AttachFileType="1"	--有凭证文件
			if CMRlt then
				cmtTestResult=CMRlt
			end
			if ret == 5 then
				cmtTestResult="05"
			elseif autoret==0 then
				cmtTestResult='14'
			elseif reltype then
				cmtTestResult=reltype
			else
				cmtTestResult="03"
			end
		end
		if ResultType=="auto" or ResultType=="netsense" or ResultType=="ping" or ResultType=="dns" or ResultType=="auto_capture" then
			CMRetFlagEx=ChangeUDTpye(CMRetFlag,cmtServiceCode)
			if ResultContent[tonumber(CMRetFlag)] then
				if ResultContent[tonumber(CMRetFlag)]=="auto" or ResultContent[tonumber(CMRetFlag)]=="netsense" or ResultContent[tonumber(CMRetFlag)]=="ping" or ResultContent[tonumber(CMRetFlag)]=="dns" or ResultContent[tonumber(CMRetFlag)]=="auto_capture" then
					if  ret==0 then
						TestValue="1|"..CMRetFlagEx..string.rep("|NA",8)
					else
						TestValue="0|"..CMRetFlagEx..string.rep("|NA",8)
					end
				else
					TestValue=ResultContent[tonumber(CMRetFlag)].."|"..CMRetFlagEx..string.rep("|NA",8)
				end
			else
				DebugLogId("输入指标类型错误!","脚本错误")
				TestValue="nil|"..CMRetFlagEx..string.rep("|NA",8)
			end
		else
			for j=2,#ResultContent do
				TestValue=TestValue..ResultContent[j].."|"
			end
			if ResultType~="video" then
				TestValue=TestValue.."NA"..string.rep("|NA",10-#ResultContent)
			else
				TestValue=string.sub(TestValue,1,-2)
				-- TestValue=string.sub(TestValue,1,-4)
			end
		end
		TestValue = ResultContent.provText and string.format( "%s|%s",TestValue,ResultContent.provText) or TestValue	--migu上报自定义值
		if ResultType=="netsense" then
			CMValue=ResultType.."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t"..AttachFileType.."\t"..G_CMVouc.."\t"..G_NETSENSE.."\n"
		elseif ResultType=="auto_capture" then
			CMValue="auto".."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t".."1".."\t"..G_CaptureImg.."\n"
		elseif ResultType=="ping" then
			CMValue="auto".."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t".."1".."\t"..G_CMPNVouc.."\n"
		elseif ResultType=="dns" then
			CMValue="auto".."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t".."1".."\t"..G_CMDNSVouc.."\n"
		else
			CMValue=ResultType.."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t"..AttachFileType.."\t"..G_CMVouc.."\n"
		end
		DebugLogId("测试指标入表:"..CMValue)
		if ret ~=0 and ResultContent.provText then miguUpValue(CMValue,cmtTestResult) end
		table.insert(G_CMValueTable,CMValue)
	end
	if #CMRetIdxTable>0 and reltype then
		reltype=false
	end
	if #Titletab>0 and not G_cyc_traverse then	--流程失败，处理剩余指标
		local temptab
		if reltype then
			cmtTestResult=reltype
		elseif connectionflag then
			cmtTestResult="11"
		else
			cmtTestResult="04"
		end
		AttachFileType="1"
		for i=1,#Titletab do
			TestValue=""
			temptab=splittable(Titletab[i],"\t")
			ResultTitle=temptab[1]
			ResultType=temptab[2]
			CMRetIdxTable=CMCheckResultFile(ResultTitle)
			CMRecordTab=splittable(CMRetIdxTable[1],"\t")
			cmtServiceCode=CMRecordTab[1]
			CMRetFlag=CMRecordTab[2]
			if ResultType=="auto" or ResultType=="netsense" or ResultType=="ping" or ResultType=="dns" then
				CMRetFlagEx=ChangeUDTpye(CMRetFlag,cmtServiceCode)
				TestValue="0|"..CMRetFlagEx..string.rep("|NA",8)
			elseif ResultType=="video" then
				TestValue="0"..string.rep("|0",14)
			-- elseif ResultType=="dns" or ResultType=="ping" then
				-- TestValue="0"..string.rep("|0",2)..string.rep("|NA",7)
			elseif ResultType=="http" or ResultType=="file" then
				TestValue="0"..string.rep("|0",3)..string.rep("|NA",6)
			elseif ResultType=="wifi" then
				TestValue="0"..string.rep("|0",5)..string.rep("|NA",4)
			end
			if ResultType=="netsense" then
				CMValue=ResultType.."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t"..AttachFileType.."\t"..G_CMVouc.."\t"..G_NETSENSE.."\n"
			else
				CMValue=ResultType.."\t"..resultEdt.."\t"..cmtServiceCode.."\t"..cmtTestMode.."\t"..ActionStartTime.."\t"..ActionEndTime.."\t"..cmtTestNum.."\t"..ReTestCount.."\t"..cmtTestResult.."\t"..TestValue.."\t"..cmtNetworkFlag.."\t0\t"..AttachFileType.."\t"..G_CMVouc.."\n"
			end
			DebugLogId("测试指标入表:"..CMValue)
			miguUpValue(CMValue,cmtTestResult)
			table.insert(G_CMValueTable,CMValue)
		end
	end
end
AppEdt="3.0.1"		

---------------------------------------------------App兼容测试-----------------------------------------------------
------------------------------------------------------------------------------------------------------------------

--android|102857|7|1|1|mob|0||||||||1|102857##2##1####http://v3.netsense.cn/data/apps/201709/59ccc4b84c33a639.apk##cmccwm.mobilemusic##5.0.3##153##c4b7328feda8a64153fd9e14c2|  old外网地址
--android|102857|7|1|1|mob|mob|1|cmccwm.mobilemusic|http://39.156.1.13:9091/data/apps/201712/5a3bedf301502109.apk|5.1.1|170|8f4567a2aeb8cc6c8cb942409245250a|20171222012301|10125|5607892##1##0##http://192.168.140.249/data/apps/20171225/5a3bedf301502109.apk##http://39.156.1.13:9091/data/apps/201712/5a3bedf301502109.apk##cmccwm.mobilemusic##5.1.1##170##8f4567a2aeb8cc6c8cb942409245250a|        存在内网地址
--android|101158|2|1|2|mob|0||||||||1|101158##1##0####http://auto.uusense.com/data/apps/201801/5a6a8253b3bbd707.apk##com.qq.reader##6.5.8.888##107##6d5a5babb8ea33812890fbdcd86d448f##5| 兼容性测试
--android|101157|1|1|1|mob|0||||||||1|101157##2##1####http://auto.uusense.com/data/apps/201801/5a6a8253b3bbd707.apk##com.qq.reader##6.5.8.888##107##6d5a5babb8ea33812890fbdcd86d448f##5| 遍历测试测试
-- DebugFlag = "Android|1|4|5|13426|mob|1|com.qq.reader|http://a.nnn.cn/alkd.apk|V3.2.2|1288932|xxxxxx|20170102212324";    --本地调试

function APPtestMain(ArguMentList)
	local appVer 
	local pkgname
	local md5Value
	local TaskPtype
	local AppPtype
	local AppUrlPath
	local webUrlPath
	local appActivity
	local flag,BLtime
	if not TestMode then TestMode="" end
	if DebugFlag then
		appVer,pkgname,md5Value,TaskPtype,AppPtype,AppUrlPath,webUrlPath,BLtime= ListJudge(ArguMentList,2)
	else
		appVer,pkgname,md5Value,TaskPtype,AppPtype,AppUrlPath,webUrlPath,BLtime= ListJudge(ArguMentList,1)
	end

	GetAPI_CreateDir(G_SysDbgPath.."/images")
	
	DebugLogId(string.format("APP信息，APP_包名：%s   APP_版本：%s   APP_MD5：%s",pkgname,appVer,md5Value))
	if APP_MainActivity then 
		DebugLogId("App_MainActivity: "..APP_MainActivity) 
		appActivity = string.format("%s/%s",pkgname,APP_MainActivity) 
	end
		
	if pkgname=="UNKNOWN" or not DebugFlag then
		if md5Value=="UNKNOWN" then 
			DebugLogId("APP包名或MD5为空，无法进行app测试，退出！") 
		return 0
		end
	end
	if string.find(AppUrlPath,"http:") then	--测试类型判断
		local tasktmp = "未定义"
		if tonumber(TaskPtype) == 1 then
			G_APPJRscript = true
			tasktmp = "兼容" 
		elseif tonumber(TaskPtype) == 2 then
			G_APPBLscript = true
			tasktmp = "遍历" 
		elseif tonumber(TaskPtype) == 3 then
			G_APPMonkey = true
			tasktmp = "Monkey" 
		else
			DebugLogId("App测试，传入参数类型有误:"..TaskPtype)
		end
		--app安装类型判断
		local strtmp = tonumber(AppPtype) == 0 and "卸载" or tonumber(AppPtype) == 1 and "覆盖" or "false"
		DebugLogId(string.format("App测试类型：%s测试，安装方式：%s安装，地址：%s",tasktmp,strtmp,AppUrlPath ))
	else
		G_APPJRscript = true
		DebugLogId(string.format("App测试类型：%s测试，安装方式：%s安装，地址：%s","兼容","卸载",AppUrlPath ))
	end
	UI_AutoClickOpen(pkgname)
	
	local head = "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>"	--xml文件头
	table.insert(G_JRResultXml,head)
	table.insert(G_JRResultXml,"<result>")
	table.insert(G_JRResultXml,"<results>")
	table.insert(G_JRResultXml,"</results>")
	table.insert(G_JRResultXml,"</result>")
	
	--完成app安装、启动、卸载、pid获取、耗时、error_reason信息
	--检测安装包是否已安装：pm list packages | find "ijetty"
	--先卸载、安装（捕获结果）	--失败时，检查已安装apk版本，并记录
	--启动后，通过进程检查是否启动 
	if tonumber(AppPtype) == 0 then	--卸载安装
		ret = CheckPKG( pkgname )	--检查是否已安装
		if ret == 0 then
			local stimer = os.date("%Y-%m-%d %H:%M:%S")
			DebugLogId(string.format("app %s 已安装,执行卸载 ",pkgname))
			local ret,ereason = AppUnInstall( pkgname )	
			if ret ~= 0 then
				DebugLogId(string.format("app %s 卸载失败,退出测试，记录为失败 ",pkgname))
				Insert_AppInfo(0,_,_,33,"该安装包已存在，卸载不成功，记录为失败："..ereason)
				JRoneCapture( "app_uninstall_failed" )
				if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
				JRResult( "uninstall", stimer, "cmd", "app_uninstall_failed", "false", "", "" )
				return 0				
			end
		else
			DebugLogId(string.format("APP %s 未安装,无须执行卸载！",pkgname))
		end
	end 
	
	if not JRAPPTEST_uninstall then	--卸载脚本不执行下载流程
		local stimer = os.date("%Y-%m-%d %H:%M:%S")
		local ret,appResult = AppDownload(AppUrlPath,md5Value)	--app下载
		if ret == 0 then 
			APP_Deployment(pkgname,appActivity,appResult,BLtime)	
		else
			if webUrlPath and webUrlPath~="" then
				ret,appResult = AppDownload(webUrlPath,md5Value)	--app 外网下载
			end
			if ret == 0 then 
				APP_Deployment(pkgname,appActivity,appResult,BLtime)	--开始部署apk
			else
				JRoneCapture( "app_download_failed" )
				if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
				Insert_AppInfo( 0,0,_,4,appResult)	--info信息
				JRResult( "download", stimer, "cmd", "app_download_failed", "false", "", "" )
			end
		end
	end
	
	GetAPI_logcat("end",pkgname)
	
	if JRAPPTEST_install then --安装脚本不执行卸载流程
		DebugLogId("进入到这里2222222222222")
		return 0 
	end	
	
	--任务运行结束后卸载，本地不卸载
	if not DebugFlag then
		ret = CheckPKG( pkgname )	--检查是否已安装
		if ret == 0 then 
			local ret,ereason = AppUnInstall( pkgname )	--测试完成后卸载
			if ret ~= 0 then 
				local appinfo = G_JRResultXml[3]
				local t = string.match(appinfo,' result=%b""')	
				local appinfo = string.gsub(appinfo,t,string.format(' result="%s"',"33"))	--卸载失败
				local t = string.match(appinfo,' error_reason=%b""')	
				local appinfo = string.gsub(appinfo,t,string.format(' error_reason="%s"',ereason))	
				JRresultTb[3] = appinfo
				DebugLogId(string.format("app %s 卸载失败,退出测试，记录为失败 ",pkgname))
				if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
			end		
		end		
	end
	return 0
end

function ListJudge(ArguMentList,flag)
	local appVer 
	local pkgname
	local md5Value
	local TaskPtype
	local AppPtype
	local AppUrlPath
	local webUrlPath
	local BLtime
	if flag == 1 then		--后台调试
		local appInfo = ArguMentList[#ArguMentList-1]	--最后一位是空字符串""，所以索引值-1
		local appStr = splittable(appInfo, "##")
		if APP_Version then
			appVer = APP_Version
		elseif appStr[7] then
			appVer = appStr[7]
		else 
			appVer = "UNKNOWN"
		end
	
		if APP_PacketName then
			pkgname = APP_PacketName
		elseif appStr[6] then
			pkgname = appStr[6]
		else 
			pkgname = "UNKNOWN"
		end
	
		if appStr[9] then
			md5Value = appStr[9]
		else
			md5Value = "UNKNOWN"
		end
		if not appStr[10] or appStr[10] == "" then
			BLtime = 5
		else
			BLtime = appStr[10]
		end
		TaskPtype = appStr[2]
		AppPtype = appStr[3]
		if appStr[4]=='' then
			AppUrlPath = appStr[5] 		
			webUrlPath = ""
		else 
			AppUrlPath = appStr[4]		--内网地址
			webUrlPath = appStr[5]		--外网地址
		end
		
	elseif flag == 2 then	--本地调试
		if APP_Version then
			appVer = APP_Version
		elseif ArguMentList[10] then
			appVer =  ArguMentList[10] 
		else 
			appVer = "UNKNOWN"
		end
		
		if APP_PacketName then
			pkgname = APP_PacketName
		elseif ArguMentList[8] then
			pkgname = ArguMentList[8]
		else 
			pkgname = "UNKNOWN"
		end
		
		if ArguMentList[13] then
			md5Value = ArguMentList[13]
		else
			md5Value = "UNKNOWN"
		end
		TaskPtype,AppPtype = 1,0 	--本地默认兼容、卸载
		AppUrlPath = ArguMentList[9]
		webUrlPath = ""	
	end
	return appVer,pkgname,md5Value,TaskPtype,AppPtype,AppUrlPath,webUrlPath,BLtime
end

function UI_AutoClickOpen(package,time)		--开启自动点击
	local shell
	package = G_pkgName or package
	if package then
		shell = string.format("uiautomator runtest UUBootstrap.jar -c io.appium.android.bootstrap.Bootstrap -e isAutoinstaller true -e package %s",package) 
	else
		shell = "uiautomator runtest UUBootstrap.jar -c io.appium.android.bootstrap.Bootstrap -e isAutoinstaller true"
	end
	-- _cfunc.GetUserId()	--判断root
	local backRun = '/data/local/tmp/c/program/commandd /system/bin/uiautomator'
	local tmpstr  = string.format("%s %s",backRun,shell)	
	_cfunc.Command(tmpstr)
	if time then
		DebugLogId(string.format("UI_AutoClick Open，Keep live in %ds",time))
		GetAPI_Sleep(tonumber(time))	
	else
		DebugLogId("UI自动点击功能开启")
	end
end

function CheckPKG(pkgname)	--检查已安装列表
	local ret = -1
	local cmd = "pm list packages"
	local cmdReturn = _cfunc.Command(cmd)
	if cmdReturn == "" then 
		DebugLogId(string.format('_cfunc.Command :%s return log is nil',cmd)) 
		return ret 
	end
	local apkLists = splittable(cmdReturn, "\n")
	for i,v in ipairs(apkLists) do
		if string.find(v,pkgname) then 
			ret=0 
			break 
		end
	end
	return ret
end

function AppUnInstall( pkgname )	--卸载
	local tmpstr  = string.format("pm uninstall %s",pkgname)
	local status = _cfunc.Command(tmpstr)
	DebugLogId(string.format( "app %s status: %s",tmpstr,status ))
	local ret = 0
	if not string.find(status,"Success") then
		ret = 1
		local tmpstr  = string.format("dumpsys package %s | grep versionName ",pkgname)
		DebugLogId("app versionName :"..tmpstr)
	end
	return ret,status
end

function AppInstall(pkgpath,pkgname )	--pm安装
	local tmpstr = string.format("pm install -r %s",pkgpath)
	local logs = _cfunc.Command(tmpstr,180)
	local ret = -1
	local sclock = GetAPI_OsClock()
	DebugLogId(string.format('app install return log :\n%s 。',logs))
	if logs == "" then 
		DebugLogId(string.format('_cfunc.Command :%s return log is nil',tmpstr)) 
		logs = "Command not return log" 
	end
	while true do
		ret = CheckPKG( pkgname )
		if ret==0 then
			break 
		end
		if GetAPI_SubTime(GetAPI_OsClock(),sclock) > 180 then 	--180秒安装超时退出
			break
		end
	end
	if ret ~= 0 then
		ret = 1
	end
	return ret,logs
end

function AppInstall_commandd(pkgpath,pkgname)	--commandd 安装
	local tmpstr  = string.format("pm install %s",pkgpath)
	local sclock = GetAPI_OsClock()
	uu_cmd_bin( tmpstr )
	local ret = -1
	while true do
		ret = CheckPKG( pkgname )	--检查是否安装完成
		if ret==0 then
			break 
		end
		if GetAPI_SubTime(GetAPI_OsClock(),sclock) > 120 then 	--30秒安装超时退出
			DebugLogId(string.format('app install timeout(%ss)！',120))
			break
		else
			DebugLogId("监查安装过程是否存在权限弹框。。。")
		end	
	end
	return ret,"FAILED"
end

function StartAppUI(pkgname,appActivity)	--启动
	-- _cfunc.GetUserId()	--判断root
	local ret,pid,tmpstr
	local starttime = 0
	local sclock,rlog = 0,""
	if appActivity then
		tmpstr  = string.format("am start -n %s",appActivity)
		-- local tmpstr  = string.format("monkey -p %s 1",pkgname)
		-- aapt dump badging *.apk（apk文件的路径，可以直接拖拽）--查看apk包名
		-- adb shell dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp' --color=always 当前包名
		DebugLogId("app start mainUI :"..tmpstr)
		sclock = GetAPI_OsClock()
		rlog = _cfunc.Command(tmpstr)
	else
		DebugLogId("app start pkgname :"..pkgname)
		sclock = GetAPI_OsClock()
		rlog = _cfunc.OpenApplication(pkgname,'')		--启动app
		tmpret,pid,starttime = PidGrepPS(pkgname,sclock,30)	--通过pid进程检查是否启动完成
		if tmpret == 3 then									--启动失败，再次尝试启动
			tmpstr  = string.format("monkey -p %s -c android.intent.category.LAUNCHER 1",pkgname)
			sclock = GetAPI_OsClock()
			rlog = _cfunc.Command(tmpstr)
		end
	end
	DebugLogId("app start return :"..rlog)
	ret,pid,starttime = PidGrepPS(pkgname,sclock,60)	--通过pid进程检查是否启动完成
	DebugLogId(string.format('app start ret = %s；pid =%s；time = %s ',ret,pid,starttime))
	return ret,pid,starttime
end

function Insert_AppInfo(  installtime,appstarttime,pid,result,error_reason)	--形成info信息
	installtime = installtime or ""
	appstarttime = appstarttime or ""
	result = result or ""
	pid = pid or "-1"
	error_reason = error_reason or ""
	local starttime = os.date("%Y-%m-%d %H:%M:%S")
	local info = string.format('result="%s" installtime="%s" appstarttime="%s" starttime="%s" endtime="" hasloginevent="0" pid="%s" error_reason="%s" ',result,installtime,appstarttime,starttime,pid,error_reason)
	info = string.format('<resultinfo %s />',info)
	table.insert(G_JRResultXml, 3, info )
	DebugLogId("App info:"..info)
end

function APP_Deployment(pkgname,appActivity,pkgpath,bltime)	--app部署安装
	local sclock = GetAPI_OsClock()
	DebugLogId("App install start： "..pkgpath)
	-- local ret,log = appInstall_commandd( pkgpath,pkgname )	--安装，后台安装
	local stimer = os.date("%Y-%m-%d %H:%M:%S")
	local ret,log = AppInstall( pkgpath,pkgname )	--安装，直接安装
	local installtime = GetAPI_SubTime(GetAPI_OsClock(),sclock)	--安装时间
	DebugLogId(string.format('App install time :%s ret = %s',installtime,ret))
	if ret == 0 then
		local stimer = os.date("%Y-%m-%d %H:%M:%S")
		local ret,pid,appstarttime = StartAppUI( pkgname,appActivity )	--启动
		DebugLogId("App start time :"..appstarttime)
		if ret ~= 0 then 
			DebugLogId("App start failed exit test !.")
			local log = appActivity
			JRoneCapture( "app_start_failed" )
			if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
			Insert_AppInfo(installtime,appstarttime,pid,ret,log)	--info信息
			JRResult( "APPstart", stimer, "cmd", "app_start_failed", "false", "", "" )
			AppUnInstall( pkgname )	--启动失败，直接卸载，结束测试
		else
			DebugLogId("APP AUTO DEPLOYMENT COMPLETE ...")
			Method_PerformanceManager("start",pkgname)			--开启性能统计
			GetAPI_logcat('start',pkgname)
			Insert_AppInfo(installtime,appstarttime,pid)	--info信息
			if G_APPJRscript then
				DebugLogId("-------------------------------------自动拨测流程开始------------------------------------------")				
				status,err = pcall(MainFunction)	--运行uusnesemain
				DebugLogId("-------------------------------------自动拨测流程结束------------------------------------------")				
			elseif G_APPBLscript then
				status,err = pcall(APPTraveler,pkgname,bltime)	--运行bootstrap遍历
			elseif G_APPMonkey then
				status,err = pcall(APPMonkeyer,pkgname,bltime)	--运行 monkey 测试
			else
				DebugLogId("error TestInfo UnDefine , exit !!!")
				status,err = 1, "App TestInfo UnDefine"
			end
			DebugLogId("App Test Complete !")
		end
	else
		DebugLogId("App install failed exit test !")
		JRoneCapture("app_install_failed")
		if G_RSflag then VoucRecordScreen()	end			--错误视频凭证
		Insert_AppInfo(installtime,appstarttime,pid,ret,log)	--info信息
		JRResult( "install", stimer, "cmd", "app_install_failed", "false", "", "" )
	end
end

function HttpDownAPK(DownUrl)	--下载文件
	local host,url
	local i=string.find(DownUrl,"/")
	local header = 'User-Agent:Mozilla/5.0(Linux;U;Android 5.1.1, GT-I9108) Mobile\r\nAccpt: */*\r\nContent-Length: 0\r\nConnection: Close\r\n\r\n'
    host = string.match(DownUrl,'(%d+.%d+.%d+.%d+)')
	url = string.match(DownUrl,'%d+.%d+.%d+.%d+(.*)')
	local httpStr = string.format('GET %s HTTP/1.1\r\nHost: %s\r\n%s',url,host,header)
	local hosturl = port and string.format("%s:%s",host,port) or host
	DebugLogId("下载网址:"..DownUrl)
	DebugLogId("httpSendStr:\n"..httpStr)
	DebugLogId("hosturl\t"..hosturl)
	local Doret,r2,r3,r4,r5,r6,ret,r8,r9,r10,connect,r12=GetAPI_HttpClient(hosturl,httpStr)
	local DLName=os.date("%Y%m%d%H%M%S")
	local app_DbgPath = string.format("%s%s.apk",G_SysDbgPath,DLName)	--下载至结果目录
	if ret>0 then
		local lfile=io.open(app_DbgPath, "a")
		lfile:write(connect)
		lfile:close()
		DebugLogId("HTTP下载app成功: "..app_DbgPath)
		return 0,app_DbgPath
	else
		local idurl = string.format("info: %s 下载网址:%s",G_Id,DownUrl)
		_cfunc.Print(idurl)
		_cfunc.Print("httpSendStr:\n"..httpStr)
		_cfunc.Print("hosturl\t"..hosturl)
		_cfunc.Print("return value :\n")
		_cfunc.Print("return r1 :"..Doret)
		_cfunc.Print("return r2 :"..r2)
		_cfunc.Print("return r3 :"..r3)
		_cfunc.Print("return r4 :"..r4)
		_cfunc.Print("return r5 :"..r5)
		_cfunc.Print("return r6 :"..r6)
		_cfunc.Print("return r7 :"..ret)
		_cfunc.Print("return r8 :"..r8)
		_cfunc.Print("return r9 :"..r9)
		_cfunc.Print("return r10 :"..r10)
		_cfunc.Print("return r11 :"..connect)
		_cfunc.Print("return r12 :"..r12)
		local elog = {"开始","Dns","连接","发送","首包","下载","完成"}
		log = 'HTTP-->' .. elog[Doret+1]
		DebugLogId("HTTP下载app失败:("..Doret..')'..log)
		return 1,log
	end
end

function AppDownload(appUrlPath,md5Value)	--获取app
	local ret = -1
	local appPath = ""
	local pkgpath = appUrlPath	--安装文件目录
	if string.find(appUrlPath,"http:") then
	-- ret,appPath = httpDownAPK(pkgpath)	--下载
		local curlPathstr = cmd_exists("curl")==0 and "curl" or File_Exists("/data/local/tmp/curl-7.40.0/bin/curl") and "/data/local/tmp/curl-7.40.0/bin/curl"
		if curlPathstr then	
			DebugLogId(" ："..curlPathstr)
			local DLtime = 3 * 60	--app下载时间		-- local DLName=os.date("%Y%m%d%H%M%S")
			local app_DbgPath = string.format("%s%s.apk",G_SysDbgPath,md5Value)	--下载至结果目录
			for i = 1, 3 do
				if i == 2 then DLtime = DLtime + 2 * 60 end
				if i == 3 then DLtime = DLtime + 5 * 60 end
				_cfunc.Command(string.format( "am force-stop %s",curlPathstr ))
				_cfunc.KillProcess(curlPathstr)
				DebugLogId(string.format("下载app应用包(%ss)至:%s",DLtime,app_DbgPath))
				local cmddurl = string.format('%s -C - -o %s %s',curlPathstr,app_DbgPath,appUrlPath) -- -m/--max-time <seconds> 设置最大传输时间
				DebugLogId(" ："..cmddurl)
				local curllog = _cfunc.Command(cmddurl,DLtime+100)
				DebugLogId("curl return log：\n。"..curllog)
				ret, appDlog = MatchMD5(app_DbgPath,md5Value)	
				if ret == 0 then 
					break 
				end
				if ret == -1 then 
					DebugLogId(string.format("MD5 模块丢失或被校验文件异常，退出测试！！")) 
					break 
				end
				DebugLogId(string.format("app downLoad %ss timeout,Try for Longer minutes！",DLtime))
			end
			appPath = app_DbgPath
		else
			appPath = "下载失败：curl 模块丢失！"
			DebugLogId(appPath)
			ret = 1
		end
	else
		DebugLogId("本地调试app应用包，无需下载。")
		if File_Exists(appUrlPath) then
			ret = 0
			appPath = appUrlPath
		else 
			ret = 1
			DebugLogId("error 未发现app应用包："..appUrlPath)
		end
	end
	return ret,appPath
end

function cmd_exists(cmdd)
	local vlog = GetAPI_Command(cmdd)
	vlog = string.find(vlog, 'not') and 1 or 0
	return vlog
end

function File_Exists(path)	
	local file = io.open(path, "rb")
	if file then 
		file:close() 
		file = length_of_file(path) > 1 and file or nil 
	end
	return file ~= nil
end

function length_of_file(filename)
	local fh = assert(io.open(filename, "rb"))
	local len = assert(fh:seek("end"))
	fh:close()
	return len
end

function MatchMD5(appPath, md5Value)
	local ret = - 1
	local md5cmd =cmd_exists("md5sum")==0 and 'md5sum' or cmd_exists("md5")==0 and 'md5'
	if md5cmd and File_Exists(appPath) then
		--DebugLogId(string.format(" ：%s",md5cmd))
		local md5str = string.format("%s %s",md5cmd,appPath)
		local md5log = _cfunc.Command(md5str)
		local localmd5 = string.match(md5log, "(.-) ")
		-- local localmd5 = luaMd5(appPath)	
		if tostring(localmd5) ~= tostring(md5Value) then
			ret = 1
			appDlog = string.format("web md5: %s != local md5: %s",md5Value,localmd5)
		else
			ret = 0
		end
		DebugLogId(string.format(" web  md5: %s\t%s\n[2017/17/17 17:17:17.172 测试日志] local md5: %s", md5Value,appPath, md5log))
	else
		DebugLogId(string.format("md5模块丢失或文件%s不存在，无法进行检验",appPath))
	end
	return ret, appDlog
end

function Am_monitor ()
	local amcfunc = '/data/local/tmp/c/program/commandd /system/bin/am'
	local tmpstr  = string.format("%s am monitor > %s/activity.txt",amcfunc,G_SysDbgPath)
	DebugLogId("app activity monitor："..tmpstr)
	_cfunc.Command(tmpstr)
end

function JRoneCapture(picname) --兼容测试单步截图
	if G_APPscript ==1 and G_EngineMode=="Android" then 
		picname = picname or "shot"
		local imgPath = string.format("%simages/%s.jpg",G_SysDbgPath,picname)
		DebugLogId('截取凭证图:'..imgPath)
		_cfunc.CaptureAsJpg(imgPath,50)
	end
end

function GetAPI_logcat(flg,pkgname)					--logcat日志记录函数
	local ret=0
	local err
	local logcfunc = '/data/local/tmp/c/program/commandd /system/bin/logcat'
	local cmdd = ' logcat -v time -f '
	local logpath = DebugSCPath .. '/logcat.log'
	if G_APPscript == 1 then 
		if G_EngineMode ~= "IOS" then
			if flg=="start" then
				_cfunc.Command('/data/local/tmp/c/program/commandd /system/bin/logcat logcat -v time -f /sdcard/watchlog.txt')
				_cfunc.Command('/data/local/tmp/c/program/commandd /system/bin/logcat logcat -v long -f /sdcard/watchlog.log')
				DebugLogId("App Test,OpenWatchLogcat : "..pkgname)
				ret,err=pcall(L_OpenWatchLogcat,pkgname)
				if ret then
					DebugLogId("OpenWatchLogcat开启成功")
					local logcat_ret = _cfunc.Command("ps|grep logcat")
					DebugLogId('查看logcat进程：\n'..logcat_ret)
				else
					DebugLogId("OpenWatchLogcat开启失败:\t"..err)
				end
			else 
				DebugLogId("App Test,CloseWatchLogcat : "..pkgname) 
				ret,err=pcall(L_CloseWatchLogcat)
				if ret then
					DebugLogId("L_CloseWatchLogcat关闭成功")
				else
					DebugLogId("L_CloseWatchLogcat关闭失败:\t"..err)
				end
				GetAPI_KillProcess("logcat")
				local rlog = _cfunc.Command("ls -l /sdcard/ |grep watch")	
				DebugLogId("查看/sdcard/目录logcat文件列表：\n"..rlog)
			end
		else
			print("ios暂时不支持Logcat日志分析")
		end
	else
		if G_EngineMode == "Android" then
			local filePath = string.sub(G_SysDbgPath,1,-2)..G_Pflg..'logcat.log'
			if flg=="start" then
				local file = assert(io.open(filePath, "wb"));file:close();
				DebugLogId("开始logcat日志记录\t"..filePath)
				_cfunc.Command(logcfunc.." logcat -v time -f "..filePath)
			else
				GetAPI_KillProcess("logcat")
				DebugLogId("结束logcat日志记录··· "..filePath)
				_cfunc.Command("chmod 666 "..filePath)
			end
		else ret=-1 end	--ios不支持
	end
	return ret
end

function PidGrepPS(pkgname,sclock,timeout)	--检查进程
	local tmpstr  = string.format("ps|grep %s",pkgname)
	local ret,pid 
	local starttime
	--DebugLogId("Monitor permission box on the interface")
	sclock = sclock or GetAPI_OsClock()
	while true do
		local tmp_pidstr = _cfunc.Command(tmpstr)	--通过pid检查是否启动完成
		ret,pid=getPidString(tmp_pidstr,pkgname)		
		starttime = GetAPI_SubTime(GetAPI_OsClock(),sclock)
		if starttime > timeout then 	--启动超时退出
			ret = 3
			if timeout == 60 then
				DebugLogId(string.format('app start timeout(%ss)！',timeout))
			end
			break
		end	
		if ret == 0 then 
			break 
		end
	end			
	return ret,pid,starttime
end

function getPidString(str,pkgname)
	for pidstring in string.gmatch(str,'([^\n]*)[\n\r]') do
		--DebugLogId('查找的字符串：'..pidstring.." ***")
		for i in string.gmatch(pidstring,'([^ ]*)') do
			-- print(333333,j.."!!!!!")
			if i == pkgname then
				DebugLogId("app start pids :"..pidstring)
				local _,_,pid = string.find(pidstring,'( %d+)')		
				return 0,pid
			end
		end
	end
	return -1,-1
end

function APPMonkeyer( package,bltime )	--monkey测试
	local BLtime = tonumber(bltime)
	if package==nil or package=="" then 
		DebugLogId("error App遍历测试必须参数 packagename 缺失！") 
		return -1 
	end
	_cfunc.Command("am force-stop monkey")
	_cfunc.KillProcess("monkey")
	DebugLogId(string.format("monkey测试开始，时间：%smin\t-->\t%s",BLtime,package))

    local parmer = string.format("--pct-touch 70 --throttle 1000")
    -- parmer = string.format("%s --ignore-crashes --ignore-timeouts",parmer)	--异常则退出 0810
	local Monkeyer = string.format("monkey -p %s %s -v -v -v %s",package,parmer,BLtime*60)
	-- local logpath="/sdcard"    
	-- local logpath = string.sub(G_SysDbgPath,1,-2)..G_Pflg
	-- Monkeyer = string.format("%s 2>%s 1>%s",Monkeyer,logpath.."error.txt",logpath.."info.txt")	--不要日志0810
	local backRuner = '/data/local/tmp/c/program/commandd /system/bin/monkey'
	_cfunc.Command(string.format("%s %s",backRuner,Monkeyer))

	local sclock = GetAPI_OsClock()
	while true do
		local stimer = os.date("%Y-%m-%d %H:%M:%S")	--单步开始时间
		local picname = string.fotmat('shot_%s',os.date("%H%M%S",tonumber(stimer)))
		JRoneCapture(picname)
		JRResult( "monkey", stimer, "Event", picname, "true", "", "" )
		GetAPI_Sleep(1)
		local tmp_pidstr = _cfunc.Command('ps|grep monkey')	--通过pid检查是否启动完成
		if tmp_pidstr:match('monkey') then 
			local starttime = GetAPI_SubTime(GetAPI_OsClock(),sclock)
			if starttime > BLtime*60 then 	--启动超时退出
				DebugLogId(string.format('overtime stop monkey(%ss)！',BLtime))
				_cfunc.Command("am force-stop monkey")
				_cfunc.KillProcess("monkey")
				break
			end	
		else
			DebugLogId(string.format('ps monkey pid not found ！'))
			break 
		end	
		GetAPI_Sleep(0.8)
	end	
end

function APPTraveler(package,bltime)	--遍历测试app
	local BLtime = tonumber(bltime)
	local cshell = "uiautomator runtest UUBootstrap.jar -c io.appium.android.bootstrap.Bootstrap"
	if package==nil or package=="" then 
		DebugLogId("error App遍历测试必须参数 packagename 缺失！") 
		return -1 
	end
	-- package = "com.autosense"
	local parm = string.format("-e package %s -e isTraveler true -e output true -e timeout %s",package,BLtime*60*1000)
	local Traveler = string.format("%s %s", cshell, parm)
	_cfunc.Command("am force-stop uiautomator")
	_cfunc.KillProcess("uiautomator")
	local outtime = BLtime + 1
	--	DebugLogId("遍历测试开始，遍历时间：5min\t-->\t"..package)
	DebugLogId(string.format("遍历测试开始，遍历时间：%smin\t-->\t",BLtime)..package)
	local uiReturn = _cfunc.Command(Traveler,outtime*60)
	if string.find(uiReturn,"longMsg") then
		DebugLogId("error！error！error！\n"..string.match(uiReturn,"longMsg=(.-)\n"))
		DebugLogId("and make sure your UUBootstrap version is higher than 5.1.7 ")
		return 1
	else
		--DebugLogId("查看遍历返回日志：\n"..uiReturn)
		DebugLogId("遍历测试结束，过程日志记录：/mnt/sdcard/mobileSense/bootstrap_log.txt")
		local cstr = _cfunc.Command("ls /mnt/sdcard/mobileSense -l")
		DebugLogId("遍历测试结果生成文件列表：\n"..cstr)
		return 0
	end
end

function WriteJRVakueTable(DebugFlag)	--记录兼容测试结果
	local JRresultTb = G_JRResultXml
	DebugLogId("记录兼容测试结果。。.")
	local xmlInfo,retFlg
	for i,v in ipairs(JRresultTb) do
		if string.find(v,"<resultinfo") then xmlInfo = v end
		if string.find(v,"false") then retFlg = true end
	end
	if string.find(xmlInfo,' endtime=%"(.-)%"') then
		local s = os.date("%Y-%m-%d %H:%M:%S")
		local t = string.match(xmlInfo,' endtime=%b""')	--resultinfo endtime 
		xmlInfo = string.gsub(xmlInfo,t,string.format(' endtime="%s"',s))
	end
	--结果校验
	local t = string.match(xmlInfo,' result=%b""')	
    local resultRet = string.match(t,"%d") or ""
    if not string.match(t,"%d") then 
        resultRet = not retFlg  and "0" or "6"
    end

	if not upSelfScriptFlg then --非crash专项测试
		if File_Exists("/sdcard/crashlog.txt") then
			resultRet = "34"
			DebugLogId(string.format( '发现崩溃，进行结果校验：(%s >> result = "%s")。',t,resultRet ))
		elseif File_Exists("/sdcard/anrlog.txt") then --检查崩溃
			resultRet = "8"
			DebugLogId(string.format( '发现崩溃，进行结果校验：(%s >> result = "%s")。',t,resultRet ))
		elseif File_Exists("/data/anr/traces.txt")and not DebugFlag then
			local tmps = _cfunc.Command("cat /data/anr/traces.txt")
			DebugLogId(string.format( 'android traces ：\n%s',tmps ))
		end
	else
		if File_Exists("/data/anr/traces.txt")and not DebugFlag then
			local tmps = _cfunc.Command("cat /data/anr/traces.txt")
			DebugLogId(string.format( 'android traces ：\n%s',tmps ))
		end
	end

	--写入最终结果
	xmlInfo = string.gsub(xmlInfo,t,string.format(' result="%s"',resultRet))
	JRresultTb[3] = xmlInfo
	
	for i,v in ipairs(JRresultTb) do
		DebugLogId(v..'\n')
	end
	local JRresultPath  = string.format("%s/result.txt",G_SysDbgPath)
	if DebugFlag then 
		DebugLogId("测试结果保存")
		wrfile(JRresultPath,JRresultTb,"\n")		--写文件-gbk内容 utf-8头
		local JRlocalPath = G_SysDbgPath 		--本地目录
		local tmpfile = "/sdcard/crashlog.txt"
		if File_Exists(tmpfile) then
			local ret,err=pcall(CopyFile,tmpfile,JRlocalPath.."crash.txt")
			if not ret then DebugLogId(err) end
		end
		local tmpfile = "/sdcard/anrlog.txt"
		if File_Exists(tmpfile) then
			local ret,err=pcall(CopyFile,tmpfile,JRlocalPath.."crash.txt")
			if not ret then DebugLogId(err) end
		end
		local tmpfile = "/data/anr/traces.txt"
		if File_Exists(tmpfile) then
			local ret,err
			if not File_Exists("/sdcard/crashlog.txt") and not File_Exists("/sdcard/anrlog.txt") then 
				DebugLogId("traces 捕捉 --> anrlog")
				ret,err=pcall(CopyFile,tmpfile,JRlocalPath.."anrlog.txt")
			else
				ret,err=pcall(CopyFile,tmpfile,JRlocalPath.."traces.txt")
			end
			if not ret then DebugLogId(err) end
		end
		local str = _cfunc.Command(string.format("ls %s -l",JRlocalPath))
		DebugLogId("测试结果文件列表：\n"..str)
	else
		DebugLogId("测试结果保存开始...")
		getHeaderResult()	
		wrfile(JRresultPath,JRresultTb,"\n",'UTF8')	--写文件-utf8
		pkgJRresult(retFlg)	--复制、打包
	end
end

function getHeaderResult()	--记录头信息
	local ArguMentList = splittable(G_SysParms, "|")
	local cmtVenderCode = GetAPI_VenderCode()
	local cmtDevType = GetAPI_DevType()
	local cmtDevCode = GetAPI_DevCode()
	local cmtIP = GetAPI_DeviceIP()
	local CMPos = GetAPI_GPSInfo()
	local cmtMobileNum = GetAPI_MobileNum()
	local NetProxy = GetAPI_Proxy()		--网络接入方式
	local NetFlag = GetAPI_NetFlag()	--网络接入类型
	Businesses = Businesses or "未配置"
	Businesses = G_APPBLscript and _cfunc.Utf8ToGbk(Businesses) or Businesses
	if not Clientversion then Clientversion="UNKNOWN" end
	
	--组合头信息和指标，写入结果文件
	local ValueStr = cmtVenderCode .. "\t" .. cmtDevType .. "\t" .. cmtDevCode .. "\t" .. CMPos .. "\t" .. cmtIP .. "\t" .. cmtMobileNum .. "\t" .. ArguMentList[2] .. "|" .. ArguMentList[3] .. "\t" .. tostring(Businesses) .. "\t" .. Clientversion .. "\t" .. "NA" .. "\t" .. NetProxy .. "\t" .. NetFlag .. "\t" .. Edition
	DebugLogId("mob_头信息：  " .. ValueStr)
	local JRresult_HaderPath = string.format("%s%sresult.txt", string.sub(G_SysRstPath, 1, - 2), G_Pflg)
	DebugLogId("JRresult_HaderPath  " .. JRresult_HaderPath)
	wrfile(JRresult_HaderPath, ValueStr, "\n", 'UTF8')
end 

function GetAPI_Proxy()				--网络接入方式
	local netret
	if G_EngineMode=="IOS" then
		netret=""
	else
		local net=GetAPI_NetFlag()
		if net~="WIFI" then
			local NetInfo=GetAPI_NetworkInfo()	--运营商标识
			local Proxy=_cfunc.DevIsUseProxy()  --有代理( 1 ),无代理( 2 )
			Proxy=tonumber(Proxy)
			if tonumber(NetInfo)==46003 then	--中国电信CDMA
				if Proxy == 1 then
					netret ="CTWAP"
				elseif Proxy == 2 then
					netret ="CTNET"
				else
					DebugLogId("网络代理值："..netret)
					netret="UNKNOWN"
				end
			else
				if Proxy == 1 then
					netret ="CMWAP"
				elseif Proxy == 2 then
					netret ="CMNET"
				else
					DebugLogId("网络代理值："..netret)
					netret="UNKNOWN"
				end
			end
		else
			netret="LAN"
		end
	end
	return netret
end

function wrfile(scfile,txt,line,fmtcode)	--写文件
	local f = io.open(scfile,'wb')
	if type(txt) == 'table' then
		for i in pairs(txt) do
			if fmtcode then
				if fmtcode == "GBK" then
					txt[i] = _cfunc.Utf8ToGbk(txt[i])
				elseif fmtcode == "UTF8" then
					txt[i] = _cfunc.GbkToUtf8(txt[i])
				end
			end
			local t
			if i == #txt then 
				t = txt[i] 
			else
				t = line and txt[i]..line or txt[i]
			end
			f:write(t)
		end
	else
		f:write(txt..'\n')
	end
	f:close()
end

function pkgJRresult(retFlg)	--复制、压缩凭证文件到上传目录
	local JRResultpath=string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg	--上传目录
	local JRlocalPath = G_SysDbgPath 		--本地目录
	DebugLogId("检查测试结果目录：")
	copyResultFile("result.txt")
	pcall(CopyFile,'/sdcard/crashlog.txt',JRResultpath..'crashlog.txt')
	pcall(CopyFile,'/sdcard/anrlog.txt',JRResultpath..'anrlog.txt')
	pcall(CopyFile,'/data/anr/traces.txt',JRResultpath..'traces.txt')
	pcall(CopyFile,'/sdcard/watchlog.txt',JRResultpath..'log.txt')
	-- copyResultFile("crashlog.txt","/sdcard/",JRResultpath,"crash.txt")
	-- copyResultFile("anrlog.txt","/sdcard/",JRResultpath,"anr.txt")
	-- copyResultFile("traces.txt","/data/anr/")
	-- copyResultFile("watchlog.txt","/sdcard/",JRResultpath,"log.txt")
	copyResultFile("dump.xml")
	copyResultFile("signal.txt")
	-- if retFlg then 	--失败时上传	
	-- 	DebugLogId("压缩测试log...")
	-- 	GetAPI_Zip(JRlocalPath.."logcat.zip",JRlocalPath.."logcat.log|")	--autosense暂未提供该日志(ywl) 17.05.27pm14
	-- 	copyResultFile("logcat.zip") 
	-- end
	DebugLogId("保存步骤图凭证文件")
	local imgLocal = string.format("%simages%s",JRlocalPath,G_Pflg)
	DebugLogId("imgPath:"..imgLocal)
	copyImgFList( imgLocal,JRResultpath )	--复制图片文件夹至上传目录
	local rlog = _cfunc.Command(string.format("ls -l %s",JRResultpath))
	DebugLogId("查看上传目录文件列表：\n"..rlog)
	DebugLogId("测试结果保存完成...")
	copyResultFile("debug.txt")
	--DebugLogByFile("copy completed..")
end

function copyResultFile(filename,filePath,Resultpath,resultName)	--拷贝文件至上传目录
	-- DebugLogId("copyResultFile filename: "..filename)	
	local JRlocalPath = G_SysDbgPath 		--本地目录
	local JRResultpath=string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg	--上传目录
	filePath = filePath or JRlocalPath 
	Resultpath = Resultpath or JRResultpath
	resultName = resultName or filename
	if File_Exists(filePath ..filename) then
		DebugLogId(string.format("复制%s  %s >>>>> %s",filename,filePath ..filename,Resultpath..resultName))
		local ret,err=pcall(CopyFile,filePath ..filename,Resultpath..resultName) 
		if not ret then DebugLogId(err) end
	else
		DebugLogId(string.format("文件（%s）未发现；目录：%s",filename,filePath))
	end
end
function copyImgFList( imgLocal,JRResultpath )	--复制图片文件夹至上传目录
	local tmpImags = getPathFiles(imgLocal)
	local imgResult = string.format("%simages%s",JRResultpath,G_Pflg)
	for k,v in ipairs(tmpImags) do
		if v ~= "" then
			DebugLogId("Imags: "..v)
			copyResultFile(v,imgLocal,imgResult)
		end
	end
end

function getPathFiles (lpath)	--获取目录文件列表
	local filesTb = {}
	lpath = lpath or ' '
	local tmps = _cfunc.Command("ls "..lpath)
	local dumptb = splittable(tmps, "\n")
	if dumptb then
		for k,v in ipairs(dumptb) do
			table.insert(filesTb,v)
		end
	end
	return filesTb
end

function WriteBLValueTable(monkeyflg)	--记录遍历测试结果
	local JRresultTb = G_JRResultXml
	local resultInfo
	for i,v in ipairs(JRresultTb) do
		if string.find(v,"<resultinfo") then 
			resultInfo = v 
			break 
		end
	end
	-- DebugLogId("resultInfo:"..resultInfo)
	local m_installtime = string.match(resultInfo, ' installtime=%b""')
	local m_appstarttime = string.match(resultInfo, ' appstarttime=%b""')	
	local m_pid = string.match(resultInfo, ' pid=%b""')
	local m_result = string.match(resultInfo,' result=%b""')	
	
	local jrInfoResult = "/mnt/sdcard/mobileSense/result.xml"
	local JRlocalPath = G_SysDbgPath 		--本地目录
	local JRresultPath  = string.format("%s/result.txt",JRlocalPath)
	if File_Exists(jrInfoResult) then
		local blRstXmltb,installtime,appstarttime,pid,resultRet,i = getjrinfo(jrInfoResult)
		blRstXmltb[i] = Sgsub(blRstXmltb[i], installtime, m_installtime)
		blRstXmltb[i] = Sgsub(blRstXmltb[i], appstarttime, m_appstarttime)
		blRstXmltb[i] = Sgsub(blRstXmltb[i], pid, m_pid)
		-- DebugLogId("resultInfo:"..resultInfo)
		local errRet 
		if File_Exists("/sdcard/crashlog.txt") then
			errRet = "34"
			DebugLogId(string.format( '发现crash，进行结果矫正：(%s >> result = "%s")。',resultRet,errRet ))
		elseif File_Exists("/sdcard/anrlog.txt") then --检查崩溃
			errRet = "8"
			DebugLogId(string.format( '发现anr，进行结果矫正：(%s >> result = "%s")。',resultRet,errRet ))
		end
		if errRet then blRstXmltb[i] = Sgsub(blRstXmltb[i], resultRet, string.format(' result="%s"',errRet)) end
		DebugLogId("记录遍历测试结果:")
		for i,v in ipairs(blRstXmltb) do
			DebugLogId(_cfunc.Utf8ToGbk(v)..'\n')
		end
		wrfile(JRresultPath,blRstXmltb,"><")	--写文件
	else
		local cstr = _cfunc.Command("ls /mnt/sdcard/mobileSense -l")
		DebugLogId("遍历测试结果未生成：\n"..cstr)
		wrfile(JRresultPath,JRresultTb,"\n",'UTF8')	--写文件-utf8
	end
	pkgBLresult(retFlg)	--复制、压缩
end

function Sgsub(str,mstr,gstr)
	mstr = string.find(mstr, "%-") and string.gsub(mstr, "-", "%%-") or mstr
	return string.gsub(str,mstr,gstr)
end

function getjrinfo(fileResult)
	local installtime,appstarttime,pid,result
	local f = io.open(fileResult, 'rb')
	local file = f:read("*all")
	f:close()
	local blRsttb = splittable(file, "><")
	local resultInfo,infoi
	for i,v in ipairs(blRsttb) do
		if string.find(v,"resultinfo") then resultInfo=v infoi=i break end
	end
	installtime = string.match(resultInfo, ' installtime=%b""')
	appstarttime = string.match(resultInfo, ' appstarttime=%b""')	
	pid = string.match(resultInfo, ' pid=%b""')
	result = string.match(resultInfo, ' result=%b""')
	return blRsttb,installtime,appstarttime,pid,result,infoi
end

function pkgBLresult(retFlg)	--复制、压缩凭证文件到上传目录
	local JRResultpath=string.sub(G_SysRstPath,1,-2)..G_Pflg.."FILE"..G_Pflg	--上传目录
	local JRlocalPath = G_SysDbgPath 		--本地目录
	DebugLogId("检查遍历测试结果目录：")
	getHeaderResult()
	copyResultFile("result.txt")
	copyResultFile("debug.txt")
	copyResultFile("crashlog.txt","/sdcard/",JRResultpath,"crash.txt")
	copyResultFile("anrlog.txt","/sdcard/",JRResultpath,"anr.txt")
	copyResultFile("bootstrap_log.txt","/mnt/sdcard/mobileSense/")
	if File_Exists("/data/anr/traces.txt")and not DebugFlag then
		local tmps = _cfunc.Command("cat /data/anr/traces.txt")
		DebugLogId(string.format( 'android traces ：\n%s',tmps ))
	end
	copyResultFile("signal.txt")
	DebugLogId("保存步骤图凭证文件")
	local imgLocal = "/mnt/sdcard/mobileSense/images/"
	DebugLogId("imgPath:"..imgLocal)
	copyImgFList( imgLocal,JRResultpath )	--复制图片文件夹至上传目录
	--copyResultFile("watchlog.txt","/sdcard/",JRResultpath,"log.txt")
	pcall(CopyFile,'/sdcard/watchlog.txt',JRResultpath..'log.txt')
	local rlog = _cfunc.Command(string.format("ls -l %s",JRResultpath))
	DebugLogId("查看上传目录文件列表：\n"..rlog)
	DebugLogId("测试结果保存完成...")
end
LibEdt="3.0.8"

--##################公用操作相关函数####################
function Method_SendSMS_SIG(SPOrder,DestCode,FlowStep)				--信令方式发送短信函数
	local startclock= GetAPI_OsClock()
	local ret=0
	local i=1
	local j
	local DestCodelist
	----------------------------------------------------
	DestCodelist = splittable(DestCode,",")
	while i<=#DestCodelist do
		j=1
		while j<=10 do
			ret = GetAPI_SendSms(SPOrder,DestCodelist[i])
			DebugLogId("SendSMS-第"..j.."次,SPOrder="..SPOrder..",DestCode="..DestCodelist[i]..",ret="..ret)
			if (ret==0) then
				G_GlbVocMsg=GetGVM("发送(%s)至(%s)成功",{SPOrder,DestCode})
				break
			else
				G_GlbVocMsg=GetGVM("发送(%s)至(%s)失败",{SPOrder,DestCode})
			end
			j=j+1
		end
		i = i+1
	end
	----------------------------------------------------
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_RecvSMS_SIG(RecvCotent,TimeOut,FlowStep)				--信令方式接收短信函数
	local startclock
	local endclock
	local DelayTime
	local ret
	local retidx
	DebugLogId("开始接收短信,接收内容:"..RecvCotent..",接收时间:"..TimeOut)
	startclock = GetAPI_OsClock()
	----------------------------------------------------RecvCotent
	ret,retidx= GetAPI_RecvSms(TimeOut,RecvCotent,FlowStep)
	if FlowStep and FlowStep==1 then
		if ret== 0 then
			ret=1
		else
			ret=0
		end
	end
	if ret == 0 then
		DebugLogId("接收短信成功...")
		G_GlbVocMsg=GetGVM("***接收(%s)成功***\n",{RecvCotent})
	else
		DebugLogId("接收短信超时...")
		G_GlbVocMsg=GetGVM("***接收(%s)超时***\n",{RecvCotent})
	end
	----------------------------------------------------
	endclock = GetAPI_OsClock()
	DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,retidx
end

function Method_Wap_SIG(URL,URLImage,FlowStep)				--自动打开默认浏览器函数
	local startclock
	local ret
	local CompImgTab
	local TimeOut = G_timeOut
	local picidx=0
	DebugLogId("本次测试网址:"..URL)
	ret=GetAPI_OpenBrowser(URL)
	startclock = GetAPI_OsClock()
	if URLImage == "" then
		print ("No pic compare")
	elseif ret==0 then
		CompImgTab=splittable(URLImage,",")
		if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
			TimeOut=tonumber(CompImgTab[2])
		end
		ret,picidx=CheckActionResults(CompImgTab[1],TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_Reboot()			--重启Android设备
	if pcall(function()local file=io.open("/data/local/tmp/c/reboot.txt","r") file:close() end) then
		dofile('/data/local/tmp/c/reboot.txt')
		RebootTime=os.time(time)
		NowTime=os.time()
		if NowTime-tonumber(RebootTime)>tonumber(G_Reboot) then
			time='time={ year = '..tostring(os.date("%Y",NowTime))..',month = '..tostring(os.date("%m",NowTime))..',day = '..tostring(os.date("%d",NowTime))..',hour = '..tostring(os.date("%H",NowTime))..',min = '..tostring(os.date("%M",NowTime))..',sec = '..tostring(os.date("%S",NowTime))..' }'
			RebootFile=io.open("/data/local/tmp/c/reboot.txt",'w')
			RebootFile:write(time)
			RebootFile:close()
			_cfunc.Command("reboot")
		end
	else
		NowTime=os.time()
		time='time={ year = '..tostring(os.date("%Y",NowTime))..',month = '..tostring(os.date("%m",NowTime))..',day = '..tostring(os.date("%d",NowTime))..',hour = '..tostring(os.date("%H",NowTime))..',min = '..tostring(os.date("%M",NowTime))..',sec = '..tostring(os.date("%S",NowTime))..' }'
		RebootFile=io.open("/data/local/tmp/c/reboot.txt",'w')
		RebootFile:write(time)
		RebootFile:close()
		_cfunc.Command("reboot")
	end
end

function Method_OpenAPPEx(APPName,APPImage,FlowStep)				--自动打开APP函数
	local ret
	local CompImgTab
	local TimeOut = G_timeOut
	local picidx=0
	ret=GetAPI_Open_App(APPName)
	local startclock = GetAPI_OsClock()
	if APPImage == "" then
		print ("No pic compare")
	elseif ret==0 then
		CompImgTab=splittable(APPImage,",")
		if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
			TimeOut=tonumber(CompImgTab[2])
		end
		ret,picidx=CheckActionResults(CompImgTab[1],TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_Touchs(strCommand,strCommandImg,TimeOut)				--多功能操作比图主函数
	local picidx=0
	local ret
	local startclock = GetAPI_OsClock()
	ret = Method_TouchsPub(strCommand)
	if ret == 0 then
		ret,picidx = Method_TouchsEx(strCommand,strCommandImg,TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = ret==0 and GetAPI_SubTime(endclock,startclock) or TimeOut
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_Touchs_Rate(strCommand,strCommandImg,FileSize)				--多功能速率测试主函数
	local parmCommandImg
	local picidx,parmTab
	local parmTimeOut = G_timeOut
	local ResultContent=0
	parmTab=splittable(strCommandImg,",")
	parmCommandImg=parmTab[1]
	if parmTab[2] and tonumber(parmTab[2]) then                   --获取图片比对超时时间，默认为60秒
		parmTimeOut=tonumber(parmTab[2])
	end
	local startclock = GetAPI_OsClock()
	ret = Method_TouchsPub(strCommand)
	if ret == 0 then
		ret,picidx = Method_TouchsEx(strCommand,parmCommandImg,parmTimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	FileSize=tonumber(FileSize)
	if G_Imgtime and G_first_time then
		G_Imgtime = G_Imgtime + G_first_time
	elseif G_first_time then
		G_Imgtime = G_first_time
	end
	if G_Imgtime then
		DelayTime=DelayTime-G_Imgtime
	end
	if ret==0 then
		ResultContent=DecPoint(FileSize/DelayTime)          --'KB/S'
	end
--~ 	if (picidx ==0 and strCommandImg~="" ) then
--~ 		ret = 1
--~ 	else
--~ 		ret = 0
--~ 		ResultContent=DecPoint(FileSize/DelayTime)          --'KB/S'
--~ 	end
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	table.insert(ResultTable,ResultContent)
	table.insert(ResultTable,FileSize)
	table.insert(ResultTable,"rate")
	return ret,ResultTable,picidx
end

function Method_TouchsPub(strCommand)
	local ret = 0
	local first_time = 0
	if G_click_view == true then
		G_click_coor = false
		G_ActionElement = "对象"
		ret,first_time=Method_ClickPubEx(strCommand)
	else
		G_click_coor = true
		first_time = Method_TouchsPubEx(strCommand)
		DebugLogId("动作耗时："..first_time)
	end
	G_first_time = first_time
	return ret,first_time
end

function Method_TouchsPubEx(strCommand)
	local keyflag
	local dwait,twait
	local dbtflag=false
	local cmdtb
	local docount,movtime
	local touchax,touchay,touchbx,touchby,touchcx,touchcy,touchdx,touchdy
	local res_x=0
	local res_y=0
	local start_clock = GetAPI_OsClock()
	local end_clock = start_clock
	local first_time = 0
	local first_twait = 0
	if G_FTouchFlag then
		res_x=G_res_x
		res_y=G_res_y
	end
	strCommand = string.gsub(strCommand," ","")   ---清空格
	strCommand = string.upper(strCommand)    ---转成大写
	commandlist = splittable(strCommand,"|")
	if #commandlist==1 and commandlist[1]=="" then
		commandlist={}
	end
	for name,value in pairs(commandlist) do
		dwait=5                                  --默认按下时长5秒
		twait=2                                  --默认动作等待2秒
		if string.match(value,"-DBT") then
			cmdtb=splittable(value,"-D")
			value=cmdtb[1]
			dbtflag=true
		end
		if string.sub(value,1,1)=="<" then
			keyflag=3
		elseif string.sub(value,1,1)=="(" then
			if string.match(value,"-DBM") then
				cmdtb=splittable(value,"-D")
				value=cmdtb[1]
				keyflag=5
			else
				keyflag=4
			end
		else
			if tonumber(string.sub(value,1,1)) or (string.sub(value,1,1)=="-" and tonumber(string.sub(value,2,2))) then
				keyflag=2
			else
				keyflag=1
			end
		end
		touchs = splittable(value,",")
		docount = 1
		movtime = 1
		if keyflag==1 then				--按键
			keyvalue = touchs[1]
			twait = tonumber(touchs[2])
			docount = tonumber(touchs[3])
		elseif keyflag==2 then				--触屏
			touchx = tonumber(touchs[1])+res_x
			touchy = tonumber(touchs[2])+res_y
			twait = tonumber(touchs[3])
			docount = tonumber(touchs[4])
		elseif keyflag==3 then	 --<11,22>,<11,22,3>,<11,22,3,2>,<11,22,3,2,1>		长按
			touchx = tonumber(string.sub(touchs[1],2,-1))+res_x
			touchy = tonumber(string.sub(string.gsub(touchs[2],">",""),1,-1))+res_y
			if touchs[3] then
				dwait = tonumber(string.sub(string.gsub(touchs[3],">",""),1,-1))
			end
			if touchs[4] then
				twait = tonumber(string.sub(string.gsub(touchs[4],">",""),1,-1))
			end
			if touchs[5] then
				docount = tonumber(string.sub(string.gsub(touchs[5],">",""),1,-1))
			end
		elseif keyflag==4 then	--(11,22,33,44,3,2,1)		滑屏
			touchax = tonumber(string.sub(touchs[1],2,-1))+res_x
			touchay = tonumber(touchs[2])+res_y
			touchbx = tonumber(touchs[3])+res_x
			touchby = tonumber(string.sub(string.gsub(touchs[4],"%)",""),1,-1))+res_y
			if touchs[5] then
				movtime = tonumber(string.sub(string.gsub(touchs[5],"%)",""),1,-1))
			end
			if touchs[6] then
				twait = tonumber(string.sub(string.gsub(touchs[6],"%)",""),1,-1))
			end
			if touchs[7] then
				docount = tonumber(string.sub(string.gsub(touchs[7],"%)",""),1,-1))
			end
		else				--双向滑屏
			touchax = tonumber(string.sub(touchs[1],2,-1))+res_x
			touchay = tonumber(touchs[2])+res_y
			touchbx = tonumber(touchs[3])+res_x
			touchby = tonumber(touchs[4])+res_y
			touchcx = tonumber(touchs[5])+res_x
			touchby = tonumber(touchs[6])+res_y
			touchdx = tonumber(touchs[7])+res_x
			touchdy = tonumber(string.sub(string.gsub(touchs[8],"%)",""),1,-1))+res_y
			if touchs[9] then
				twait = tonumber(string.sub(string.gsub(touchs[9],"%)",""),1,-1))
			end
			if touchs[10] then
				docount = tonumber(string.sub(string.gsub(touchs[10],"%)",""),1,-1))
			end
		end
		twait = twait or 2
		docount = docount or 1
		dwait = dwait or 5
		movtime = movtime or 1
		if keyflag==1 then
			-- while docount>0 do
			for i=1,docount do
				DebugLogId("new keyvalue="..keyvalue)
				GetAPI_Key(keyvalue,3,twait)  				 --按键
				if i == 1 then
					end_clock = GetAPI_OsClock()
					first_twait = twait
				end
				G_position1 = keyvalue
				-- docount=docount-1
			end
		elseif keyflag==2 then
			-- while docount>0 do
			for i=1,docount do
				if dbtflag then
					DebugLogId("new dbtouchx="..touchx..",touchy="..touchy)
					GetAPI_Touch(touchx,touchy,3,0.2)		--双击
					GetAPI_Touch(touchx,touchy,3,twait)
					dbtflag=false
				else
					DebugLogId("new touchx="..touchx..",touchy="..touchy)
					GetAPI_Touch(touchx,touchy,3,twait)     --点坐标
				end
				if i == 1 and name == 1 then
					end_clock = GetAPI_OsClock()
					first_twait = twait
				end
				G_position1 = string.format("%s,%s",touchx,touchy)
				-- docount=docount-1
			end
		elseif keyflag==3 then
			-- while docount>0 do
			for i=1,docount do
				DebugLogId("new long touchx="..touchx..",touchy="..touchy..",dwait="..dwait)
				GetAPI_Touch(touchx,touchy,1,dwait)        					--长按
				GetAPI_Touch(touchx,touchy,2,twait)        					--长按
				if i == 1 and name == 1 then
					end_clock = GetAPI_OsClock()
					first_twait = twait
				end
				G_position1 = string.format("%s,%s",touchx,touchy)
				-- docount=docount-1
			end
		elseif keyflag==4 then
			-- while docount>0 do
			for i=1,docount do
				GetAPI_Move(touchax,touchay,touchbx,touchby,twait)         --滑屏
				if i == 1 and name == 1 then
					end_clock = GetAPI_OsClock()
					first_twait = twait
				end
				G_position1 = string.format("%s,%s",touchax,touchay)
				G_position2 = string.format("%s,%s",touchbx,touchby)	
				-- docount=docount-1
			end
		else
			-- while docount>0 do
			for i=1,docount do
				DebugLogId("new toucha="..touchax..","..touchay..",touchb="..touchbx..","..touchby)
				DebugLogId("new touchc="..touchcx..","..touchcy..",touchd="..touchdx..","..touchdy)
				GetAPI_DoubleMove(touchax,touchay,touchbx,touchby,touchcx,touchcy,touchdx,touchdy,twait)         --双滑屏
				if i == 1 and name == 1 then
					end_clock = GetAPI_OsClock()
					first_twait = twait
				end
				-- docount=docount-1
			end
		end
		if name == 1 then
			if end_clock ~= start_clock then
				first_time = GetAPI_SubTime(end_clock,start_clock) - tonumber(first_twait)
			end
		end
		DebugLogId("首次点击耗时（不包含等待时间）："..first_time)
	end
	return first_time
end

function Method_ClickPubEx(strCommand)
	local view_tab = splittable(strCommand,"|")				--view_tab:{"desc='男生 Link',0","desc='男生 Link',0"}
	local start_time = GetAPI_OsClock()
	local time_first = 0
	local touch_time_first = 0
	for i =1,#view_tab do
		local ret,str_command=GetAPI_getCoordinate(view_tab[i])
		if i == 1 then
			local end_time = GetAPI_OsClock()
			time_first = GetAPI_SubTime(end_time,start_time)
			DebugLogId('第一次操作前查找坐标耗时：'..time_first)
			if ret ~= -1 then
				touch_time_first = Method_TouchsPubEx(str_command)
			else
				DebugLogId("未查询到需要操作的控件。")
				return -1,0
			end
			time_first = time_first + touch_time_first
		else
			if ret ~= -1 then
				Method_TouchsPubEx(str_command)
			else
				DebugLogId("未查询到需要操作的控件。")
				return -1,0
			end
		end
	end
	return 0,time_first
end

function Method_TouchsEx(strCommand,strCommandImg,TimeOut)          --多功能操作比图处理函数
	local ret,picidx
	-- Method_TouchsPub(strCommand)
	if strCommandImg == "" then
		ret=0
		picidx=0
	else
		ret,picidx=CheckActionResults(strCommandImg,TimeOut)
	end
	return ret,picidx
end

function Method_clickEx(strCommandImg,TimeOut,conflag)
	local ret,picidx
	if strCommandImg == '' then
		return 0,0
	else
		ret,view= Dump_wait(strCommandImg,TimeOut,conflag)
		if ret ~=-1 then
			return 0,ret
		end
	end
	return 1,0
end

function Method_getviewEx(strCommandImg,TimeOut)
	local ret,picidx,view_str
	if strCommandImg == '' then
		return 0,0,''
	else
		ret,view_str = Dump_get_view(strCommandImg,TimeOut)
		if ret ~=-1 then
			view_str = _cfunc.Utf8ToGbk(view_str)
			if view_str:find('短信随机码') or view_str:find('验证码') then 
				DebugLogId(string.format("发现验证码信息：%s",view_str:match('(%d+)')))
				G_Captcha = view_str:match('(%d+)')
			end
			return 0,ret,view_str
		end
	end
	return 1,0,''
end

function Method_TouchsCross(strCommand,strCommandImg,TimeOut,paraflag1)				--多功能操作比图循环主函数
	local startclock = GetAPI_OsClock()
	local picidx=0
	local ret
	picidx=Method_TouchsCrossEx(strCommand,strCommandImg,TimeOut,paraflag1)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	if (picidx ==0 and strCommandImg~="" ) then
		ret=1
	else
		ret=0
	end
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_TouchsCrossEx(strCommand,strCommandImg,TimeOut,paraflag1)				--多功能操作比图循环处理函数
	local picidx
	local cmdtb
	local exitcommandflag
	local waitstartclock,waitendclock
	local onecetime
	if paraflag1 and paraflag1~="" and tonumber(paraflag1) then
		onecetime=tonumber(paraflag1)
	else
		onecetime=6
	end
	waitstartclock= GetAPI_OsClock()
	while 1 do
		picidx=0
		waitendclock = GetAPI_OsClock()
		if GetAPI_SubTime(waitendclock,waitstartclock) >= TimeOut then
			break   ---超时时间到了
		end
		ret = Method_TouchsPub(strCommand)
		if ret == 0 then
			if strCommandImg == "" then
				picidx=0
				break
			else
				ret,picidx=CheckActionResults(strCommandImg,onecetime)
				if ret==0 then
					break
				end
			end
		end
	end
	DebugLogId("picidx:"..picidx)
	return picidx
end

function Method_TouchsByBuffer(strCommand,strCommandImg,CompType,BuffType)				--多功能操作缓冲主函数
	local res,buffnum,bufftime,picidx,ret
	local parmTab,parmCommandImg
	local parmTimeOut = G_timeOut
	parmTab=splittable(strCommandImg,",")
	parmCommandImg=parmTab[1]
	if parmTab[2] and tonumber(parmTab[2]) then                   --获取图片比对超时时间，默认为60秒
		parmTimeOut=tonumber(parmTab[2])
	end
	local startclock = GetAPI_OsClock()
	res,buffnum,bufftime,picidx = Method_TouchsByBufferEx(strCommand,parmCommandImg,CompType,BuffType,parmTimeOut)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable={}
	if res then
		ret=0
	else
		ret=1
	end
	if BuffType==0 then
		table.insert(ResultTable,"auto")
		table.insert(ResultTable,DelayTime)
	else
		table.insert(ResultTable,"auto")
		table.insert(ResultTable,bufftime)
		table.insert(ResultTable,buffnum)
	end
	return ret,ResultTable,picidx
end

--CompType:<0，反向比对；>=0，正向比对
--BuffType:=0，图片比对；>0，缓冲
function Method_TouchsByBufferEx(strCommand,strCommandImg,CompType,BuffType,TimeOut)				--多功能操作缓冲处理函数
	local bufnum=0
	local buftime=0
	local buffflag=false
	local picflag=false
	local tmpnum=0
	local picidx=0
	ret = Method_TouchsPub(strCommand)
	if ret ~= 0 then
		return picflag,nil,nil,picidx
	end
	local hess,dtflag,touchstr
	local compimgres
	if strCommandImg == "" then
		picidx = 0
	else
		imglist = splittable(strCommandImg,"|")
		ostime=GetAPI_OsClock()
		while 1 do
			picidx = 0
			for imgname,imgvalue in pairs(imglist) do
				dtflag=false
				picidx = picidx + 1
				hess=string.find(imgvalue,"%(")
				if not hess then
					hess=string.find(imgvalue,"%<")
					if hess then
						dtflag=true
					end
				end
				if hess then                                 --在比对通过后需要做Touch动作
					touchstr=string.sub(imgvalue,hess+1,-2)
					imgvalue=string.sub(imgvalue,1,hess-1)
					touchs = splittable(touchstr," ")
					docount = 1
					for touchindex,touchname in pairs(touchs) do
						if touchindex == 1 then
							touchx = tonumber(touchname)    --xpos
						end
						if touchindex == 2 then
							touchy = tonumber(touchname)    --ypos
						end
						if touchindex == 3 then
							docount = tonumber(touchname)    --docount
						end
					end
				end
				ret = WaitEx(imgvalue,0.5)
				DebugLogId("比图结果(ret):"..ret)
				if CompType<0 then
					if ret==0 then
						compimgres="成功!"
						ret=1
					else
						compimgres="失败!"
						ret=0
					end
				end
				if ret==0 then
					break
				end
			end
			if (ret == 0) then
				tmpnum=tmpnum+1
				picflag = true
				if BuffType~=0 then
					if tmpnum==1 then                                 --从第一次检测到成功的时间计算，缓冲时间更精确
						bfstime=GetAPI_OsClock()
					end
					if tmpnum==2 then                                 --连续2次检测成功才确定为成功
						buffflag=true
						bufnum=bufnum+1
					end
					if tmpnum>=2 and hess then
						while docount>0 do
							if dtflag then
								GetAPI_Touch(touchx,touchy,3,0.2)
								GetAPI_Touch(touchx,touchy,3,0.2)
								DebugLogId("buff dbtouchx="..touchx..",buff dbtouchy="..touchy)
							else
								GetAPI_Touch(touchx,touchy,3,2)
								DebugLogId("buff touchx="..touchx..",buff touchy="..touchy)
							end
							docount=docount-1
						end
					end
				end
			else
				tmpnum=0
				if BuffType~=0 and buffflag then
					bfetime=GetAPI_OsClock()
					bfutime=GetAPI_SubTime(bfetime,bfstime)
					buftime=buftime+bfutime
					buffflag = false
				end
			end
			if BuffType==0 and picflag then
				break
			end
			GetAPI_Sleep(1)  ----delaytime
			oetime=GetAPI_OsClock()
			if GetAPI_SubTime(oetime,ostime)>TimeOut then
				break
			end
		end
	end

	if BuffType==0 then
		return picflag,nil,nil,picidx
	else
		return true,bufnum,buftime,picidx
	end
end

function Method_InputString(InputContent,InputImg,MobType)				--COPY方法主函数
	local picidx=0
	local ret=0
	local CompImgTab
	local TimeOut = G_timeOut
	DebugLogId("输入内容:"..InputContent)
	ret=GetAPI_InputString(InputContent)
	local startclock = GetAPI_OsClock()
	if InputImg == "" then
		print ("No pic compare")
	else
		CompImgTab=splittable(InputImg,",")
		if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
			TimeOut=tonumber(CompImgTab[2])
		end
		ret,picidx=CheckActionResults(CompImgTab[1],TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_Input(InputContent,InputImg,MobType)				--INPUT方法主函数
	local picidx=0
	local ret=0
	local CompImgTab
	local TimeOut = G_timeOut
	DebugLogId("输入内容:"..InputContent)
	ret=GetAPI_Input(InputContent,MobType)
	local startclock = GetAPI_OsClock()
	if InputImg == "" then
		print ("No pic compare")
	else
		CompImgTab=splittable(InputImg,",")
		if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
			TimeOut=tonumber(CompImgTab[2])
		end
		ret,picidx=CheckActionResults(CompImgTab[1],TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_KillProcess(process,times,FlowStep)				--杀进程方法主函数
	local ret=0
	local startclock = GetAPI_OsClock()
	Method_KillProcessEx(process,times)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_KillProcessEx(process,times)				--杀进程方法实现函数
	local processtab
	local timestab
	processtab=splittable(process,"|")
	timestab=splittable(times,",")
	if tonumber(timestab[1]) then
		timestab[1]=tonumber(timestab[1])
	else
		timestab[1]=1
	end
	if timestab[2] and tonumber(timestab[2]) then
		timestab[2]=tonumber(timestab[2])
	else
		timestab[2]=1
	end
	DebugLogId("杀进程次数:"..timestab[2])
	DebugLogId("间隔时间:"..timestab[1])
	DebugLogId("进程名:"..table.concat(processtab,"\r"))
	for j=1,timestab[2] do
		for i=1,#processtab do
			GetAPI_KillProcess(processtab[i])
		end
		GetAPI_Sleep(timestab[1])
	end
end

function Method_deleteString(times,imgs)				--删除输入框文字方法主函数
	local ret=0
	local picidx=0
	local CompImgTab
	local TimeOut = G_timeOut
	Method_deleteStringEX(times)
	local startclock = GetAPI_OsClock()
	if imgs == "" then
		print ("No pic compare")
	else
		CompImgTab=splittable(imgs,",")
		if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
			TimeOut=tonumber(CompImgTab[2])
		end
		ret,picidx=CheckActionResults(CompImgTab[1],TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_deleteStringEX(times)
	local timestab
	timestab=splittable(times,",")
	if timestab[1] and tonumber(timestab[1]) then
		timestab[1]=tonumber(timestab[1])
	else
		timestab[1]=1
	end
	DebugLogId("删除次数:"..timestab[1])
	GetAPI_deleteString(timestab[1])
end

----------------------------------------------------非常用方法库----------------------------------------------------
------------------------------------------------------------------------------------------------------------------
function Method_readinicyc(filepath)
	local ret=0
	local index=0
	local startclock = GetAPI_OsClock()
	local fx=io.open(filepath,"rb")
	if not fx then
		DebugLogId("输入的文件路径不正确或文件不存在，请脚本编写人员修改")
	end
	local element=fx:read("*all")
	fx:close()
	element=string.gsub(element,"\r","\n")
	element=string.gsub(element,"\n\n","\n")
	element=Strip(element).."\n"
	local a=Strip(string.sub(element,1,string.find(element,"\n")-1))
	local c=Strip(string.sub(element,string.find(element,"\n")+1,-1))
	local b=c.."\n"..a
	DebugLogId("文档首行内容："..a)
	G_INIContList=splittable(a,"\t")
	fv=io.open(filepath,"wb")
	fv:write(b)
	fv:close()
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,index
end

function Method_Interactive(strCommand,strCommandImg,TimeOut)
	local parmTimeOut = G_timeOut
	local parmCommandImg
	local picidx,parmTab,ret,times
	local ResultContent=0
	parmTab=splittable(strCommandImg,",")
	imei=parmTab[1]
	if parmTab[2] and tonumber(parmTab[2]) then                   --获取图片比对超时时间，默认为60秒
		parmTimeOut=tonumber(parmTab[2])
	end
	ret,times,picidx=Method_Interactiveex(strCommand,imei,parmTimeOut)
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,times)
	return ret,ResultTable,picidx
end

function Method_Interactiveex(strCommand,imei,parmTimeOut)
	local from_imei = GetAPI_DevCode()
	local to_imei = imei
	local ret,times,res,picidx=1,0,1,1
	local status
	status = GetApi_inter(from_imei,to_imei,'clear_status')
	if status=='1' then
		status = GetApi_inter(from_imei,from_imei,'set_status')
		if status=='1' then
			for i=1,parmTimeOut do
				status = GetApi_inter(from_imei,to_imei,'query_status')
				-- DebugLogId('1111111:'..status)
				if status=='1' then
					break
				end
				GetAPI_Sleep(1)
			end
			if status ~= '1' then
				status = GetApi_inter(to_imei,from_imei,'clear_status')
				status = GetApi_inter(from_imei,to_imei,'clear_status')
				return -1,0,0
			end
			res = Method_TouchsPub(strCommand)
			if res==0 then
				if status=='1' then
					status = GetApi_inter(from_imei,to_imei,'send_message')
					-- DebugLogId('2222222:'..status)
					if status=='1' then
						for i=1,parmTimeOut do
							status,r12 = GetApi_inter(from_imei,to_imei,'query_message')
							-- DebugLogId('33333333:')
							if status=='1' then
								_,_,times=string.find(r12,'"time":(%d.-)}')
								ret=0
								picidx=0
								break
							end
						end
						-- DebugLogId('44444444:'..times..'\t'..r12)
					end
				end
			end
		end
	end		
	status = GetApi_inter(to_imei,from_imei,'clear_status')
	status = GetApi_inter(from_imei,to_imei,'clear_status')
	return ret,times,picidx
end

function Method_Interactive_recv(strCommand,strCommandImg,imei)
	local parmTimeOut = G_timeOut
	local parmCommandImg
	local picidx,parmTab,ret
	local ResultContent=0
	parmTab=splittable(strCommandImg,",")
	parmCommandImg=parmTab[1]
	if parmTab[2] and tonumber(parmTab[2]) then                   --获取图片比对超时时间，默认为60秒
		parmTimeOut=tonumber(parmTab[2])
	end
	local to_imei = GetAPI_DevCode()
	local ret,res,picidx=1,1,1
	status = GetApi_inter(to_imei,to_imei,'clear_status')
	if status=='1' then
		status = GetApi_inter(to_imei,to_imei,'set_status')
		if status=='1' then
			local startclock = GetAPI_OsClock()
			ret,picidx = Method_TouchsEx('',parmCommandImg,parmTimeOut)
			local endclock = GetAPI_OsClock()
			local DelayTime = GetAPI_SubTime(endclock,startclock)
			if ret==0 then
				status = GetApi_inter(to_imei,to_imei,'receive_message')
				-- DebugLogId('接收状态：'..DelayTime..'\t'..status)
			end
		end
	end
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function sliceAndCopyImage(strCommandImg,paraflag1)
	local coor_tmp_source_tab = splittable(strCommandImg,"_")
	local x1_sr, y1_sr, x2_sr, y2_sr = tonumber(coor_tmp_source_tab[1]),tonumber(coor_tmp_source_tab[2]),tonumber(coor_tmp_source_tab[3]),tonumber(coor_tmp_source_tab[4])
	local img_name = ""
	local pic_name_str = ""
	for i = 5,#coor_tmp_source_tab do
		img_name = img_name .. "_" .. coor_tmp_source_tab[i]
	end
	local width_img = x2_sr - x1_sr
	local height_img = y2_sr - y1_sr
	local region_coor_tab = splittable(paraflag1,"_")
	local start_x, start_y, end_x, end_y = tonumber(region_coor_tab[1]),tonumber(region_coor_tab[2]),tonumber(region_coor_tab[3]),tonumber(region_coor_tab[4])
	local get_pic_start_x = start_x
	local get_pic_end_x = get_pic_start_x + width_img
	local pic_name_string = ""
	local pic_name_table
	local get_pic_start_y = start_y
	local get_pic_end_y = get_pic_start_y + height_img
	while get_pic_end_x < end_x do
		get_pic_start_y = start_y
		get_pic_end_y = get_pic_start_y + height_img
		while get_pic_end_y < end_y do
			pic_name = tostring(get_pic_start_x) .. "_" .. tostring(get_pic_end_x) .. "_" .. tostring(get_pic_start_y) .. "_" .. tostring(get_pic_end_y) .. img_name
			local cp_ret = pcall(CopyFile,G_SysScpPath..G_Pflg..strCommandImg,G_SysScpPath..G_Pflg..pic_name)
			if cp_ret then
				pic_name_str = pic_name_str .. pic_name .."-"
			end
			get_pic_start_y = get_pic_start_y + height_img
			get_pic_end_y = get_pic_start_y + height_img
		end
		if get_pic_end_y >= end_y then
			get_pic_end_y = end_y
			get_pic_start_y = get_pic_end_y - height_img
			pic_name = tostring(get_pic_start_x) .. "_" .. tostring(get_pic_end_x) .. "_" .. tostring(get_pic_start_y) .. "_" .. tostring(get_pic_end_y) .. img_name
			local cp_ret = pcall(CopyFile,G_SysScpPath..G_Pflg..strCommandImg,G_SysScpPath..G_Pflg..pic_name)
			if cp_ret then
				pic_name_str = pic_name_str .. pic_name .."-"
			end
		end
		get_pic_start_x = get_pic_start_x + width_img
		get_pic_end_x = get_pic_start_x + width_img
	end
	if get_pic_end_x >= end_x then
		get_pic_end_x = end_x
		get_pic_start_x = get_pic_end_x - width_img
		get_pic_start_y = start_y
		get_pic_end_y = get_pic_start_y + height_img
		while get_pic_end_y < end_y do
			pic_name = tostring(get_pic_start_x) .. "_" .. tostring(get_pic_end_x) .. "_" .. tostring(get_pic_start_y) .. "_" .. tostring(get_pic_end_y) .. img_name
			local cp_ret = pcall(CopyFile,G_SysScpPath..G_Pflg..strCommandImg,G_SysScpPath..G_Pflg..pic_name)
			if cp_ret then
				pic_name_str = pic_name_str .. pic_name .."-"
			end
			get_pic_start_y = get_pic_start_y + height_img
			get_pic_end_y = get_pic_start_y + height_img
		end
		if get_pic_end_y >= end_y then
			get_pic_end_y = end_y
			get_pic_start_y = get_pic_end_y - height_img
			pic_name = tostring(get_pic_start_x) .. "_" .. tostring(get_pic_end_x) .. "_" .. tostring(get_pic_start_y) .. "_" .. tostring(get_pic_end_y) .. img_name
			local cp_ret = pcall(CopyFile,G_SysScpPath..G_Pflg..strCommandImg,G_SysScpPath..G_Pflg..pic_name)
			if cp_ret then
				pic_name_str = pic_name_str .. pic_name .."-"
			end
		end
	end
	pic_name_str = string.sub(pic_name_str,1,-2)
	return pic_name_str
end

function Method_get_area(strCommand,strCommandImg,TimeOut)
	local picidx=0
	local ret = 0
	local startclock = GetAPI_OsClock()
	ret = Method_TouchsPub(strCommand)
	if ret == 0 then
		ret,picidx = Method_get_areaEx(strCommandImg,TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_get_areaEx(strCommandImg,TimeOut)
	local ret, picidx = 0, 0
	if strCommandImg == "" then
		ret = -1
	else
		ret = get_view_area(strCommandImg,TimeOut)
	end
	return ret,picidx
end

function get_view_area(strCommandImg,TimeOut)
	local ret = 0
	local ret,view = Dump_wait(strCommandImg,TimeOut)
	if ret ~= -1 then
		local tmp_coordinate_tab = {}
		local _,_,tmp_coordinate = string.find(view,'bounds="%[(.-)"')
		for i in string.gmatch(tmp_coordinate..'[','(.-)%]%[') do
			table.insert(tmp_coordinate_tab,i)
		end
		tmp_coordinate_tab[1] = splittable(tmp_coordinate_tab[1],',')
		tmp_coordinate_tab[2] = splittable(tmp_coordinate_tab[2],',')
		local width = tonumber(tmp_coordinate_tab[2][1]) - tonumber(tmp_coordinate_tab[1][1])
		local height = tonumber(tmp_coordinate_tab[2][2]) - tonumber(tmp_coordinate_tab[1][2])
		DebugLogId("获取的区域面积宽为："..width)
		DebugLogId("获取的区域面积长为："..height)
		G_area = width * height
		DebugLogId("获取的区域面积为："..G_area)
		ret = 0
	else
		G_area = 0
		DebugLogId("获取的区域面积失败")
	end
	return ret
end

function Method_judge(strCommand,strCommandimg,TimeOut)
	local picidx=0
	local ret = 0
	local rets,view
	local subtime
	local startclock = GetAPI_OsClock()
	if strCommand~="" then
		rets,view= Dump_wait(strCommand,TimeOut)
		if rets ~= -1 then					
			local checktime = cmrad_dump_time(view)
			subtime = tonumber(G_GetTime) - tonumber(checktime)
			DebugLogId("时间戳差TIME= "..subtime.."s")
		else
			ret = -1
		end
	end
	if ret == 0 then
		ret,picidx = judge_wait_ex(strCommandimg,subtime)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function cmrad_dump_time(view)
	local checktime
	local _,_,str1,str2 = string.find(view,'text="(.-) (.-)"')
	if str1 and str2 then
		local nowdata = os.date("%Y-%m-%d",os.time())	
		local data_tab = splittable(nowdata,"-")
		local year = data_tab[1]
		
		local month,day
		if str1 =='今天' then
			month = data_tab[2]
			day = data_tab[3]
		else
			local data_tmp_tab= splittable(str1,"-")
			month = data_tmp_tab[1]
			day = data_tmp_tab[2]
		end
		
		local time_tab = splittable(str2,":")
		local hour = time_tab[1]
		local min = time_tab[2]
		checktime = os.time({year=year,month=month,day=day,hour=hour,min=min})
		DebugLogId(string.format("获取控件中的时间：%d-%d-%d %d:%d",year,month,day,hour,min).."，转化成时间戳："..checktime)
	end
	return checktime
end

function Method_loop(times,flag)
	local picidx=0
	local ret = 0
	local startclock = GetAPI_OsClock()
	G_loop_flag = 0
	if flag == 1 and tonumber(times)>=1 then
		G_loop = tonumber(times)
		DebugLogId("开始循环测试，次数："..tostring(G_loop))
		G_loop_flag = 1
	elseif flag == 2 and G_loop then
		G_loop_flag = 2
		G_loop = G_loop - 1
		if G_loop == 0 then
			G_loop = nil
		end
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_break()
	local picidx=0
	local ret = 0
	local startclock = GetAPI_OsClock()
	DebugLogId("跳出循环")
	G_loop = nil
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_video_Playback(strCommand,strCommandImg,TimeOut,paraflag1)
	local picidx,ret,first_time,startclock=0,0,0,GetAPI_OsClock()
	local flag = 0
	local ret = 0
	if strCommand and strCommand~='' then
		ret,first_time=Method_TouchsPub(strCommand)
	end
	local capt_time
	if paraflag1 then
		flag = 2
	else
		flag = 1
	end
	if ret == 0 then
		if flag == 1 then
			capt_time = GetAPI_CaptureRectangle(G_SysScpPath..G_Pflg..strCommandImg)
			ret,picidx = CheckActionResults(strCommandImg,TimeOut,true)
		else
			if strCommandImg == "" then
				ret=0
				picidx=0
			else
				ret,picidx = CheckActionResults(strCommandImg,TimeOut)
			end
			local time_out = TimeOut - GetAPI_SubTime(GetAPI_OsClock(),startclock)
			GetAPI_CaptureRectangle(G_SysScpPath..G_Pflg..paraflag1)
			if ret == 0 then
				G_check_view = false
				ret,picidx = CheckActionResults(paraflag1,time_out,true)
			end
		end
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_energy(processname,flag)
	local startenergy,endenergy
	local energy=0
	local res
	local ret=-1
	uid = GetApi_GetUidByPackageName(processname)
	res=_cfunc.Command("dumpsys batterystats --unplugged "..processname)
	if flag==0 then
		DebugLogId("开始统计电量消耗")
		_,_,startenergy=string.find(res,"Uid *"..uid.." *: *(%d+%.%d+)")
		if startenergy then
			ret=0
			G_startenergy=startenergy
		else
			ret=0
			G_startenergy=0
		end
	else
		if G_startenergy then
			_,_,endenergy=string.find(res,"Uid *"..uid.." *: *(%d+%.%d+)")
			if endenergy then
				energy=tonumber(endenergy)-tonumber(G_startenergy)
				ret=0
				DebugLogId("结束统计电量消耗，本次测试app为<"..processname..">,共消耗"..tostring(energy).."mAh电量")
			else
				energy = 0
				ret = 0
				DebugLogId("结束统计电量消耗，本次测试app为<"..processname..">,共消耗"..tostring(energy).."mAh电量")
			end
		else
			DebugLogId("方法是用错误，请设定从什么步骤开始统计")
		end
	end
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,energy)
	return ret,ResultTable
end


function Method_Dns(DnsUrl,FlowStep)				--DNS测试主函数
	local ret,NowDns,DNStime,DNSIP
	local TempTime=os.date("%Y%m%d%H%M%S")
	local DNSFileName="DNS_"..TempTime..GetVoucTale(G_Id)
	local fl=io.open(string.sub(G_SysDbgPath,1,-2)..G_Pflg..DNSFileName..".txt","w")
	DebugLogId("本次DNS测试地址:"..DnsUrl)
	ret,NowDns,DNStime,DNSIP = Method_DnsEx(DnsUrl)
	fl:write("当前测试地址："..DnsUrl.."\t当前dns服务器地址："..NowDns..".\tDNS解析时间:"..DNStime.."ms\t测试目标的服务器ip地址："..DNSIP.."\n")
	fl:close()
	G_CMDNSVouc=DNSFileName..".zip"
	table.insert(G_DNSVouc,DNSFileName)
	local ResultTable = {}
	-- table.insert(ResultTable,"dns")
	table.insert(ResultTable,"auto")
	-- table.insert(ResultTable,NowDns)
	table.insert(ResultTable,DNStime)
	-- table.insert(ResultTable,DNSIP)
	return ret,ResultTable
end

function Method_DnsEx(DnsUrl)					--DNS测试处理函数
	local Dnstime,DnsIP,ret,NowDns
	local res=0
	NowDns=GetAPI_DnsIp()
	DebugLogId("当前DNS服务器地址:"..NowDns)
	if res==0 then
		Dnstime,DnsIP=GetAPI_DnsInfo(DnsUrl)
		DebugLogId("DNS时延:"..Dnstime..",DNS地址:"..DnsIP)
		if Dnstime >0 and string.find(DnsIP,".") then
			ret=0
		else
			G_GlbVocMsg=GetGVM("本次测试(DNS)失败,测试值:%s",{tostring(Dnstime)})
			ret=1
			Dnstime=0
			DnsIP="0.0.0.0"
		end
	else
		ret=1
		Dnstime=0
		DnsIP="0.0.0.0"
		G_GlbVocMsg=GetGVM("本次测试(DNS)失败,修改DNS地址失败...%s",{tostring(Dnstime)})
	end
	return ret,NowDns,Dnstime,DnsIP
end

function Method_Ping(PingUrl,pingtimes,pingvalue,FlowStep)				--PING测试函数
	local DelayTime,ResultContent,ActionValue
	local ret,res,resultvalue,ping_avgtime
	local TempTime=os.date("%Y%m%d%H%M%S")
	local PingFileName="ping_"..TempTime..GetVoucTale(G_Id)
	local fl=io.open(string.sub(G_SysDbgPath,1,-2)..G_Pflg..PingFileName..".txt","w")
	DebugLogId("本次PING测试地址:"..PingUrl..",测试次数:"..pingtimes..",PING包大小:"..pingvalue)
	res,resultvalue,ping_avgtime = GetAPI_PingInfo(PingUrl,pingtimes,pingvalue)
	DebugLogId("本次测试值:"..resultvalue..ping_avgtime)
	ret,DelayTime,ResultContent,ActionValue=CalVar(resultvalue)
	if ret~=0 then
		DelayTime = 0
		G_GlbVocMsg=GetGVM("本次测试(PING)失败,测试值:%s",{resultvalue})
		fl:write("0	0	0")
	else
		fl:write("当前ping地址目标："..PingUrl.."\ttime="..DelayTime.."ms\tttl="..ResultContent.."\tICMP="..ActionValue.."\n")
	end
	fl:close()
	G_CMPNVouc=PingFileName..".zip"
	table.insert(G_PNVouc,PingFileName)
	local ResultTable = {}
	-- table.insert(ResultTable,"ping")
	-- table.insert(ResultTable,DelayTime)
	-- table.insert(ResultTable,ResultContent)
	-- table.insert(ResultTable,ActionValue)
	table.insert(ResultTable,"ping")
	table.insert(ResultTable,ping_avgtime)
	return ret,ResultTable
end

function Method_TCP(Url,Dtimes,FlowStep)				--TCP建连测试函数
	local ret,r4
	ret,r2,r3,r4,r5,r6,r7,r8,r9,content,body,all = GetAPI_HttpVisit(Url)
	if G_EngineMode=="IOS" then
		r10=content
	else
		_,_,r10=string.find(content,"[Hh][Tt][Tt][Pp][/][^ ]*[ ]*(%w+)")
	end
	if ret==6 then
		ret=0
	else
		ret=1
	end
	DebugLogId("本次测试结果:"..ret..",连接时延:"..tostring(r4).."ms")
	if ret~=0 then
		r10=0
		G_GlbVocMsg=GetGVM("本次测试(DOWNH)失败,测试值:%s",{ret})
	end
	local ResultTable = {}
	table.insert(ResultTable,"tcp")
	table.insert(ResultTable,r4)
	return ret,ResultTable
end

function Method_HttpDownload(DownUrl,Dtimes,FlowStep)				--HTTP下载测试函数
	local ret,r4,r6,r7,r10
	ret,r4,r6,r7,r10=Method_HttpDownloadEx(DownUrl,Dtimes)
	local ResultTable = {}
	table.insert(ResultTable,"http")
	table.insert(ResultTable,r10)
	table.insert(ResultTable,r4)
	table.insert(ResultTable,r6)
	table.insert(ResultTable,r7)
	return ret,ResultTable
end

function Method_HttpDownloadEx(DownUrl,Dtimes)				--HTTP下载处理函数
	local k,i
	local HUrl,DUrl
	local ret
	local r3,r4,r6,r10,r7
	local content
	ret,r2,r3,r4,r5,r6,r7,r8,r9,content,body,all = GetAPI_HttpVisit(DownUrl)
	DebugLogId("返回的包体："..all)
	if G_EngineMode=="IOS" then
		r10=content
	else
		_,_,r10=string.find(content,"[Hh][Tt][Tt][Pp][/][^ ]*[ ]*(%w+)")
	end
	if ret==6 then
		ret=0
	else
		ret=1
	end
	DebugLogId("本次测试结果:"..ret..",连接时延:"..tostring(r4)..",首包时延:"..tostring(r6)..",下载时延:"..tostring(r7)..",返回码:"..tostring(r10))
	if ret~=0 then
		r10=0
		G_GlbVocMsg=GetGVM("本次测试(DOWNH)失败,测试值:%s",{ret})
	end
	return ret,r4,r6,r7,r10
end

function Method_Video(strCommand,strCommandImg,TimeOut,FlowStep)				--视频测试主函数
	local VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url
	local ret
	local LogName
	if strCommand~="" and strCommand then
		Method_Touchs(strCommand,"")
	end
	VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url=Method_VideoEX(strCommandImg,TimeOut)	
	if VId==-1 then
		ret=1
	else
		ret=0
	end
	if G_EngineMode=="Android" then
		if G_vm2time and G_vm2timeflag==false then
			LogName="vm2_"..tostring(os.date("%Y%m%d%H%M%S",G_vm2time))..".log"
		elseif G_vm2time and G_vm2timeflag==true then
			if pcall(function()local file=io.open("/data/data/com.autosense/files/vm2_"..tostring(os.date("%Y%m%d%H%M%S",G_vm2time))..".log","r") file:close() end) then
				LogName="vm2_"..tostring(os.date("%Y%m%d%H%M%S",G_vm2time))..".log"
			else
				LogName="vm2_"..tostring(os.date("%Y%m%d%H%M%S",G_vm2time-1))..".log"
			end
		end
		if ret==0 then
			if LogName then
				DebugLogId("删除文件：".."/data/data/com.autosense/files/"..LogName)
				GetAPI_Deletefile("/data/data/com.autosense/files/"..LogName)
				if pcall(function() local file=io.open("/system/xbin/busybox",'rb') file:close() end) then
					traceroute(VUrl)
				else
					DebugLogId("未安装busybox模块，请检查")
				end
			end
			-- if G_packetflag == true then
-- 				_cfunc.KillProcess("tcpdump")
-- 				G_packetflag=false
-- 				table.remove(G_packet,#G_packet)
-- 			end
		else
			if LogName then
				if pcall(function()local file=io.open("/data/data/com.autosense/files/vm2_"..tostring(os.date("%Y%m%d%H%M%S",G_vm2time))..".log","r") file:close() end) then
					DebugLogId("复制文件：/data/data/com.autosense/files/"..LogName.."到"..string.sub(G_SysDbgPath,1,-2)..G_Pflg..LogName)
					CopyFile("/data/data/com.autosense/files/"..LogName,string.sub(G_SysDbgPath,1,-2)..G_Pflg..LogName)
					DebugLogId("删除文件：".."/data/data/com.autosense/files/"..LogName)
					GetAPI_Deletefile("/data/data/com.autosense/files/"..LogName)
					G_vm2flag=LogName
					DebugLogId("日志名称："..G_vm2flag)
				end
			end
			-- if G_packetflag == true then
-- 				_cfunc.KillProcess("tcpdump")
-- 				G_packetflag=false
-- 			end
		end
	end
	local ResultTable={}
	table.insert(ResultTable,"video")
	table.insert(ResultTable,VId)
	table.insert(ResultTable,VDuration)
	table.insert(ResultTable,VUrl)
	table.insert(ResultTable,VConnectTime)
	table.insert(ResultTable,VFb)
	table.insert(ResultTable,Cnt)
	table.insert(ResultTable,bufftime)
	table.insert(ResultTable,VBT)
	table.insert(ResultTable,VDlt)
	table.insert(ResultTable,VDownloadRate)
	table.insert(ResultTable,VWH)
	table.insert(ResultTable,VbitRATE)
	table.insert(ResultTable,FFP)
	table.insert(ResultTable,packet_loss_rate)
	table.insert(ResultTable,M3u8url)
	return ret,ResultTable
end

function Method_VideoEX(strCommandImg,TimeOut)				--视频测试实现函数
	GetAPI_VM2_Video_Set_Play_Point()
	local endtime
	local vmtab={}
	local urllist={}
	local endflag=false
	local Vlist={}
	local VId,VDuration,VUrl,VBufferCnt,VBufferTime,VConnectTime,VFirstPKTTime,VDownloadTime,VDownloadRate,VFb,VBT,VDlt,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url
	local Cnt,ret,VWIDTH,VHIGH
	local cnttime
	local tmplist={}
	local bufftime=0
	local breakflag
	local startime=GetAPI_OsClock()
	local VBT=""
	local ret = 0
	local startclock=GetAPI_OsClock()
	local endclock,DelayTime,imgret,picidx
	if strCommandImg and strCommandImg ~= "" then
		startclock = GetAPI_OsClock()
		imgret,picidx = CheckActionResults(strCommandImg,30)
		DelayTime=0
		if imgret == 0 then
			while 1 do
				if DelayTime > 30 then
					ret=-1
					break
				else
					imgret=WaitEx(strCommandImg,0.2)
					endclock = GetAPI_OsClock()
					DelayTime = GetAPI_SubTime(endclock,startclock)
					if imgret~=0 then
						ret=0
						DelayTime=DelayTime-G_Imgtime
						break
					end
				end
			end
		else
			ret = -1
		end
	end
	if DelayTime then
		DebugLogId("比图首帧时间 ："..DelayTime)
	end
	if ret == -1 then
		return -1,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	end
	while 1 do
		endtime=GetAPI_OsClock()
		if GetAPI_SubTime(endtime,startime)>=tonumber(TimeOut) then
			DebugLogId("测试时间到,强制获取当前数据")
			GetAPI_VM2_Video_Force_Check()
			DebugLogId("强制取数据接口调用结束")
			while 1 do
				VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url=Info_Video()
				if VId>=0 then
					tmplist={VId,VDuration,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url}
					table.insert(vmtab,tmplist)
					table.insert(urllist,VUrl)
					GetAPI_VM2_Video_Reset(VId)
				else
					break
				end
			end
			break
		end
		VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url=Info_Video()
		if VId>=0 then
			tmplist={VId,VDuration,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url}
			table.insert(vmtab,tmplist)
			table.insert(urllist,VUrl)
			GetAPI_VM2_Video_Reset(VId)
		end
		GetAPI_Sleep(5)
	end
	local Vurllist={}
	local VDuration = 0
	local VDlt = 0
	local bufftime = 0
	local VDownloadRate = 0
	local VId,VConnectTime,VFb,Cnt,VBT,VWH,VbitRATE,FFP,M3u8url
	for i = 1,#vmtab do
		if tonumber(vmtab[i][12])~=0 and urllist[i]~="" then			--筛选出有VUrl和视频首帧的结果
			table.insert(Vlist,vmtab[i])
			table.insert(Vurllist,urllist[i])
		end
	end
	for i = 1,#Vlist do
		if i==1 then
			VDuration = Vlist[i][2]
			bufftime =Vlist[i][6]
			VDownloadRate = Vlist[i][9]
			VDlt = Vlist[i][8]
			FFP=tonumber(Vlist[i][12])
			M3u8url = Vlist[i][14]
		else
			VDuration = VDuration+Vlist[i][2]
			bufftime = bufftime+Vlist[i][6]
			VDownloadRate = (VDownloadRate*VDlt+Vlist[i][8]*Vlist[i][9])/(VDlt+Vlist[i][8])
			VDlt = VDlt+Vlist[i][8]
		end
		if not VUrl or VUrl=="" then
			VUrl=Vurllist[i]
		end
		if not VId then
			VId=Vlist[i][1]
		end
		if not Cnt then
			Cnt=tonumber(Vlist[i][5])
		else
			Cnt=Cnt+Vlist[i][5]
		end
		if not VConnectTime or tonumber(VConnectTime)==0 then
			VConnectTime=Vlist[i][3]
		end
		if not VFb or tonumber(VFb)==0 then
			VFb=Vlist[i][4]
		end
		if not VBT or VBT=="" then
			VBT=Vlist[i][7]
		else
			if Vlist[i][7]~="" then
				VBT=VBT..'/'..Vlist[i][7]
			end
		end
		if not VWH then
			VWH=Vlist[i][10]
		end
		if not VbitRATE or tonumber(VbitRATE)==0 then
			VbitRATE=Vlist[i][11]
		end
		if tonumber(FFP)==0 then
			FFP=Vlist[i][12]
		end
		if tonumber(Vlist[i][12])<tonumber(FFP) and tonumber(Vlist[i][12])~=0 then
			VConnectTime=Vlist[i][3]
			VFb=Vlist[i][4]
			FFP=Vlist[i][12]
		end
		if not M3u8url or M3u8url=="" then
			M3u8url = Vlist[i][14]
		end
	end

	if DelayTime then
		FFP=DelayTime
	end
	if  not Cnt or not VUrl or not VDownloadRate or not VConnectTime or tonumber(FFP)==0 or tonumber(FFP)>30 or tonumber(FFP)<0 then
		return -1,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	end
	VDownloadRate=DecPoint(VDownloadRate/1024)
	DebugLogId("视频长度："..tostring(VDuration).."s\t视频首帧播放时延："..FFP.."s\t视频连接时间："..VConnectTime.."ms")
	G_cnt = Cnt

	return VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate,M3u8url				--视频id，视频长度、视频地址、视频连接时间、视频首包时间、视频缓冲次数、视频缓冲总时间、视频每次缓冲时长、视频下载时间、视频下载速率、视频宽度*视频高度、视频码率、视频首帧播放时间、丢包率、M3u8文件服务器地址
end

function Info_Video()																--获取视频数据函数
	local VId,VDuration,VUrl,VBufferCnt,VBufferTime,VConnectTime,VFirstPKTTime,VDownloadTime,VDownloadRate,VFb,VDlt,VWH,VbitRATE,FFP,Cnt,ret,VWIDTH,VHIGH,_,M3u8url
	local VBT=""
	local bufftime=0
	_ = 0
	VId = GetAPI_VM2_Video_ID()
	DebugLogId("视频id："..VId)
	if VId>=0 then
		VDuration=tonumber(GetAPI_VM2_Video_Duration(VId))
		DebugLogId("视频长度："..VDuration)
		VWIDTH=GetAPI_VM2_Video_Width(VId)
		VHIGH=GetAPI_VM2_Video_Height(VId)
		VFb=tonumber(GetAPI_VM2_Video_First_PKT_Time(VId))
		VUrl=GetAPI_VM2_Video_URL(VId)
		DebugLogId("地址："..VUrl)
		VDownloadRate=tonumber(GetAPI_VM2_Video_DL_Rate(VId))
		VConnectTime=tonumber(GetAPI_VM2_Video_Connect_Time(VId))
		VDlt=tonumber(GetAPI_VM2_Video_DL_Time(VId))
		VbitRATE=tonumber(GetAPI_VM2_Video_Bitrate(VId))
		VWH=tostring(VWIDTH).."*"..tostring(VHIGH)
		FFP=tonumber(GetAPI_VM2_Video_Play_Time(VId))/1000
		VBufferCnt=GetAPI_VM2_Video_Buffer_Count(VId)
		DebugLogId("VM2首帧时间："..FFP)
		DebugLogId("首包时间："..VFb)
		status,M3u8url=pcall(GetAPI_VM2_Video_M3U8_Addr,VId)
		if status then DebugLogId("M3U8地址："..M3u8url) end
		if tonumber(VBufferCnt)>0 then
			VBT=""
			Cnt=VBufferCnt
			if Cnt==1 then
				VBT=""
				Cnt=0
			else
				for j=2,Cnt do
					cnttime=GetAPI_VM2_Video_Buffer_Time(VId,j-1)
					bufftime=bufftime+cnttime
					if VBT=="" then
						VBT=cnttime
					else
						VBT=VBT.."/"..cnttime
					end
				end
			end
			if Cnt~=0 then
				Cnt=Cnt-1
			end
		end
	end
	return VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,_,M3u8url
end

function Method_Video_sig(strCommand,strCommandImg,TimeOut,FlowStep)				--视频测试主函数
	local VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate
	local ret
	local LogName
	if strCommand~="" and strCommand then
		Method_Touchs(strCommand,"")
	end
	VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate=Method_VideoEX_sig(strCommandImg,TimeOut)
	if VId==-1 then
		ret=1
	else
		ret=0
	end
	-- GetAPI_KillProcess(strCommandImg)
	if G_EngineMode=="Android" then
		if pcall(function()local file=io.open("/data/data/com.autosense/files/"..string.gsub(strCommandImg,"%.","_")..".txt","rb") file:close() end) then
			CopyFile("/data/data/com.autosense/files/"..string.gsub(strCommandImg,"%.","_")..".txt",string.sub(G_SysDbgPath,1,-2)..G_Pflg..string.gsub(strCommandImg,"%.","_")..".txt")
			G_vm2flag_new = string.gsub(strCommandImg,"%.","_")..".txt"
		end
			-- if G_packetflag == true then
-- 				_cfunc.KillProcess("tcpdump")
-- 				G_packetflag=false
-- 				table.remove(G_packet,#G_packet)
-- 			end
	end
	local ResultTable={}
	table.insert(ResultTable,"video")
	table.insert(ResultTable,VId)
	table.insert(ResultTable,VDuration)
	table.insert(ResultTable,VUrl)
	table.insert(ResultTable,VConnectTime)
	table.insert(ResultTable,VFb)
	table.insert(ResultTable,Cnt)
	table.insert(ResultTable,bufftime)
	table.insert(ResultTable,VBT)
	table.insert(ResultTable,VDlt)
	table.insert(ResultTable,VDownloadRate)
	table.insert(ResultTable,VWH)
	table.insert(ResultTable,VbitRATE)
	table.insert(ResultTable,FFP)
	table.insert(ResultTable,packet_loss_rate)
	return ret,ResultTable
end

function Method_VideoEX_sig(strCommandImg,TimeOut)				--视频测试实现函数
	local start_touch_time=_cfunc.GetCurTime()
	local endtime
	local VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VWH,VbitRATE,FFP=0,0,0,0,0,0,0,0,0,0,0
	local packet_loss_rate = G_packet_loss_rate or '00.00'
	local VDlt = G_rateTime_url or 0
	local VDownloadRate = G_rate_url or 0
	local Cnt,ret,VWIDTH,VHIGH
	local cnttime
	local bufftime=0
	local breakflag
	local startime=GetAPI_OsClock()
	local VBT=""
	local ret = 0
	-- local startclock=GetAPI_OsClock()
	local endclock,DelayTime,imgret,picidx
	local ping_tab = {}
	DebugLogId("开始时间："..start_touch_time)
	-- if not G_ping_url or G_ping_url == '' then
-- 		G_ping_url = '3g.baidu.com'
-- 	end
	-- while 1 do
-- 		endtime=GetAPI_OsClock()
-- 		if GetAPI_SubTime(endtime,startime)>=tonumber(TimeOut) then
-- 			break
-- 		end
-- 		ret_ping,pvalue = GetAPI_Ping(G_ping_url,3,32)
-- 		local tmp_tab = splittable(ret_ping,',')
-- 		for i =1,#tmp_tab do
-- 			if tmp_tab[i] ~=''then
-- 				table.insert(ping_tab,tonumber(tmp_tab[i]))
-- 			end
-- 		end
-- 		local file_ping = io.open(string.sub(G_SysDbgPath,1,-2)..G_Pflg..'ping.txt','a')
-- 		file_ping:write(pvalue..'\r\n')
-- 		file_ping:close()
-- 		GetAPI_Sleep(5)
-- 	end
-- 	if ping_tab~={} then
-- 		ping_sum = 0
-- 		for i = 1,#ping_tab do
-- 			ping_sum = ping_sum+ping_tab[i]
-- 		end
-- 		packet_loss_rate = tostring(DecPoint((1-(ping_sum/#ping_tab))*100))
-- 	end

	endtime=GetAPI_OsClock()
	if GetAPI_SubTime(endtime,startime)<=tonumber(TimeOut) then
		local wait_time = tonumber(TimeOut)-GetAPI_SubTime(endtime,startime)
		DebugLogId("等待预设视频播放时间到，还需等待："..wait_time.."s")
		GetAPI_Sleep(wait_time)
		DebugLogId("等待时间到！")
	end
	local start_time_table,end_time_table,play_time_table = getVideoValueTable("/data/data/com.autosense/files/"..string.gsub(strCommandImg,"%.","_")..".txt",start_touch_time)
	Cnt = #end_time_table
	local start_number = 1
	-- if strCommandImg=="com.letv.android.client" then
-- 		start_number = 2
-- 	else
-- 		start_number = 1
-- 	end
	DebugLogId("开始表长度："..#start_time_table)
	DebugLogId("结束表长度："..#end_time_table)
	local cnt_reduce = 0
	for i = start_number,Cnt do
		local buff_time_once = 0
		if pcall(function() tonumber(end_time_table[i])end) and pcall(function() tonumber(start_time_table[i])end) then
			buff_time_once = (tonumber(end_time_table[i])-tonumber(start_time_table[i]))
		end
		bufftime = bufftime + buff_time_once
		if buff_time_once > 0 then
			if VBT == "" then
				VBT = tostring(buff_time_once).."-"..tostring(start_time_table[i]).."-"..tostring(end_time_table[i])
			else
				VBT = VBT .."/"..tostring(buff_time_once).."-"..tostring(start_time_table[i]).."-"..tostring(end_time_table[i])
			end
		else
			cnt_reduce = cnt_reduce+1
		end
	end
	if cnt_reduce >0 then
		Cnt = Cnt-cnt_reduce
	end
	if start_number ==2 then
		if Cnt == 1 then
			VBT = ""
			Cnt = 0
		end
		if Cnt~=0 then
			Cnt = Cnt - 1
		end
		if #end_time_table~=0 then
			FFP = (tonumber(end_time_table[1]) - start_touch_time)/1000
		else
			DebugLogId("无首帧记录，开始时间后无数据")
			return -1,0,0,0,0,0,0,0,0,0,0,0,0
		end
	else
		if #play_time_table ~= 0 then
			FFP = (tonumber(play_time_table[1]) - start_touch_time)/1000
		else
			DebugLogId("无首帧记录，开始时间后无数据")
			return -1,0,0,0,0,0,0,0,0,0,0,0,0
		end
	end
	if Cnt<0 then
		return -1,0,0,0,0,0,0,0,0,0,0,0,0
	end
	VDlt = VDlt * 1000
	G_cnt = Cnt
	DebugLogId("视频首帧播放时延："..FFP.."s\t缓冲次数："..Cnt.."\t缓冲总时长: "..bufftime.."ms")
	return VId,VDuration,VUrl,VConnectTime,VFb,Cnt,bufftime,VBT,VDlt,VDownloadRate,VWH,VbitRATE,FFP,packet_loss_rate
	--视频id，视频长度、视频地址、视频连接时间、视频首包时间、视频缓冲次数、视频缓冲总时间、视频每次缓冲时长、视频下载时间、视频下载速率、视频宽度*视频高度、视频码率、视频首帧播放时间、丢包率
end

function getVideoValueTable(path,start_time)
	-- DebugLogId('now in getVideoValueTable')
	local cmd = string.format("su -c 'chmod 777 %s'\nexit",path)
	_cfunc.Command(cmd)
	local ret,value = pcall(function() local file=io.open(path,'rb') value=file:read('*all') file:close() return Strip(value) end)
	if ret then
		local start_time_table = {}
		local end_time_table = {}
		local play_time_table = {}
		-- DebugLogId('file is exist')
		-- DebugLogId('value is :'..value)
		string.gsub(value, "buffering_start: ?(%d+)", function (w) if tonumber(w)>tonumber(start_time) then table.insert(start_time_table, w) end end)
		string.gsub(value, "buffering_end: ?(%d+)", function (w) if tonumber(w)>tonumber(start_time) then table.insert(end_time_table, w) end end)
		string.gsub(value, "play: ?(%d+)", function (w) if tonumber(w)>tonumber(start_time) then table.insert(play_time_table, w) end end)
		i=1
		while i <=#end_time_table do
			if start_time_table[i] then
				if tonumber(end_time_table[i])<tonumber(start_time_table[i]) then
					table.remove(end_time_table,i)
				else
					i=i+1
				end
			else
				table.remove(end_time_table,i)
			end
		end
		-- DebugLogId('getVideoValueTable is end  and those table length: '..#start_time_table..','..#end_time_table..','..#play_time_table)
		return start_time_table,end_time_table,play_time_table
	else
		DebugLogId("无视频相关txt文件")
		return {},{},{}
	end
end

function Method_receive(sock)
	local response,receive_status
	local list={}
	local timeout=15
	-- chunk,status= sock:receive(2048)
	local startclock= GetAPI_OsClock()
	local response,receive_status
	local list={}
	local timeout=15
	-- chunk,status= sock:receive(2048)
	local startclock= GetAPI_OsClock()
	while true do
		local endclock= GetAPI_OsClock()
		if GetAPI_SubTime(endclock,startclock)>timeout then
			break
		end
		-- recvt,sendt,status = socket.select({sock},nil,1)
		sock:settimeout(2,"b")
		response,receive_status = sock:receive("*l")
		if response then
			if response=="*#*#1234567890*#*#" then
				break
			else
				DebugLogId("response ："..response)
				response = string.gsub(response,"http://","")
				if string.sub(response,1,9)~="127.0.0.1" then
					table.insert(list,response)
				end
			end
		end
	end
	return list
end

function Method_WlanInfo(wifiName,FlowStep)				--获取指定wifi信息函数
	local ret,res
	local lfile
	local DelayTime=0
	local ResultContent,ActionValue,ResultDesc,AttachPath
	local filetab
	local XDtab={"2412","2417","2422","2427","2432","2437","2442","2447","2452","2457","2462","2467","2472"}
	res,lfile= Method_WlanInfoEx(wifiName)
	if res<0 then
		ret=1
		ResultContent=0
		ActionValue=0
	else
		filetab=splittable(lfile,",")
		DelayTime=filetab[4]
		ResultContent=filetab[2]
		ActionValue=filetab[3]
		ResultDesc = InTable(ActionValue,XDtab)
		if not ResultDesc then
			ResultDesc=0
		end
		AttachPath=95+tonumber(DelayTime)
		ret=0
	end
	local ResultTable = {}
	table.insert(ResultTable,"wifi")
	table.insert(ResultTable,wifiName)
	table.insert(ResultTable,ResultContent)
	table.insert(ResultTable,ActionValue)
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_WlanInfoEx(wifiName)				--获取指定wifi信息实现函数
	local lfile,res
	local infotab
	local i=1
	local ret=-1
	local j
	local breakflag
	for j=1,12 do
		res=GetAPI_ScanWlanInfo()
		if string.find(res,"|") then
			breakflag=true
			DebugLogId("获取WLAN结果:"..res)
			break
		end
		GetAPI_Sleep(5)
	end

	if breakflag then
		DebugLogId("匹配wifi名:"..wifiName)
		res=string.sub(res,1,-2)
		infotab=splittable(res,"|")
		while i<=#infotab do
			DebugLogId("匹配wifi信息:"..infotab[i])
			j=string.find(infotab[i],",")
			if string.sub(infotab[i],1,j-1)==wifiName then
				ret=0
				DebugLogId("匹配成功")
				lfile=infotab[i]
				break
			end
			i=i+1
		end
	else
		DebugLogId("获取WLAN结果:失败!一分钟内未获取到wifi信号...")
	end
	if ret==-1 then
		G_GlbVocMsg=GetGVM("本次测试(WLANINFO)失败,测试值:%s",{ret})
	end
	return ret,lfile
end

function Method_GetWlanInfo(FlowStep)				--获取wifi信息函数
	local ret
	local lfile
	local DelayTime=0
	local ResultDesc=0
	local wifiName="nil"
	local filetab
	local ResultContent=0
	local ActionValue=0
	local AttachPath=0
	for i=1,12 do
		ret= GetAPI_WifiCurrConnInfo()
		if ret~="" then
			break
		end
		GetAPI_Sleep(1)
	end
	DebugLogId("本次测试测试值为:"..ret)
	filetab=splittable(ret,"|")
	if #filetab<5 or filetab[4]=="-1" then
		ret=1
	else
		wifiName=filetab[1]
		DelayTime=filetab[5]
		ResultContent=filetab[2]
		ActionValue=filetab[3]
		ResultDesc = filetab[4]
		AttachPath=95+tonumber(DelayTime)
		ret=0
	end
	local ResultTable = {}
	table.insert(ResultTable,"wifi")
	table.insert(ResultTable,wifiName)
	table.insert(ResultTable,ResultContent)
	table.insert(ResultTable,AttachPath)
	table.insert(ResultTable,DelayTime)
	table.insert(ResultTable,ResultDesc)
	table.insert(ResultTable,ActionValue)
	return ret,ResultTable
end

function Method_ConnectWifi(wifiName,FlowStep)				--Wifi连接测试函数
	local ret,ip,res
	local DelayTime=0
	res,ip=Method_ConnectWifiEx(wifiName)
	if res<0 then
		G_GlbVocMsg=GetGVM("本次测试(ConnectWifi)失败,测试值:%s",{res})
		ret=1
	else
		DelayTime=res
		ret=0
	end
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_ConnectWifiEx(wifiName)				--wifi连接测试实现函数
	local ret
	local startclock,endclock
	local NowIp,NewIp
	local ip
	DebugLogId("开始断开已连接wifi...")
	for i=1,3 do
		GetAPI_Sleep(1)
		ret=GetAPI_WifiDisconnect()
	end
	if ret==0 then
		NowIp=GetAPI_DeviceIP()
		DebugLogId("断开已连接wifi成功,当前IP为:"..NowIp)
		startclock = GetAPI_OsClock()
		DebugLogId("开始连接wifi:"..wifiName)
		ret=GetAPI_WifiConnect(wifiName)
		DebugLogId("连接wifi-"..wifiName.."返回值:"..ret)
		if ret==0 then
			while 1 do
				local iptab
				NewIp=GetAPI_DeviceIP()
				endclock = GetAPI_OsClock()
				DebugLogId("当前IP:"..NewIp)
				if NewIp~=NowIp and #NewIp>=9 then
					ret=GetAPI_SubTime(endclock,startclock)
					ip=NewIp
					break
				end
				if GetAPI_SubTime(endclock,startclock)>=G_timeOut then	--获取wifi地址超时时间60秒
					ret=-1
					break
				end
				GetAPI_Sleep(0.25)
			end
		end
	end
	return ret,ip
end

function Method_CheckNet(simflg,netmode,TimeOut,FlowStep)				--获取当前网络类型主函数
	local ret,network,picidx
	local startclock = GetAPI_OsClock()
	ret,network,picidx = Method_CheckNetEx(simflg,netmode,TimeOut)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	-- if ret==1 then
-- 		G_GlbVocMsg=GetGVM("本次(CHECKNET)失败,当前网络为:%s...",{network})
-- 	end
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function GetCMD_NetFlag(nflg)				--网络类型
	local retnet
	if G_EngineMode=="IOS" then
		retnet="UNKNOWN"
	else
		retnet=_cfunc.Command("getprop gsm.network.type")
		local nettb=splittable(retnet,",")
		retnet = nettb[tonumber(nflg)]
	end
	return retnet
end
function Method_CheckNetEx(simflg,netmode,TimeOut)				--获取当前网络类型实现函数
	local ret=1
	local startt,endt
	local nownetwork,picidx
	local nettb={}
	startt=GetAPI_OsClock()
	DebugLogId("获取当前网络中...")
	while 1 do
		endt=GetAPI_OsClock()
		if GetAPI_SubTime(endt,startt) >=TimeOut then
			break
		end
		netmode = string.upper(netmode)
		if netmode:find('2G') or netmode:find('3G') or netmode:find('4G') or netmode:find('WIFI') or netmode:find('LAN') then
			nownetwork=GetAPI_NetFlag()
		else
			simflg = simflg or 1
			nownetwork=GetCMD_NetFlag(simflg)
		end
		if nownetwork~='UNKNOWN' then
			DebugLogId("当前网络为:"..nownetwork)
			break
		end
		GetAPI_Sleep(3)
	end
	nettb=splittable(netmode,"|")
	for idx,tarnet in pairs(nettb) do
		if string.upper(tarnet)==string.upper(nownetwork) then
			ret=0
			picidx=idx
			break
		end
	end
	return ret,nownetwork,picidx
end

function Method_svc_wifi(enable_flag)
	local ret,picidx = 0,0
	local startclock = GetAPI_OsClock()
	GetAPI_SvcWifi(enable_flag)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_CheckFile(filepath,flag)
	local index=0
	local ret
	local nowtype
	local tb={}
	local startclock = GetAPI_OsClock()
	ret=pcall(function()local file=io.open(filepath,"r") file:close() end)
	if ret then
		nowtype='Y'
		DebugLogId("文件<<"..filepath..">>存在。")
	else
		nowtype='N'
		DebugLogId("文件<<"..filepath..">>不存在。")
	end
	tb=splittable(flag,"|")
	for idx,tartype in pairs(tb) do
		if nowtype==tartype then
			index=idx
			break
		end
	end
	if index~=0 then
		ret=0
	else
		ret=-1
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,index
end

function Method_CaptureScreen()				--截图方法主函数
	local ret=0
	local startclock = GetAPI_OsClock()
	local picname=os.date("%Y%m%d%H%M%S")..".png"
	GetAPI_CaptureImg(G_SysDbgPath..G_Pflg..picname)
	table.insert(G_CaptureTab,picname)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_CapturePic(imgname)				--区域截图方法主函数
	local ret=0
	local startclock = GetAPI_OsClock()
	local resultflag
	local pic_exname
	local pic_path
	if imgname and imgname~='' then
		local TempTime=os.date("%Y%m%d%H%M%S")
		local TempIMGtable=splittable(imgname,'_')
		local imgName_tmp = ''
		for i = 1,#TempIMGtable do
			if i == 1 then
				imgName_tmp = TempIMGtable[i]
			else
				imgName_tmp = imgName_tmp..'_'..TempIMGtable[i]
			end
		end
		if G_EngineMode=="Android" then
			pic_exname = '_.bmp'
			pic_path = string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4]..pic_exname
			GetAPI_CaptureRectangle(string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4]..pic_exname)
		elseif G_EngineMode=="IOS" then
			pic_exname = '_.png'
			pic_path = '/var/mobile/ua_small.png'
			GetAPI_CaptureRectangle(string.sub(G_SysDbgPath,1,-2)..G_Pflg..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4]..pic_exname,TempIMGtable[1],TempIMGtable[2],TempIMGtable[3],TempIMGtable[4])
		end
		CopyFile(pic_path,string.sub(G_SysDbgPath,1,-2)..G_Pflg.."hzys_"..TempTime..GetVoucTale(G_Id).."_"..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_CapturePic"..pic_exname)
		CopyFile(pic_path,G_SysScpPath..G_Pflg..imgName_tmp)
		GetAPI_Deletefile(pic_path)
		G_CaptureImg="hzys_"..TempTime..GetVoucTale(G_Id).."_"..TempIMGtable[1]..'_'..TempIMGtable[2]..'_'..TempIMGtable[3]..'_'..TempIMGtable[4].."_CapturePic"..pic_exname
		resultflag="auto_capture"
	else
		local picname=os.date("%Y%m%d%H%M%S")..".png"
		GetAPI_CaptureImg(G_SysDbgPath..G_Pflg..picname)
		table.insert(G_CaptureTab,picname)
		resultflag="auto"
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,resultflag)
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end
--===============================================================================
--===============================================================================
XDBase64 = {}
local string = string

XDBase64.__code = {
	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
	'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
	'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
	'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/',
};
XDBase64.__decode = {}
for k, v in pairs(XDBase64.__code) do
	XDBase64.__decode[string.byte(v, 1)] = k - 1
end

function XDBase64.encode(text)
	local len = string.len(text)
	local left = len % 3
	len = len - left
	local res = {}
	local index = 1
	for i = 1, len, 3 do
		local a = string.byte(text, i)
		local b = string.byte(text, i + 1)
		local c = string.byte(text, i + 2)
		-- num = a<<16 + b<<8 + c  
		local num = a * 65536 + b * 256 + c
		for j = 1, 4 do
			--tmp = num >> ((4 -j) * 6)  
			local tmp = math.floor(num /(2 ^((4 - j) * 6)))
			--curPos = tmp&0x3f  
			local curPos = tmp % 64 + 1
			res[index] = XDBase64.__code[curPos]
			index = index + 1
		end
	end
	
	if left == 1 then
		XDBase64.__left1(res, index, text, len)
	elseif left == 2 then
		XDBase64.__left2(res, index, text, len)		
	end
	return table.concat(res)
end

function XDBase64.__left2(res, index, text, len)
	local num1 = string.byte(text, len + 1)
	num1 = num1 * 1024 --lshift 10   
	local num2 = string.byte(text, len + 2)
	num2 = num2 * 4 --lshift 2   
	local num = num1 + num2
	
	local tmp1 = math.floor(num / 4096) --rShift 12  
	local curPos = tmp1 % 64 + 1
	res[index] = XDBase64.__code[curPos]
	
	local tmp2 = math.floor(num / 64)
	curPos = tmp2 % 64 + 1
	res[index + 1] = XDBase64.__code[curPos]
	
	curPos = num % 64 + 1
	res[index + 2] = XDBase64.__code[curPos]
	
	res[index + 3] = "="
end

function XDBase64.__left1(res, index, text, len)
	local num = string.byte(text, len + 1)
	num = num * 16
	
	tmp = math.floor(num / 64)
	local curPos = tmp % 64 + 1
	res[index] = XDBase64.__code[curPos]
	
	curPos = num % 64 + 1
	res[index + 1] = XDBase64.__code[curPos]
	
	res[index + 2] = "="
	res[index + 3] = "="
end

function XDBase64.decode(text)
	local len = string.len(text)
	local left = 0
	if string.sub(text, len - 1) == "==" then
		left = 2
		len = len - 4
	elseif string.sub(text, len) == "=" then
		left = 1
		len = len - 4
	end
	
	local res = {}
	local index = 1
	local decode = XDBase64.__decode
	for i = 1, len, 4 do
		local a = decode[string.byte(text, i	)]
		local b = decode[string.byte(text, i + 1)]
		local c = decode[string.byte(text, i + 2)]
		local d = decode[string.byte(text, i + 3)]
		
		--num = a<<18 + b<<12 + c<<6 + d  
		local num = a * 262144 + b * 4096 + c * 64 + d
		
		local e = string.char(num % 256)
		num = math.floor(num / 256)
		local f = string.char(num % 256)
		num = math.floor(num / 256)
		res[index] = string.char(num % 256)
		res[index + 1] = f
		res[index + 2] = e
		index = index + 3
	end
	
	if left == 1 then
		XDBase64.__decodeLeft1(res, index, text, len)
	elseif left == 2 then
		XDBase64.__decodeLeft2(res, index, text, len)
	end
	return table.concat(res)
end

function XDBase64.__decodeLeft1(res, index, text, len)
	local decode = XDBase64.__decode
	local a = decode[string.byte(text, len + 1)]
	local b = decode[string.byte(text, len + 2)]
	local c = decode[string.byte(text, len + 3)]
	local num = a * 4096 + b * 64 + c
	
	local num1 = math.floor(num / 1024) % 256
	local num2 = math.floor(num / 4) % 256
	res[index] = string.char(num1)
	res[index + 1] = string.char(num2)
end
function XDBase64.__decodeLeft1(res, index, text, len)
	local decode = XDBase64.__decode
	local a = decode[string.byte(text, len + 1)]
	local b = decode[string.byte(text, len + 2)]
	local c = decode[string.byte(text, len + 3)]
	local num = a * 4096 + b * 64 + c
	
	local num1 = math.floor(num / 1024) % 256
	local num2 = math.floor(num / 4) % 256
	res[index] = string.char(num1)
	res[index + 1] = string.char(num2)
end
function XDBase64.urlEncode(s)
	s = string.gsub(s, "([^%w%.%- ])", function(c) return string.format("%%%02X", string.byte(c)) end)
	return string.gsub(s, " ", "+")
end
function XDBase64.urlDecode(s)
	s = string.gsub(s, '%%(%x%x)', function(h) return string.char(tonumber(h, 16)) end)
	return s
end

--===============================================================================
--===============================================================================
local function ocrpic_baidu(pathname)	--百度ocr识别
	local fileread = function(FileName)
		local ReadContent
		pcall(function() io.input(FileName) ReadContent = io.read("*a") io.close() end)
		return ReadContent
	end
	if not File_Exists(pathname) then return -1 end
	io.input(pathname)
	local readData = io.read("*a")
	io.close()
	os.execute('rm -r /data/local/tmp/ocrid.txt')
	local imgdata = XDBase64.encode(readData)
	local ocrurl = 'https://aip.baidubce.com/rest/2.0/ocr/v1/webimage?access_token=24.9b92a54d8d9892466d85ca9d26116360.2592000.1535181261.282335-11420071'
	local ocrbody = XDBase64.urlEncode(imgdata)
	local curlstr = string.format('/data/local/tmp/curl-7.40.0/bin/curl -o /data/local/tmp/ocrid.txt -k -H "Content-Type:application/x-www-form-urlencoded" -d "image=%s" %s', ocrbody, ocrurl)
	os.execute(curlstr)
	local ocrret = fileread("/data/local/tmp/ocrid.txt")
	DebugLogId(ocrret)
	-- def = XDBase64.decode(imgdata)
	-- if def == readData then print("yes") end
	return ocrret
end
function mgpic_Ocrhttps(pathname)	--ocr识别
	local words = 0
	local ocret = ocrpic_baidu(pathname)
	if ocret~=-1 then
		local ocrwords = ocret:match('words_result".*(%b{})') or 0
		 words = ocrwords~=0 and ocrwords:match(':.*(%b"")'):sub(2, - 2) or words
	end
	return words
end
local function recOcrTime(flg,ostime,ocrtime,tmpclock)    --记录ocr识别时间
	if flg == 'A' then
		G_mgScriptFlg.A = {"A", ostime, ocrtime,tmpclock}
	elseif flg == 'B' then
		G_mgScriptFlg.B = {"B", ostime, ocrtime,tmpclock}
	elseif flg == 'C' then
		G_mgScriptFlg.C = {"C", ostime, ocrtime,tmpclock}
	elseif flg == 'D' then
		G_mgScriptFlg.D = {"D", ostime, ocrtime,tmpclock}
	end
	DebugLogId(string.format("REC OCR result: %s %s %s", flg, ostime, ocrtime))
end

function Method_Voucher(posPram,ocrTflg)				--控件获取咪咕凭证主函数
	local ret=0
	local startclock = GetAPI_OsClock()
	local ImgTmpTb=splittable(posPram,",")
	local timeOut = ImgTmpTb[2] and tonumber(ImgTmpTb[2]) or G_timeOut
	local userPram = not ImgTmpTb[2] and ImgTmpTb[1]
	ret,view_str = Dump_get_view(userPram,timeOut)
	if ret ~= -1 then
		ret = 0
	end
	DebugLogId(string.format( "获取自定义凭证: ret = %s\ttext = %s",ret,view_str))
	if ocrTflg and ocrTflg~='' then
		recOcrTime(ocrTflg,0,view_str,0)	--记录时间，作为后期差值计算
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_CaptureOcr(posPram,ocrTflg)				--截图Ocr方法主函数
	local ret=0
	local startclock = GetAPI_OsClock()
	local function matchPic(picPram, pic_path)
		local pic_name
		if picPram and picPram:match("%d+_%d+_%d+_%d+") then
			local tmptb = {}
			for k in picPram:gmatch('%d+') do
				table.insert(tmptb, k)
			end
			local tmpx1, tmpx2, tmpy1, tmpy2 = tmptb[1], tmptb[2], tmptb[3], tmptb[4]
			local TempTime = os.date("%Y%m%d%H%M%S")
			local tmpclock = os.time()
			if G_EngineMode == "Android" then
				pic_name = string.format("%s_%s_%s_%s_CapturePic.bmp", tmpx1, tmpx2, tmpy1, tmpy2)
				GetAPI_CaptureRectangle(pic_path .. pic_name)
			else
				pic_name = string.format("%s_%s_%s_%s_CapturePic.png", tmpx1, tmpx2, tmpy1, tmpy2)
				GetAPI_CaptureRectangle(pic_path .. pic_name, tmpx1, tmpx2, tmpy1, tmpy2)
			end
		end
		return pic_name, tmpclock, TempTime
	end
	
	local pic_path = string.format("%s%s", string.sub(G_SysDbgPath, 1, - 2), G_Pflg)
	local pictxt
	if posPram:match('图片验证码') then	--http识别
		local pic_name = matchPic(ocrTflg, pic_path)
		if pic_name then
			pictxt = cjy_ScorePic(pic_path .. pic_name)	--图片名称(全路径)，截图保存位置
			G_Captcha = pictxt	--赋值验证码变量
			GetAPI_Deletefile(pic_path .. pic_name)
		end
	else	
		local pic_name, tmpclock, TempTime = matchPic(posPram, pic_path)
		local all_pic = pic_path .. pic_name	--图片名称(全路径)，截图保存位置
		pictxt = mgpic_Ocrhttps(all_pic)	--ocr识别
		if pictxt == 0 then DebugLogId(string.format("PIC OCR FALSE !!!\t%s", all_pic)) ret = - 1 end
		if ocrTflg and ocrTflg ~= '' then
			recOcrTime(ocrTflg, TempTime, pictxt, tmpclock)	--记录时间，作为后期差值计算
		else
			DebugLogId("仅OCR识别,结果不记录!")
		end
		local voc_pic = string.format("hzys_%s%s_%s", TempTime, GetVoucTale(G_Id), pic_name)
		CopyFile(all_pic, pic_path .. voc_pic)
		CopyFile(all_pic, G_SysScpPath .. G_Pflg .. voc_pic)
		GetAPI_Deletefile(all_pic)
		G_CaptureImg = voc_pic
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto_capture")
	table.insert(ResultTable,DelayTime)
	table.insert(ResultTable,pictxt)
	return ret,ResultTable,pictxt
end

function Method_DiffOcr(diflg)	--对比直播客户端时差
	local ret,index=0,1
	local logflg = function(flg)
		DebugLogId("查看 mg 时差记录表")
		if flg == 'A' then
			DebugLogId(table.concat(G_mgScriptFlg.A,'\t'))
			return G_mgScriptFlg.A
		end
		if flg == 'B' then
			DebugLogId(table.concat(G_mgScriptFlg.B,'\t'))
			return G_mgScriptFlg.B
		end
		if flg == 'C' then
			DebugLogId(table.concat(G_mgScriptFlg.C,'\t'))
			return G_mgScriptFlg.C
		end
		if flg == 'D' then
			DebugLogId(table.concat(G_mgScriptFlg.D,'\t'))
			return G_mgScriptFlg.D
		end
	end
	local minTsec=function (TMS)  --用秒 s 计算时差 
		local getSims = function(Timer)
			local _, ts = Timer:gsub(':', '')
			if ts == 1 then
				return 60
			elseif ts == 2 then
				return 60 * 60
			else
				return 1
			end
		end
		local st1 = TMS:match("%d+") or 1
		local rc = getSims(TMS)
		local MTime = tonumber(st1) * getSims(TMS)
		local st2 = TMS:match(":(%d+)") or 1
		return MTime + tonumber(st2)
	end
	local startclock = GetAPI_OsClock()
	
	local mgDiFlg=splittable(diflg,"-")
	local mgTimetb_B = logflg(mgDiFlg[1])
	local mgTimetb_A = logflg(mgDiFlg[2])

	local ocrT1 = mgTimetb_A[3] --ocr识别时间 1
	local ocrT2 = mgTimetb_B[3] --ocr识别时间 2
	local picT1 = mgTimetb_A[4] --截图时间戳 1
	local picT2 = mgTimetb_B[4] --截图时间戳 2

	local sTimer = minTsec(ocrT1)
	local eTimer = minTsec(ocrT2)
	
	local DelayValue = (eTimer-sTimer) - (picT2-picT1) or 0.1

	DelayValue = math.abs(DelayValue)
	local endclock = GetAPI_OsClock()
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayValue)
	return ret,ResultTable,index
end

function Method_readini(strCommand,strCommandImg,numflag)				--截图方法主函数
	local ret = -1
	local index=0
	local inilist,iniall=Readini(strCommand)
	local comcontent
	local startclock = GetAPI_OsClock()
	if numflag==0 then
		comcontent=iniall
	else
		if tonumber(numflag)>#inilist then
			DebugLogId("需要比对的列数<<"..tostring(numflag)..">>大于文本文件长度<<"..tostring(#inilist)..">>","脚本错误")
		else
			comcontent=inilist[tonumber(numflag)]
		end
	end

	local ImgsTab=splittable(strCommandImg,"|")
	for idx,CompImage in pairs(ImgsTab) do
		-- DebugLogId("comcontent:"..comcontent)
		-- DebugLogId("CompImage:"..CompImage)
		if CompImage==comcontent then
			index=idx
			ret=0
			break
		end
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,index
end

function Readini(filepath)
	local fileini=io.open(filepath,"r")
	local list={}
	local element
	if fileini then
		line=fileini:read("*l")
		if line then
			list=splittable(line,'\t')
		end
		-- for line in fileini:lines() do
-- 			line = Strip(line)
-- 			if line~="" then
-- 				line=string.gsub(line,"\r","")
-- 				line=string.gsub(line,"\n","")
-- 				table.insert(list,line)
-- 			end
-- 		end
	else
		DebugLogId("输入的文件路径不正确，请脚本编写人员修改")
	end
	fileini:close()
	fileini2=io.open(filepath,"r")
	element=fileini2:read("*l")
	fileini2:close()
	return list,element
end

--FlowMode=0(总流量)，1(指定程序流量)
--CalFlag=0(监控流量开始)，1(监控流量结束)
function Method_FlowCalculation(Process,FileSize,CalFlag)	--流量监控函数
	local ret=0
	local DLFlow,ULFlow,DLFlowex,ULFlowex=0,0,0,0
	local cpu,memory=0,0
	local cpu_aver,memory_aver = 0,0
	local FileName
	local fcpu,fmemory,allULFlow,allDLFlow
	Process=string.gsub(Process," ","")
	if CalFlag==0 then
		FileName=os.date("%Y%m%d%H%M%S")..".txt"
		table.insert(G_CaptureTab,FileName)
		G_FileName=string.sub(G_SysDbgPath,1,-2)..G_Pflg..FileName
		GetAPI_perf_monitor(G_FileName,Process,CalFlag)
		DebugLogId("开启性能统计,日志文件全路径:"..G_FileName)
	else
		if G_FileName then
			DebugLogId("结束性能统计,日志文件全路径:"..G_FileName)
			GetAPI_perf_monitor(G_FileName,Process,CalFlag)
			GetAPI_Sleep(2)
			ret,cpu,memory,DLFlow,ULFlow,fcpu,fmemory,allULFlow,allDLFlow,cpu_aver,memory_aver=Method_FlowCalculationEx(G_FileName,Process)
			G_FileName=nil
		else
			DebugLogId("未找到性能统计文件...")
			ret=1
		end
	end
	if FileSize and FileSize~="" and tonumber(FileSize) then
		DLFlowex=DecPoint(100*tonumber(DLFlow)/tonumber(FileSize))
		ULFlowex=DecPoint(100*tonumber(ULFlow)/tonumber(FileSize))
		DLFlowex=DLFlowex/100
		ULFlowex=ULFlowex/100
	end

	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,cpu)
	table.insert(ResultTable,memory)
	table.insert(ResultTable,DLFlow)
	table.insert(ResultTable,ULFlow)
	table.insert(ResultTable,DLFlowex)
	table.insert(ResultTable,ULFlowex)
	-- table.insert(ResultTable,fcpu)
	-- table.insert(ResultTable,fmemory)
	table.insert(ResultTable,cpu_aver)
	table.insert(ResultTable,memory_aver)
	table.insert(ResultTable,allDLFlow)
	table.insert(ResultTable,allULFlow)

	return ret,ResultTable
end

function Method_FlowCalculationEx(G_FileName,Process)
	local ret,cpu,memory,DLFlow,ULFlow,allDLFlow,allULFlow=1,0,0,0,0,0,0
	local count,cpuT,MemoryT = 0,0,0
	local filetab
	local upfl,dlfl
	local allupfl,alldlfl
	local temptab
	local allmemory
	local fcpu,fmemory=0,0
	local fcpuT,fmemoryT=0,0
	local memory_aver,cpu_aver =  0,0
	filetab=ReadFileToTable(G_FileName)
	if #filetab>0 then
		for i=1,#filetab do
			if string.find(filetab[i],Process) then
				temptab=splittable(filetab[i]," ")
				if tonumber(temptab[4])>100 then
					temptab[4]=0
				end
				if tonumber(temptab[5])>100 then
					temptab[5]=0
				end
				cpuT = cpuT + tonumber(temptab[4])
				MemoryT = MemoryT + tonumber(temptab[5])
				count = count + 1
				cpu=FindMax(temptab[4],cpu)
				memory=FindMax(temptab[5],memory)
				DebugLogId("cpu="..cpu..",memory="..memory)
				if not upfl then
					upfl=temptab[6]
				end
				if not dlfl then
					dlfl=temptab[7]
				end
				ULFlow=tonumber(temptab[6])-tonumber(upfl)
				DLFlow=tonumber(temptab[7])-tonumber(dlfl)
			elseif string.find(filetab[i],"real") then
				temptab=splittable(filetab[i]," ")
				if tonumber(temptab[3])>100 then
					temptab[3]=0
				end
				if tonumber(temptab[4])>100 then
					temptab[4]=0
				end
				if not allupfl then
					allupfl=temptab[7]
				end
				if not alldlfl then
					alldlfl=temptab[8]
				end
				allULFlow=tonumber(temptab[7])-tonumber(allupfl)
				allDLFlow=tonumber(temptab[8])-tonumber(alldlfl)
				fcpu=FindMax(temptab[3],fcpu)
				fcpu=fcpu/100
				fmemory=FindMax(temptab[4],fmemory)
				allmemory=GetAPI_GetMemInfo()
				fmemory=allmemory*fmemory/100
				--fmemory=fmemory/100
				DebugLogId("总cpu="..fcpu..",总memory="..fmemory..",总上行流量:"..allULFlow..",总下行流量:"..allDLFlow)
			end
		end
		if count ~= 0 then
			memory_aver = MemoryT/count
			cpu_aver = cpuT/count
		end
		allmemory=GetAPI_GetMemInfo()
		memory=DecPoint(allmemory*memory/100)
		memory_aver = DecPoint(allmemory*memory_aver/100)
		--memory=memory/100
		cpu=cpu/100
		cpu_aver = cpu_aver/100
		DebugLogId("获取的监控结果:cpu占用峰值:"..cpu.."*100%,CPU占用平均值:"..cpu_aver.."*100%,内存占用峰值:"..memory.."KB,内存占用平均值:"..memory_aver.."KB,上行流量:"..ULFlow.."KB,下行流量:"..DLFlow.."KB")
		if memory>0 or cpu>0 or ULFlow>0 or DLFlow>0 then
			ret=0
		end
	else
		DebugLogId("监控文件为空...")
	end
	ReorganizationFlowDocument(G_FileName,allmemory)
	return ret,cpu,memory,DLFlow,ULFlow,fcpu,fmemory,allULFlow,allDLFlow,cpu_aver,memory_aver
end

function ReorganizationFlowDocument(fileName,allmemory)									--重写资源消耗文件，将内存设置为值而不是百分比
	local tmp_table = ReadFileToTable(fileName)
	local str_ret = ''
	for i = 1,#tmp_table do
		tmp_table_x = splittable(tmp_table[i],' ')
		if tmp_table_x[1] == 'app' then
			tmp_table_x[5] = tostring(DecPoint(tonumber(tmp_table_x[5])*tonumber(allmemory)/100))
		elseif tmp_table_x[1] == 'real' then
			tmp_table_x[4] = tostring(DecPoint(tonumber(tmp_table_x[4])*tonumber(allmemory)/100))
		end
		for j = 1,#tmp_table_x do
			str_ret = str_ret..tmp_table_x[j]..' '
		end
		str_ret = str_ret..'\n'
	end
	file = io.open(fileName,'w')
	file:write(str_ret)
	file:close()
end

function Method_AdbCommand(command,imgs,paraflag1)		--adb命令执行函数
	local DelayTime
	local value
	local ret=0
	local picidx=0
	local TimeOut = G_timeOut
	if command=="" then
		ret=1
		DebugLogId("传入命令为空...","脚本错误")
	else
		DebugLogId("执行命令行:"..command)
		if string.find(command,"&&") then
			GetAPI_CommandEx(command)
			value = ""
		else
			value=GetAPI_Command(command)
			DebugLogId("adb命令返回值:"..tostring(value))
		end
		if string.find(value,"result:(%w+)") then
			_,_,G_Captcha=string.find(value,"result:(%w+)")	--定义全局变量
			DebugLogId("记录全局变量值:"..G_Captcha)
		end
	end
	local stime=GetAPI_OsClock()
	if imgs == "" then
		print ("No pic compare")
	else
		CompImgTab=splittable(imgs,",")
		if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
			TimeOut=tonumber(CompImgTab[2])
		end
		ret,picidx=CheckActionResults(CompImgTab[1],TimeOut)
	end
	local etime=GetAPI_OsClock()
	DelayTime=GetAPI_SubTime(etime,stime)
	DebugLogId("command命令结束："..DelayTime)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_AdbVersion(package_name,imgs,paraflag1)		--取客户端版本执行函数
	local version
	local client_name = package_name
	local value
	local ret=1
	local picidx=0
	local ResultTable = {"auto"}
	local stime=GetAPI_OsClock()
	if command=="" then
		ret=1
		DebugLogId("传入包名为空...","脚本错误")
	else
		DebugLogId("获取客户端版本号，客户端包名:"..package_name)
		value=GetAPI_Command("dumpsys package "..package_name)
		-- DebugLogId("命令返回值："..value)
		package_name = string.gsub(package_name,"%.","%%.")
		local _,_,ret_pack = string.find(value,'Package *%[ *'..package_name..' *%](.+)')
		if ret_pack then
			value_change = string.gsub(ret_pack,"\r","\n")
			_,_,version=string.find(value_change,"versionName=([^\n]+)")
			if version then
				DebugLogId("客户端版本:"..version)
				if imgs==version then
					ret=0
				else
					DebugLogId("客户端版本不一致，给定的客户端版本为："..imgs..",获取的客户端版本为："..version)
					ret=1
				end
			else
				DebugLogId("测试失败，包名"..client_name..'不正确或未安装该客户端')
			end
		else
			DebugLogId("测试失败，包名"..client_name..'不正确或未安装该客户端')
		end
	end
	local etime=GetAPI_OsClock()
	DelayTime=GetAPI_SubTime(etime,stime)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Method_Performance(testps,testmode,testtime)
	local ret
	local cpuret
	local memoryret
	local stime=GetAPI_OsClock()
	ret,memoryret,cpuret=Method_PerformanceEx(testps,testmode,testtime)
	cpuret=cpuret/100
	DebugLogId("本次测试内存值:"..memoryret..",CPU值:"..cpuret)
	local etime=GetAPI_OsClock()
	local DelayTime=GetAPI_SubTime(etime,stime)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	table.insert(ResultTable,"")
	table.insert(ResultTable,memoryret)
	table.insert(ResultTable,cpuret)
	return ret,ResultTable
end

function Method_PerformanceEx(testps,testmode,testtime)
	local ret=0
	local cpumode,memorymode
	local startt,endt
	local ret1,ret2
	local max1=0
	local max2=0
	if testps=="" then
		ret=1
	else
		DebugLogId("开始性能功耗测试...")
		if string.find(testmode,"CPU") then
			cpumode=true
		end
		if string.find(testmode,"memory") then
			memorymode=true
		end
		startt=GetAPI_OsClock()
		while 1 do
			endt=GetAPI_OsClock()
			if GetAPI_SubTime(endt,startt)>tonumber(testtime) then
				break
			end
			if cpumode then
				ret1=GetAPI_GetProcCpuPercent(testps)
				if ret1>max1 then
					max1=ret1
				end
			end
			if memorymode then
				ret2=GetAPI_GetProcMemInfo(testps)
				if ret2>max2 then
					max2=ret2
				end
			end
			GetAPI_Sleep(5)
		end
		DebugLogId("结束性能功耗测试...")
	end
	if memorymode and max2==0 then
		ret=1
	end
	return ret,max2,max1
end

function Method_modifyfile(path)
	local ret
	local startclock = GetAPI_OsClock()
	local filein=io.open(path,"rb")
	local element=filein:read("*all")
	local randomstring=randomnum(1000000000,9999999999)
	filein:close()
	local SecondFileElement=string.sub(element,11,-1)
	local NewFileContect=randomstring..SecondFileElement
	local fileout=io.open(path,"wb")
	fileout:write(NewFileContect)
	fileout:close()
	local endclock = GetAPI_OsClock()
	if element~=NewFileContect then
		ret=0
	else
		ret=-1
	end
	local ResultTable={}
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_RemoveCache(process,times,FlowStep)				--清理缓存方法主函数
	local ret=0
	local startclock = GetAPI_OsClock()
	Method_RemoveCacheEx(process)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_RemoveCacheEx(process)
	local j,i
	local DeletePathtab={}
	if string.find(process,"/") then
		DeletePathtab=splittable(process,"|")
	else
		if G_EngineMode=="IOS" then
			DebugLogId("删除未知目录...")
		else
			table.insert(DeletePathtab,"/data/data/"..process.."/cache")
			table.insert(DeletePathtab,"/mnt/sdcard/android/data/"..process.."/cache")
		end
	end
	for j=1,3 do
		for j=1,#DeletePathtab do
			DebugLogId("删除目录:"..DeletePathtab[j])
			GetAPI_DeleteDir(DeletePathtab[j])
			GetAPI_Sleep(1)
		end
	end
end

function Method_PACKET(CapRole,CapName,paraflag1)					--抓包函数
	local ret=0
	local picidx,res
	local path
	local PacketPath = string.sub(G_SysDbgPath,1,-2)..G_Pflg..CapName..".pcap"
	DebugLogId("包的路径："..PacketPath)
	CapRole=Strip(CapRole)
	if G_EngineMode ~= "IOS" then
		path="/data/data/com.autosense/files/ser/commandd /data/data/com.autosense/files/ser/tcpdump"
		if paraflag1==0 then
			if CapRole=="" then
				DebugLogId("命令："..path.." tcpdump -X -i any -p -s 0 -vv -w "..PacketPath.." host 183.192.161.104 or 61.155.163.234 or 218.98.51.41 or 183.192.162.233")
				-- _cfunc.Command('su'..path.." tcpdump -X -i any -p -s 0 -vv -w "..PacketPath)
				_cfunc.Command("su\n"..path.." tcpdump -X -i any -p -s 0 -vv -w "..PacketPath.." host 183.192.161.104 or 61.155.163.234 or 218.98.51.41 or 183.192.162.233".."\nexit")
			else
				_cfunc.Command("su\n"..path.." tcpdump "..CapRole.." "..PacketPath.."\nexit")
			end
			_cfunc.Command("su\n".."chmod 777 "..string.sub(G_SysDbgPath,1,-2)..G_Pflg..CapName..".pcap".."\nexit")
			table.insert(G_packet,CapName..".pcap")
			G_package_name = CapName..".pcap"
			G_packetflag=true
		else
			DebugLogId("结束抓包")
			picidx=GetAPI_KillProcess("tcpdump")
			G_packetflag=false
			-- DebugLogId("过滤：".."/data/local/tmp/c/test "..PacketPath.." "..string.sub(G_SysDbgPath,1,-2)..G_Pflg..CapName..".txt")
			-- res=_cfunc.Command("/data/local/tmp/c/test "..PacketPath.." "..string.sub(G_SysDbgPath,1,-2)..G_Pflg..CapName..".txt")
			-- DebugLogId("过滤结果："..res)
			-- DebugLogId("包体名称:"..CapName..".txt")
			-- table.insert(G_packet,CapName..".pcap")
		end
	else
		print("ios暂无次功能")
		ret=-1
	end
	local ResultTable={}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,0)
	return ret,ResultTable,picidx
end

function Method_get_http_info(strCommand,strCommandImg,flag,retitle)		----获取http相互通讯交互
	local picidx, ret = 0, 0
	local path1 = '/sdcard/packet.log'
	local path2 = '/sdcard/packet_log.txt'
	local table_ret = {}
	if flag == 1 then
		file = io.open(path1,'w')
		file:close()
		file = io.open(path2,'w')		
		file:write('G_PackageName\tTitle\tServersIp\tMethod\tTime_Visit\tRequestHeadSize\tRequestBodySize\tTimeTotal\tDNS\tTIP\tFirstPacketTime\tSSlTime\tCode\tResponseHeadSize\tResponseBodySize\tURL\n')
		file:close()
	elseif flag == 2 then
		file = io.open(path1,'w')
		file:close()
	else
		local content = ReadFileToTable(path1)
		--local contenttab = GetAPI_getHttpInfo(content,strCommand,strCommandImg)
		--Method_get_http_info_ex(contenttab,path2,retitle)
		file = io.open(path2,'a')
		for i,j in pairs(content) do
			local ress,URL,method,time_visit,requestHeadSize,requestBodySize,TimeTotal,dns,TIP,FirstPacketTime,sslTime,responseHeadSize,responseBodySize,serversIp,code,PackageName = pcall(Method_get_http_info_Ex,j)
			if ress then
				file:write(G_PackageName..'\t'..retitle..'\t'..serversIp..'\t'..method..'\t'..time_visit..'\t'..requestHeadSize..'\t'..requestBodySize..'\t'..TimeTotal..'\t'..dns..'\t'..TIP..'\t'..FirstPacketTime..'\t'..sslTime..'\t'..code..'\t'..responseHeadSize..'\t'..responseBodySize..'\t'..URL..'\n')				
			end
		end
		file:close()
	end
end

function Method_get_http_info_Ex(j)
	local _,_,ele = string.find(j,'"overview":%[(.-)"%],')
	local start_num,end_num,URL = string.find(ele,'"(.-)"')
	local next_ele = string.sub(ele,end_num,-1)
	local tmp_table = _xsplit(next_ele,',')
	local method = string.gsub(tmp_table[2],'"','')
	local time_visit = string.gsub(tmp_table[3],'"','')
	local requestHeadSize = string.gsub(tmp_table[4],'"','')
	local requestBodySize = string.gsub(tmp_table[5],'"','')
	local TimeTotal = string.gsub(tmp_table[6],'"','')
	local dns = string.gsub(tmp_table[7],'"','')
	local TIP = string.gsub(tmp_table[8],'"','')
	local FirstPacketTime = string.gsub(tmp_table[9],'"','')
	local sslTime = string.gsub(tmp_table[10],'"','')
	local responseHeadSize = string.gsub(tmp_table[12],'"','')
	local responseBodySize = string.gsub(tmp_table[13],'"','')
	local serversIp = string.gsub(tmp_table[14],'"','')
	local code = string.gsub(tmp_table[11],'"','')
	local _,_,PackageName = string.find(j,'PackageName":"(.-)"')
	if not PackageName then
		PackageName = 'nil'
	end
	return URL,method,time_visit,requestHeadSize,requestBodySize,TimeTotal,dns,TIP,FirstPacketTime,sslTime,responseHeadSize,responseBodySize,serversIp,code,PackageName
end

function _xsplit(str,flag)
	table_tmp = {}
	if string.sub(str,-1,-1) ~= flag then
		str = str .. flag
	end
	for i in string.gmatch(str,'(.-)'..flag) do
		table.insert(table_tmp,i)
	end
	return table_tmp
end

function Method_get_http_info_ex_old(tab,path,retitle)
	file = io.open(path,'a')
	DebugLogId("开始查找")
	for i,j in pairs(tab) do
		local _,_,URL = string.find(j,'"URL":"(.-)"')
		local _,_,PackageName = string.find(j,'"PackageName":"(.-)"')
		local localHost = GetAPI_DeviceIP()
		local _,_,ServerIpAddress = string.find(j,'"ServerIpAddress":"(.-)"')
		local _,_,Method = string.find(j,'"Method":"(.-)"')
		local _,_,Size = string.find(j,'"Size":"(.-)"')
		local _,_,TotalTime = string.find(j,'"TotalTime":"(.-)"')
		local _,_,Code = string.find(j,'"Code":"(.-)"')
		
		if PackageName == nil then
			PackageName = 'nil'
		end
		if ServerIpAddress == nil then
			ServerIpAddress = 'nil'
		end
		if Method == nil then
			Method = 'nil'
		end
		if Size == nil then
			Size = 'nil'
		end
		if TotalTime == nil then
			TotalTime = 'nil'
		end
		--file:write(G_PackageName..'\t'..retitle..'\t'..PackageName..'\t'..localHost..'\t'..ServerIpAddress..'\t'..Method..'\t'..Size..'\t'..TotalTime..'\t'..Code..'\t'..URL..'\n')
		file:write(PackageName..'\t'..localHost..'\t'..ServerIpAddress..'\t'..Method..'\t'..Size..'\t'..TotalTime..'\t'..Code..'\t'..URL..'\n')
	end
	file:close()
end

function GetAPI_getHttpInfo(tab,strCommand,strCommandImg)
	local table_ret = {}
	local table_ip = {}
	for i,j in pairs(tab)do
		local _,_,url = string.find(j,'"URL":"(.-)"')
		local _,_,packageName = string.find(j,'"PackageName":"(.-)"')
		local strCommand_table = splittable(strCommand,'|')
		if comTabtoStr(url,strCommand_table) and packageName ~= strCommandImg then
			table.insert(table_ret,j)
			local _,_,ServerIpAddress = string.find(j,'"ServerIpAddress":"(.-)"')
			if ServerIpAddress~=nil then
				table.insert(table_ip,ServerIpAddress)
			end
		elseif packageName == strCommandImg then
			table.insert(table_ret,j)
			local _,_,ServerIpAddress = string.find(j,'"ServerIpAddress":"(.-)"')
			if ServerIpAddress~=nil then
				table.insert(table_ip,ServerIpAddress)
			end
		end
	end
	for i,j in pairs(tab)do
		if comTabtoStr(url,table_ip) then
			table.insert(table_ret,j)
		end
	end
	return table_ret
end

function Method_getview(strCommand,strCommandImg,TimeOut)
	local ret,picidx=0,0
	local first_time = 0
	local view_str = ''
	local startclock = GetAPI_OsClock()
	if strCommand and strCommand~='' then
		ret,first_time=Method_ClickPubEx(strCommand)
	end
	if ret == 0 then
		ret,picidx,view_str = Method_getviewEx(strCommandImg,TimeOut)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	table.insert(ResultTable,view_str)
	return ret,ResultTable,picidx
end

function Method_GetTime()
	local ret=0
	local startclock = GetAPI_OsClock()
	G_GetTime = os.time()
	DebugLogId("记录当前时间："..os.date("%Y-%m-%d %H:%M:%S",G_GetTime).."，转化为时间戳："..G_GetTime)
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_EngineUpdate(udurl,udmode,FlowStep)				--引擎更新函数
	local ret
	local startclock = GetAPI_OsClock()
	DebugLogId("开始引擎更新...")
	ret = Method_EngineUpdateEx(udurl,udmode)
	DebugLogId("引擎更新结束...")
	local endclock = GetAPI_OsClock()
	local ActionEndTime = os.date("%Y-%m-%d %H:%M:%S")
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	if ret~=0 then
		G_GlbVocMsg=GetGVM("本次(ENGINEUD)失败,更新引擎结果:%s",{ret})
	end
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_FileUpdate(udurl,udmode,FlowStep)				--文件更新函数
	local ret
	local startclock = GetAPI_OsClock()
	if not udmode or udmode == "" then
		ret = -1
	else
		DebugLogId("开始更新文件...")
		ret = Method_FileUpdateEx(udurl,udmode)
		DebugLogId("文件更新结束...")
	end
	local endclock = GetAPI_OsClock()
	local ActionEndTime = os.date("%Y-%m-%d %H:%M:%S")
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	if ret~=0 then
		G_GlbVocMsg=GetGVM("本次(FileUD)失败,更新文件结果:%s",{ret})
	end
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

--udmode="0" 更新全部引擎,udmode~="0" 更新公共引擎+catcherror
function Method_EngineUpdateEx(source,goal)				--引擎更新实现函数
	local ret
	source = source or "BasicEngine.lua"				--假如没指定，默认更新BasicEngine.lua
	local UDpath=G_SysScpPath.."/"..source
	local ENpath
	if G_EngineMode=="Android" then
		ENpath="/data/local/tmp/c/engine/"..source
	elseif G_EngineMode == "IOS" then
		ENpath="/usr/local/lib/lua/5.1/"..source
	end
	ret=CopyFile(UDpath,ENpath)
	return ret
end

function Method_FileUpdateEx(source,goal)				--文件更新实现函数
	local ret
	local UDpath
	local ENpath = goal						--文件更新目标全路径
	local FLpath = string.match(ENpath, "(.+)/[^/]*%.%w+$")
	if string.find(source,'/') then
		UDpath = source
	else
		UDpath = G_SysScpPath.."/"..source
	end
	if not File_Exists(FLpath) then
		os.execute(string.format("mkdir -p %s", FLpath))
		DebugLogId("目标文件夹不存在,重新创建文件夹:"..FLpath)
	end
	ret=CopyFile(UDpath,ENpath)
	return ret
end

function Method_PerformanceManager(seflg, psname)	--java性能统计
	local ret, picidx = 0, 0
	if G_EngineMode ~= "IOS" then
		psname = psname or ""
		if psname=="" then DebugLogId("性能方法 包名参数为空！") return end
		local fpath = "/sdcard/RecordPerformanceInfo/"
		local fname = string.format("perfs_%s.csv", os.time())
	
		if seflg == "start" then
			G_Perfsflag = true
			pcall(function () _cfunc.LuaScriptJavaExec('PerformanceManager.getInstance():stopRecordPerformanceInfo()') end)			--确保每次启动性能统计时已关闭	
			_cfunc.Command(string.format("mkdir -p %s", fpath))
			DebugLogId(string.format("开启性能统计: %s\t日志文件全路径:%s%s", psname, fpath, fname))
			_cfunc.LuaScriptJavaExec(string.format('PerformanceManager.getInstance():startRecordPerformanceInfo("%s", "%s","%s")', psname, fpath, fname))
			
			local relog = _cfunc.Command("ls -l /sdcard/RecordPerformanceInfo/")
			DebugLogId("查看是否有性能日志文件：\n"..relog)
		else
			DebugLogId(string.format("结束性能统计: %s\t日志文件全路径:%s%s", psname, fpath, fname))
			_cfunc.LuaScriptJavaExec('PerformanceManager.getInstance():stopRecordPerformanceInfo()')
			_cfunc.Sleep(3*1000)
			local relog = _cfunc.Command("ls -l /sdcard/RecordPerformanceInfo/")
			DebugLogId("查看是否有性能日志文件：\n"..relog)
			
			local pmfiles = getPathFiles(fpath)		--获取文件列表
			if #pmfiles>0 then
				_cfunc.Command(string.format("mkdir -p %sperfs", G_SysDbgPath))
				for k,v in pairs(pmfiles) do
					if string.find(v,"csv") then
						local fpname = string.format("%s%s",fpath,v)
						local lfpname = string.format("%sperfs/%s", G_SysDbgPath,v)
						_cfunc.Command(string.format("cp %s %s", fpname, lfpname))
						DebugLogId(string.format("记录凭证录屏文件: %s", lfpname))
					end
				end
				GetAPI_DeleteDir(fpath)
				_cfunc.Command("rm -rf /sdcard/RecordPerformanceInfo/")
			end		
		end	
	else
		print("ios暂无次功能")
		ret = - 1
	end
	
	local ResultTable = {}
	table.insert(ResultTable, "auto")
	table.insert(ResultTable, 0)
	return ret, ResultTable, picidx
end
function Method_MGHTTP(cmddurl,scvalue)	--咪咕自定义变量
	local srcpath = '/data/local/tmp/c/mode'
	local json = dofile(string.format("%s/%s", srcpath, "dkjson.lua"))
	local ret, picidx = 0, 1
	local startclock = GetAPI_OsClock()
	--eg: scvalue = "{regex:'source_id\",\"EV\":(%b\"\")',value:'vid'}"
	if scvalue:match('regex') and scvalue:match('regex') and cmddurl:match('http') then 
		ret = mgkv_HttpMain(cmddurl, scvalue) or 0
	else
		ret = -1	-- 找不到为失败
	end
	
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable, picidx
end
function Method_ShowHow(randomV,Testime)	--生成指定结果
	local ret, picidx = 0, 1
	local startclock = GetAPI_OsClock()
	--eg: {"[1],[SHOWHOW],[6,16,0.8],[6],[<生6 ~ 16值 等待6s>]"}, 
	local sradm = randomV:match("%d+") or 2
	local eradm = randomV:match(",(%d+)") or 10
	local val = randomV:match(",%d+,(%d+%.?[%d+]?)") or 1
	local Tvalues = math.random(sradm, eradm)/1000 + math.random(sradm, eradm)/100 + math.random(sradm, eradm)/10 + val
	Testime = Testime or 1.86
	DebugLogId(string.format("random: %s\t%s\t%s", sradm,eradm,val))
	GetAPI_Sleep(Testime)
	local endclock = GetAPI_OsClock()
	local DelayTime = Tvalues or GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable, picidx
end


DevEdt="3.0.1"	

----------------------------------------------------方法分配函数----------------------------------------------------
------------------------------------------------------------------------------------------------------------------
function Device_Init(G_Id,G_DeviceName,SysParms,UsrParms)				--设备初始化函数
	local res,devcount
	OrderedFlag=nil                                 --订购成功标志，全局变量
	G_ScriptStart=GetAPI_OsClock()                          --脚本运行开始计时，全局变量
	res,devcount = pcall(_G[string.format("DeviceInit_%s",G_DeviceName)],G_Id,SysParms,UsrParms)
	return devcount
end

function Device_SwitchNetwork(G_DeviceName)
	local ret
	ret=pcall(_G[string.format("Device_SwitchNetwork_%s",G_DeviceName)])
end

function Device_SimpleInit()			--设备简单(不)初始化函数
	local devcount=1
	G_ScriptStart=GetAPI_OsClock()
	return devcount
end

function Device_UnInit(G_Id,G_DeviceName,SysParms,UsrParms)				--设备结束初始化函数
	pcall(_G[string.format("DeviceUnInit_%s",G_DeviceName)],G_Id,SysParms,UsrParms)
	G_ScriptEnd=GetAPI_OsClock()                          --脚本运行结束计时，全局变量
	local DelayTime=GetAPI_SubTime(G_ScriptEnd,G_ScriptStart)
	DebugLogId("脚本运行时间差:"..DelayTime)
end

function Device_SecondInit(G_DeviceName)				--设备二次初始化
	pcall(_G[string.format("DeviceSecondInit_%s",G_DeviceName)],G_DeviceName)
	return 0
end

function Device_WAP_VisitPageAUTO(URL,URLImage,paraflag1)			--URL_AUTO方法分配函数
	local ret,ResultTable,res
	local picidx
	if G_EngineMode=="IOS" then
		res,ret,ResultTable,picidx=pcall(_G[string.format("VisitPage_%sEx_AUTO",G_DeviceName)],URL,URLImage,paraflag1)
	else
		ret,ResultTable,picidx=Method_Wap_SIG(URL,URLImage,paraflag1)
	end
	return ret,ResultTable,picidx
end

function Device_OpenAPP_Auto(APPName,APPImage,paraflag1)				--自动打开APP方法分配函数
	local ret,ResultTable
	local picidx
	ret,ResultTable,picidx=Method_OpenAPPEx(APPName,APPImage,paraflag1)
	return ret,ResultTable,picidx
end

function Device_ExecuteTargetResult(APPName,APPImage,paraflag1)				--产生固定结果格式函数
	local ResultTable={"auto",paraflag1}
	local picidx=0
	return paraflag1,ResultTable,picidx
end

function Device_TouchsByBuffer(strCommand,strCommandImg,CompType,BuffType)				--缓冲方法分配函数
	local ret,ResultTable,picidx
	ret,ResultTable,picidx=Method_TouchsByBuffer(strCommand,strCommandImg,CompType,BuffType)
	return ret,ResultTable,picidx
end

function Device_Rate(strConnamd,strCommandImg,paraflag1)				--速率方法分配函数
	local ret,ResultTable
	local picidx=0
	ret,ResultTable,picidx=Method_Touchs_Rate(strConnamd,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_Interactive(strConnamd,strCommandImg,paraflag1)
	local ret,ResultTable
	local picidx=0
	ret,ResultTable,picidx=Method_Interactive(strConnamd,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_Interactive_recv(strCommand,strCommandImg,imei)
	local ret,ResultTable
	local picidx=0
	ret,ResultTable,picidx=Method_Interactive_recv(strCommand,strCommandImg,imei)
	return ret,ResultTable,picidx
end

function Device_Input(InputContent,InputImg,paraflag1)				--输入方法分配函数
	local ret,res,ResultTable
	local is,ie
	local picidx=0
	is,ie=string.find(InputContent,"MNUM")
	if is then
		InputContent=GetAPI_MobileNum()
	end
	if InputContent=="验证码" and G_Captcha then
		InputContent=G_Captcha
		DebugLogId("验证码:"..InputContent)
	end
	ret,ResultTable,picidx=Method_Input(InputContent,InputImg,paraflag1)
	return ret,ResultTable,picidx
end


function Device_rate_url(strCommand,strCommandImg,paraflag1)
	local ret = -1
	local picidx = 0
	local startclock = GetAPI_OsClock()
	local res,file_size = pcall(GetAPI_url_down,strCommand,tonumber(strCommandImg))
	if res and file_size>0 then
		ret = 0
	else
		ret = -1
		DebugLogId('Device_rate_url func fail : '..file_size)
		file_size = 0
	end
	local endclock = GetAPI_OsClock()
	local DelayTime =GetAPI_SubTime(endclock,startclock)
	local rate = DecPoint((file_size/DelayTime)/1024)
	local ResultTable = {"auto",DelayTime,rate,file_size,"rate"}
	G_rate_url = rate
	G_rateTime_url = DelayTime
	return ret,ResultTable,picidx
end

function Device_InputString(InputContent,InputImg,paraflag1)				--直接输入分配函数
	local ret,res,ResultTable
	local is,ie
	local picidx=0
	is,ie=string.find(InputContent,"MNUM")
	if is then
		InputContent=GetAPI_MobileNum()
	end
	if InputContent=="验证码" and G_Captcha then
		InputContent=G_Captcha
		DebugLogId("验证码:"..InputContent)
	end
	ret,ResultTable,picidx=Method_InputString(InputContent,InputImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_modifyfile(strCommand,strCommandImg,paraflag1)
	local ret
	local picidx=0
	ret,ResultTable=Method_modifyfile(strCommand)
	return ret,ResultTable,picidx
end

function Device_Touchs(strCommand,strCommandImg,paraflag1)				--TOUCH方法分配函数
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ImgTmpTb=splittable(strCommandImg,",")
	strCommandImg=ImgTmpTb[1]
	if ImgTmpTb[2] and tonumber(ImgTmpTb[2]) then        	--读取图片比对超时时间，默认60秒
		TimeOut=tonumber(ImgTmpTb[2])
	end
	ret,ResultTable,picidx=Method_Touchs(strCommand,strCommandImg,TimeOut)
	return ret,ResultTable,picidx
end

function Device_get_area(strCommand,strCommandImg,paraflag1)
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ImgTmpTb=splittable(strCommandImg,",")
	strCommandImg=ImgTmpTb[1]
	if ImgTmpTb[2] and tonumber(ImgTmpTb[2]) then        	--读取图片比对超时时间，默认60秒
		TimeOut=tonumber(ImgTmpTb[2])
	end
	ret,ResultTable,picidx=Method_get_area(strCommand,strCommandImg,TimeOut)
	return ret,ResultTable,picidx
end

function Device_judge(strCommand,strCommandImg,paraflag1)
	local ret,ResultTable
	local TimeOut = G_timeOut
	local picidx=0
	ImgTmpTb=splittable(strCommand,",")
	strCommand=ImgTmpTb[1]
	if ImgTmpTb[2] and tonumber(ImgTmpTb[2]) then        	--读取图片比对超时时间，默认60秒
		TimeOut=tonumber(ImgTmpTb[2])
	end
	ret,ResultTable,picidx=Method_judge(strCommand,strCommandImg,TimeOut)
	return ret,ResultTable,picidx
end

function Device_loop(strCommand,strCommandImg,paraflag1)
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ret,ResultTable,picidx=Method_loop(strCommand,paraflag1)
	return ret,ResultTable,picidx
end

function Device_break(strCommand,strCommandImg,paraflag1)
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ret,ResultTable,picidx=Method_break()
	return ret,ResultTable,picidx
end

function Device_pageturn(strCommand,strCommandImg,paraflag1)
	GetAPI_CaptureRectangle(G_SysScpPath..G_Pflg..paraflag1)
	local ret,ResultTable,picidx = Device_Touchs(strCommand,strCommandImg)
	if G_Imgtime and G_first_time then
		G_Imgtime = G_Imgtime+G_first_time
	elseif G_first_time then
		G_Imgtime = G_first_time
	end
	if G_Imgtime then
		DebugLogId("总时间:"..ResultTable[2])
		ResultTable[2] = tonumber(ResultTable[2])-G_Imgtime
		DebugLogId("减去最后一次比图时间:"..G_Imgtime)
		DebugLogId("矫正后时间为:"..ResultTable[2])
	end
	if ret == 0 then
		ret,_,_ = Device_TouchsByBuffer('',paraflag1,-1,0)
	end
	return ret,ResultTable,picidx
end

function Device_packet_loss(strCommand,strCommandImg,paraflag1)
	local tmp_table_num_size = splittable(strCommandImg,',')
	local num = 4
	local packet_size = 32
	if #tmp_table_num_size == 2 and Strip(tmp_table_num_size[2])~="" then
		num =tonumber(tmp_table_num_size[1])
		packet_size = tonumber(tmp_table_num_size[2])
	elseif #tmp_table_num_size == 1 then
		packet_size = tonumber(tmp_table_num_size[1])
	end
	DebugLogId("ping的url："..strCommand.."\tnum: "..num..'\tpacket_size: '..packet_size)
	local ret_ping,pvalue = GetAPI_Ping(strCommand,num,packet_size)

	local ping_tab ={}
	DebugLogId("ret_ping："..ret_ping)
	local tmp_tab = splittable(ret_ping,',')
	for i =1,#tmp_tab do
		if tmp_tab[i] ~=''then
			table.insert(ping_tab,tonumber(tmp_tab[i]))
		end
	end
	pcall(function() local file_ping = io.open(string.sub(G_SysDbgPath,1,-2)..G_Pflg..'ping.txt','a') file_ping:write(pvalue..'\r\n') file_ping:close() end)
	if ping_tab~={} then
		ping_sum = 0
		for i = 1,#ping_tab do
			ping_sum = ping_sum+ping_tab[i]
		end
		packet_loss_rate = DecPoint(1-(ping_sum/#ping_tab))
	end
	G_packet_loss_rate = tostring(packet_loss_rate*100)
	return 0,{"auto",packet_loss_rate},0
end

function Device_video_playback(strCommand,strCommandImg,paraflag1)
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ImgTmpTb=splittable(strCommandImg,",")
	strCommandImg=ImgTmpTb[1]
	if ImgTmpTb[2] and tonumber(ImgTmpTb[2]) then        	--读取图片比对超时时间，默认60秒
		TimeOut=tonumber(ImgTmpTb[2])
	end
	ret,ResultTable,picidx=Method_video_Playback(strCommand,strCommandImg,TimeOut,paraflag1)
	return ret,ResultTable,picidx
end

function Device_ENERGY(strCommand,paraflag1)
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut
	local picidx=0
	ret,ResultTable=Method_energy(strCommand,paraflag1)
	return ret,ResultTable,picidx
end

function Device_CycTouchs(strCommand,strCommandImg,paraflag1)			--CTOUCH方法分配函数
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ImgTmpTb=splittable(strCommandImg,",")
	strCommandImg=ImgTmpTb[1]
	if ImgTmpTb[2] and tonumber(ImgTmpTb[2]) then                                 --读取图片比对超时时间，默认10秒
		TimeOut=tonumber(ImgTmpTb[2])
	end
	ret,ResultTable,picidx=Method_TouchsCross(strCommand,strCommandImg,TimeOut,paraflag1)
	return ret,ResultTable,picidx
end

function Device_Title(strCommand,strCommandImg,paraflag1)				--TITLE方法分配函数
	local ret
	local ResultTable={"TITLE",strCommand,paraflag1}
	local picidx=0
	if string.upper(strCommand)=="Y" then
		ret=0
	else
		ret=1
	end
	return ret,ResultTable,picidx
end

function Device_ClearLog(strCommand,strCommandImg,paraflag1)				--信令方式清短信方法分配函数
	local ret=0
	local ResultTable={"auto"}
	local picidx=0
	GetAPI_ClearLog()
	return ret,ResultTable,picidx
end

function Device_SMS_ClearSMSSIG(strCommand,strCommandImg,paraflag1)				--信令方式清短信方法分配函数
	local ret=0
	local ResultTable={"auto"}
	local picidx=0
	GetAPI_ClearSms()
	return ret,ResultTable,picidx
end

function Device_SMS_SendSMSSIG(strCommand,strCommandImg,paraflag1)				--信令发送短信方法分配函数
	local ret,ResultTable
	local res
	local picidx=0
	local parmTab,parmSPOrder,parmDestCode

	parmTab=splittable(strCommand,",")
	parmSPOrder=parmTab[1]
	if parmSPOrder == '验证码' then
		parmSPOrder = G_Captcha
	end
	if #parmTab>2 then
		parmDestCode=string.match(strCommand,"[,]([^?]*)")
	else
		parmDestCode=parmTab[2]
	end
	if G_EngineMode=="IOS" then
		res,ret,ResultTable = pcall(_G[string.format("SendSMS_%s",G_DeviceName)],parmSPOrder,parmDestCode,paraflag1)
	else
		ret,ResultTable=Method_SendSMS_SIG(parmSPOrder,parmDestCode,paraflag1)
	end
	return ret,ResultTable,picidx
end

function Device_SMS_RecvSMSSIG(strCommand,strCommandImg,paraflag1,paraflag)				--信令方式接收短信方法分配函数
	local ret,ResultTable
	local picidx=0
	local ReceiveContent,parmRecvCont
	local parmTimeOut = G_timeOut
	parmTab=splittable(strCommandImg,",")
	parmRecvCont=parmTab[1]
	if parmTab[2] and tonumber(parmTab[2]) then                   --获取图片比对超时时间，默认为60秒
		parmTimeOut=tonumber(parmTab[2])
	end
	parmRecvCont=string.gsub(parmRecvCont,"/",",")
	ret,ResultTable,picidx = Method_RecvSMS_SIG(parmRecvCont,parmTimeOut,paraflag1)
	return ret,ResultTable,picidx
end

function Device_SMS_ReplySMSSIG(SPOrder,strCommandImg,paraflag1)				--信令方式回复短信方法分配函数
	local ret,ResultTable
	local picidx=0
	if SPOrder=="验证码" and G_Captcha then
		SPOrder=G_Captcha
	end
	if paraflag1==1 then
		if G_EngineMode=="IOS" then
			res,ret,ResultTable = pcall(_G[string.format("SendSMS_%s",G_DeviceName)],SPOrder,G_RecvNumber,"发送回复短信")
		else
			ret,ResultTable = Method_SendSMS_SIG(SPOrder,G_RecvNumber,"发送回复短信")
		end
	else
		if not G_recvcontent then
			G_recvcontent="全局变量为空..."
		end
		if G_EngineMode=="IOS" then
			res,ret,ResultTable = pcall(_G[string.format("SendSMS_%s",G_DeviceName)],G_recvcontent,SPOrder,"发送回复短信")
		else
			ret,ResultTable = Method_SendSMS_SIG(G_recvcontent,SPOrder,"发送回复短信")
		end
	end
	return ret,ResultTable,picidx
end

function Device_UpdateEngine(strCommand,strCommandImg,paraflag1,paraflag)				--引擎更新方法分配函数
	local picidx=0
	local udurl,udmode
	local ret,ResultTable
	ret,ResultTable=Method_EngineUpdate(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_UpdateFile(strCommand,strCommandImg,paraflag1,paraflag)				--文件更新方法分配函数
	local picidx=0
	local udurl,udmode
	local ret,ResultTable
	ret,ResultTable=Method_FileUpdate(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_DnsTest(strCommand,strCommandImg,paraflag1)				--DNS方法分配函数
	local ret,ResultTable
	local picidx=0
	local DnsUrl
	DnsUrl=strCommand
	ret,ResultTable=Method_Dns(DnsUrl,paraflag1)
	return ret,ResultTable,picidx
end

function Device_PingTest(strCommand,strCommandImg,paraflag1)				--PING方法分配函数
	local ret,ResultTable
	local PingUrl
	local pingtimes= 4
	local pingvalue= 32
	local pvaluetab
	local picidx=0
	PingUrl=strCommand
	-- if strCommandImg~="" and tonumber(strCommandImg) then
	-- 	pingvalue=tonumber(strCommandImg)
	-- end
	local tmp_table_num_size = splittable(strCommandImg,',')
	if #tmp_table_num_size == 2 and Strip(tmp_table_num_size[2])~="" then
		pingtimes =tonumber(tmp_table_num_size[1])
		pingvalue = tonumber(tmp_table_num_size[2])
	elseif #tmp_table_num_size == 1 then
		pingvalue = tonumber(tmp_table_num_size[1])
	end
	
	
	ret,ResultTable=Method_Ping(PingUrl,pingtimes,pingvalue,paraflag1)
	return ret,ResultTable,picidx
end

function Device_TraceRoute(strCommand,strCommandImg,paraflag1)				--路由跟踪方法分配函数
	local ret
	local picidx=0	
	local Routime=300
	G_TraceRoute=1
	if strCommandImg~="" and tonumber(strCommandImg) then
		Routime=tonumber(strCommandImg)
	end
	pvalue = _cfunc.Command('ping -c 4 '..strCommand)
	-- DebugLogId(pvalue)
	_,_,ip=string.find(pvalue,"[(（](.-)[)）]")
	DebugLogId('本次测试的IP地址为：'..ip)
	local startclock=GetAPI_OsClock()
	trace = _cfunc.Command('busybox traceroute '..ip..' > /sdcard/traceroute.txt',Routime)
	DebugLogId(trace)
	if trace==''then
		ret=0
	else
		ret=1
	end
	local endclock=GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	-- DebugLogId(DelayTime)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable,picidx
end

function Device_TCPTest(strCommand,strCommandImg,paraflag1)				--TCP建连测试函数
	local ret,ResultTable
	local picidx=0
	local Dtimes=1
	ret,ResultTable=Method_TCP(strCommand,Dtimes,paraflag1)
	return ret,ResultTable,picidx
end

function Device_HttpDownload(strCommand,strCommandImg,paraflag1)				--http下载方法分配函数
	local ret,ResultTable
	local picidx=0
	local Dtimes=1
	ret,ResultTable=Method_HttpDownload(strCommand,Dtimes,paraflag1)
	return ret,ResultTable,picidx
end

function Device_MonitorTest(strCommand,strCommandImg,paraflag1)				--监控方法分配函数
	local ret,ResultTable
	local DId
	local temptab
	local DownUrl,RawUrl
	local picidx=0
	local i
	temptab=splittable(G_CycUrl,"	")
	DId=temptab[1]
	DownUrl=temptab[2]
	if string.find(DownUrl,"https://") then
		RawUrl = DownUrl
	end	
	if string.find(DownUrl,"[Hh][Tt][Tt][Pp]") then
		i=string.find(DownUrl,"//")
		DownUrl=string.sub(DownUrl,i+2,-1)
	end
	if string.sub(DownUrl,-1)=="/" then
		DownUrl=string.sub(DownUrl,1,-2)
	end
	ret,ResultTable=Method_Monitor(DownUrl,DId,RawUrl)
	return ret,ResultTable,picidx
end

function Device_VideoTest(strCommand,strCommandImg,paraflag1)				--视频测试方法分配函数
	local ret,ResultTable
	local TimeOut = G_timeOut
	local ImgTmpTb
	local picidx=0
	if strCommandImg~="" then
		ImgTmpTb=splittable(strCommandImg,",")
		if ImgTmpTb[2]==""or ImgTmpTb[2]==nil then
			TimeOut=ImgTmpTb[1]
			strCommandImg=""
		else
			TimeOut=ImgTmpTb[2]
			strCommandImg=ImgTmpTb[1]
		end
	end
	ret,ResultTable=Method_Video(strCommand,strCommandImg,TimeOut,paraflag1)
	return ret,ResultTable,picidx
end

function Device_VideoTest_sig(strCommand,strCommandImg,paraflag1)				--视频测试方法分配函数
	local ret,ResultTable
	local TimeOut = G_timeOut
	local ImgTmpTb
	local picidx=0
	ImgTmpTb=splittable(strCommandImg,",")
	if ImgTmpTb[2]~="" and ImgTmpTb[2]~=nil then
		TimeOut=ImgTmpTb[2]
		strCommandImg=ImgTmpTb[1]
	end
	ret,ResultTable=Method_Video_sig(strCommand,strCommandImg,TimeOut,paraflag1)
	return ret,ResultTable,picidx
end

function Device_WlanInfo(strCommand,strCommandImg,paraflag1)				--获取指定WIFI信息方法分配函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_WlanInfo(strCommand,paraflag1)
	return ret,ResultTable,picidx
end

function Device_GetWlanInfo(strCommand,strCommandImg,paraflag1)				--获取WIFI信息方法分配函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_GetWlanInfo(paraflag1)
	return ret,ResultTable,picidx
end

function Device_ConnectWlan(strCommand,strCommandImg,paraflag1)				--连接WIFI方法分配函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_ConnectWifi(strCommand,paraflag1)
	return ret,ResultTable,picidx
end

function Device_CheckNet(strCommand,strCommandImg,paraflag1)				--检查当前网络类型方法分配函数
	local picidx
	local parmTimeOut = G_timeOut
	local ret,ResultTable
	local parmTab=splittable(strCommandImg,",")
	local parmCommandImg=parmTab[1]
	if parmTab[2] and tonumber(parmTab[2]) then                   --获取图片比对超时时间，默认为60秒
		parmTimeOut=tonumber(parmTab[2])
	end
	ret,ResultTable,picidx=Method_CheckNet(strCommand,parmCommandImg,parmTimeOut,paraflag1)
	return ret,ResultTable,picidx
end

function Device_svc_wifi(strCommand,strCommandImg,paraflag1)				--打开关闭Wi-Fi方法
	local picidx
	local ret,ResultTable
	ret,ResultTable,picidx=Method_svc_wifi(strCommand)
	return ret,ResultTable,picidx
end

function Device_CheckFile(strCommand,strCommandImg,paraflag1)
	local picidx
	local TimeOut
	local ret,ResultTable
	ret,ResultTable,picidx=Method_CheckFile(strCommand,strCommandImg)
	return ret,ResultTable,picidx
end

function Device_KillProcess(strCommand,strCommandImg,paraflag1)				--杀进程方法分配函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_KillProcess(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_CaptureImg(strCommand,strCommandImg,paraflag1)				--截图方法分配函数
	local picidx=0
	local ret,ResultTable
	-- ret,ResultTable=Method_CaptureScreen()
	ret,ResultTable=Method_CapturePic(strCommandImg)
	return ret,ResultTable,picidx
end
function Device_ImgOcr(strCommand,strCommandImg,paraflag1)				--图片ocr识别
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_CaptureOcr(strCommand,strCommandImg)
	return ret,ResultTable,picidx
end
function Device_DiffOcr(strCommand,strCommandImg,paraflag1)				--计算图片ocr时差
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_DiffOcr(strCommand,strCommandImg)
	return ret,ResultTable,picidx
end
function Device_Voucher(strCommand,strCommandImg,paraflag1)				--获取咪咕自定义凭证
	local picidx=0
	local ret,ResultTable
		if strCommand and strCommand~='' then 
			if strCommand:find('%=') then
				ret,ResultTable=Method_Voucher(strCommand,strCommandImg)
			else
				ret,ResultTable=Method_CaptureOcr(strCommand,strCommandImg)
			end
		end
	return ret,ResultTable
end
function Device_readini(strCommand,strCommandImg,paraflag1)				--读取文件内容
	local picidx
	local numflag=0
	local ret,ResultTable
	local CompImgTab=splittable(strCommandImg,",")
	if CompImgTab[2] and tonumber(CompImgTab[2]) then                    --取图片比对超时时间，默认10秒
		numflag=tonumber(CompImgTab[2])
	end
	ret,ResultTable,picidx=Method_readini(strCommand,CompImgTab[1],numflag)
	return ret,ResultTable,picidx
end

function Device_readinicyc(strCommand,strCommandImg,paraflag1)			--文件单行内容读取并换行
	local picidx=0
	local splitflag
	local ret,ResultTable
	ret,ResultTable,picidx=Method_readinicyc(strCommand)
	return ret,ResultTable,picidx
end

function Device_FlowCalculation(strCommand,strCommandImg,paraflag1)				--性能监控方法分配函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_FlowCalculation(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_AdbCommand(strCommand,strCommandImg,paraflag1)				--adb命令输入函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable,picidx=Method_AdbCommand(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_AdbVersion(strCommand,strCommandImg,paraflag1)				--adb命令版本号输入函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable,picidx=Method_AdbVersion(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_Performance(strCommand,strCommandImg,paraflag1)		--cpu、内存监控
	local temptab
	local testtime
	local testmode
	local testps
	local picidx=0
	testps=strCommand
	temptab=splittable(strCommandImg,",")
	temptab[1]=string.lower(temptab[1])
	if string.find(temptab[1],"cpu") and string.find(temptab[1],"memory") then
		testmode="CPU|memory"
	elseif string.find(temptab[1],"cpu") then
		testmode="CPU"
	elseif string.find(temptab[1],"memory") then
		testmode="memory"
	else
		testmode="CPU|memory"
	end
	if temptab[2] and tonumber(temptab[2]) then
		testtime=tonumber(temptab[2])
	else
		testtime=300
	end
	DebugLogId("本次测试模式:"..testmode..",测试时间:"..testtime..",测试进程:"..testps)
	ret,ResultTable=Method_Performance(testps,testmode,testtime)
	return ret,ResultTable,picidx
end

function Device_RemoveCache(strCommand,strCommandImg,paraflag1)				--清理缓存方法分配函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_RemoveCache(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_deleteString(strCommand,strCommandImg,paraflag1)
	local picidx=0
	local ret,ResultTable
	ret,ResultTable,picidx=Method_deleteString(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_getview(strCommand,strCommandImg,paraflag1)
	local ret,ResultTable
	local ImgTmpTb
	local TimeOut = G_timeOut
	local picidx=0
	ImgTmpTb=splittable(strCommandImg,",")
	strCommandImg=ImgTmpTb[1]
	if ImgTmpTb[2] and tonumber(ImgTmpTb[2]) then        	--读取图片比对超时时间，默认60秒
		TimeOut=tonumber(ImgTmpTb[2])
	end
	ret,ResultTable,picidx=Method_getview(strCommand,strCommandImg,TimeOut)
	return ret,ResultTable,picidx
end

function Device_PACKET(strCommand,strCommandImg,paraflag1)				--抓包函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_PACKET(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end

function Device_GetTime(strCommand,strCommandImg,paraflag1)				--抓包函数
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_GetTime(strCommand,strCommandImg,paraflag1)
	return ret,ResultTable,picidx
end
function Device_MGhttp(urlCommand,jsonCommand,paraflag1)				--咪咕http分析上报
	local picidx=0
	local ret,ResultTable
	ret,ResultTable=Method_MGHTTP(urlCommand,jsonCommand,paraflag1)
	return ret,ResultTable,picidx
end
function Device_ShowHow(randomStr,testTime,paraflag1)				--生成指定结果
	local picidx=0
	local ret,ResultTable
	math.randomseed(tostring(os.time()):reverse():sub(1, 7)) -- –设置时间种子
	ret,ResultTable=Method_ShowHow(randomStr,testTime,paraflag1)
	return ret,ResultTable,picidx
end

ApiEdt="3.0.7"	

----------------------------------------------------底层API接口----------------------------------------------------
------------------------------------------------------------------------------------------------------------------
function GetAPI_UusensePath()				--脚本工作目录
	local retpath
	if G_EngineMode=="IOS" then
		retpath="/var/mobile/uusense/"
	elseif G_EngineMode=="Android" then
		retpath="/data/local/tmp/c/"
	end
	return retpath
end

function GetAPI_OsClock()				--计时器
	local td,tdtb,retosval
	if G_EngineMode=="IOS" then
		retosval=GetCurTime()
	elseif G_EngineMode=="Android" then
		retosval=_cfunc.GetCurTime()
	elseif G_EngineMode=="MacIOS" then
		retosval = GetCurTime()
	end
	return retosval
end

function GetAPI_SubTime(e,s)				--时间计算函数
	local ArguMentList
	local rettime,rettimestr,retval
	local ostime,osstr,idx,tale
	if G_EngineMode=="IOS" then
		retval=(e-s)/1000
	elseif G_EngineMode=="Android" then
		retval=(e-s)/1000
	elseif G_EngineMode=="MacIOS" then
		retval=(e-s)/1000
	end
	retval = DecPoint(retval,3)
	return retval
end

function GetAPI_VenderCode()				--厂商编码，参考附录：厂商编码
	local code
	if string.upper(TestMode)=="WLAN" then
		code="hzys-wlan"
	else
		code="hzys"
	end
	return code
end

function GetAPI_DevType()				--拨测设备型号
	local retdtype
	for i=1,3 do
		if G_EngineMode=="IOS" then
			retdtype=DevType()
		elseif G_EngineMode=="MacIOS" then
			local iostype = IOSPTYPE 
			retdtype = DevType()
			retdtype = iostype[retdtype]  or "MAC"
		elseif G_EngineMode=="Android" then
			retdtype=_cfunc.DevType()
		end
		if retdtype and retdtype~="" then break end
	end
	return retdtype
end

function GetApi_GetUidByPackageName(packageName)
	ret = _cfunc.Command("ps|grep "..packageName)
	end_str = string.find(ret,' ')
	return string.gsub(string.sub(ret,1,end_str),'_',''),string.sub(ret,1,end_str)
end

function GetAPI_DevCode()				--设备编码 手机终端用IMEI号 其他类型终端由厂商自己定义，如PC资产编码、GPRS猫编码等，但必须保证全局唯一
	local retimei
	if G_EngineMode=="IOS" then
		retimei=DevCode()
	elseif G_EngineMode=="MacIOS" then 
		retimei = DevCode() 
	elseif G_EngineMode=="Android" then
		retimei=_cfunc.DevCode()
	end
	return retimei
end

function GetAPI_SvcWifi(enable_flag)			--打开(1)，关闭(2)
	enable_flag = tonumber(enable_flag)
	if G_EngineMode=="IOS" then
		print("svc wifi")
	elseif G_EngineMode=="Android" then
		ret = _cfunc.SetWifiEnable(enable_flag)
	end
end

function GetAPI_NetFlag()				--网络类型
	local retnet = "UNKNOWN"
	if G_EngineMode=="IOS" then
		retnet=DevNetType()
		retnet=tonumber(retnet)
		if retnet==1 then
			retnet="2G"
		elseif retnet==2 then
			retnet="3G"
		elseif retnet==3 then
			retnet="WIFI"
		elseif retnet==4 then
			retnet="4G"
		end
	elseif G_EngineMode=="MacIOS" then 
		retnet = pcall(DevNetType) and DevNetType() or "MAC"
	elseif G_EngineMode=="Android" then
		retnet=_cfunc.DevNetType()
		retnet=tonumber(retnet)
		if retnet==1 then
			retnet="2G"
		elseif retnet==2 then
			retnet="3G"
		elseif retnet==3 then
			retnet="WIFI"
		elseif retnet==4 then
			retnet="4G"
		elseif retnet==5 then
			retnet="LAN"
		end
	end
	return retnet
end

function GetAPI_DeviceIP()				--IP地址
	local retip
	if G_EngineMode=="IOS" then
		retip=GetIp()
	elseif G_EngineMode=="Android" then
		retip=_cfunc.GetIp()
	end
	retip = retip or "127.0.0.1"
	return retip
end

function GetAPI_MobileNum()				--手机号码
	local retnum
	if G_EngineMode=="IOS" then
		retnum=DevMsim()
	elseif G_EngineMode=="Android" then
		retnum=_cfunc.DevMsim()
	end
	if not retnum or retnum=="" then
		retnum="nil"
	end
	retnum=string.gsub(retnum," ","")
	return retnum
end

function GetAPI_TestMode()				--测试类型
	if string.find(G_SysParms,"PLPHONE") then
		return "PLPHONE"
	elseif string.find(G_SysParms,"PCPHONE") then
		return "PCPHONE"
	else
		return "INPHONE"
	end
end

function GetAPI_url_down(url,timeOut)
	local buf_lenth = 0
	local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12=GetAPI_HttpVisit(url,timeOut)
	DebugLogId("GetAPI_url_down.GetAPI_HttpVisit返回值,访问结果r1="..r1..".  r10="..r10)
	local _,_,ret_code = string.find(r10,"HTTP%/1%.[01] (%d+) *")
	if ret_code == '200' then
		_,_,buf_lenth = string.find(r10,'Content%-Length: *(%d-)[\r\n]')
		DebugLogId('获取到的数据长度：'..buf_lenth)
		buf_lenth = tonumber(buf_lenth)
	elseif string.sub(ret_code,1,1) == '3' then
		_,_,url = string.find(r12,"[Ll]ocation: *(.-)[\n\r]")
		buf_lenth = GetAPI_url_down(url,timeOut)
	end
	return buf_lenth
end

function GetAPI_Location()				--拨测地址
	local retadd = 0,0
	if G_EngineMode=="IOS" then
		retadd=GetProvinceCode()..","..GetCityCode()
	elseif G_EngineMode=="Android" then
		retadd=_cfunc.GetProviceCode()..",".._cfunc.GetCityCode()
	end
	return retadd
end

function GetAPI_ScriptRoot()				--脚本文件夹路径
	local ArguMentList
	local retdir
	ArguMentList = splittable(G_SysParms,"|")
	if G_EngineMode=="IOS" then
		if DebugFlag then
			retdir="/var/mobile/uusense/scriptpic"
		else
			retdir=ScriptRoot()..ArguMentList[5]
		end
	elseif G_EngineMode=="MacIOS" then 
		retdir=ScriptRoot()
	elseif G_EngineMode=="Android" then
		if DebugFlag then
			retdir="/data/local/tmp/c/pic"
		else
			retdir=_cfunc.ScriptRoot().."/"..ArguMentList[5]
		end
	end
	return retdir
end

function GetAPI_ScriptContent()										--以文本方式读取脚本内容函数
	local scriptpath="."
	local ArguMentList
	local file
	local scriptcontent
	ArguMentList = splittable(G_SysParms,"|")
	if G_EngineMode=="IOS" then
		if DebugFlag then
			scriptpath="/var/mobile/uusense/scriptpic"
		else
			scriptpath=ScriptRoot()..ArguMentList[5]
		end
	elseif G_EngineMode=="Android" then
		if DebugFlag then
			scriptpath="/data/local/tmp/c"
		else
			scriptpath=_cfunc.ScriptRoot().."/"..ArguMentList[5]
		end
	elseif G_EngineMode=="MacIOS" then
		scriptpath = ScriptRoot()
		DebugLogId('ScriptRoot: '..scriptpath)
	end
	if TestMode=="Monitor" then
		file=io.open(scriptpath.."/alarm.lua","r")
	else
		file=io.open(scriptpath.."/script.lua","r")
	end
	scriptcontent=file:read('*all')
	file:close()
	return scriptcontent
end

function GetAPI_ResultPath()				--结果文件夹路径
	local ArguMentList
	local retdir
	ArguMentList = splittable(G_SysParms,"|")
	if G_EngineMode=="IOS" then
		retdir=ResultRoot()..G_Id.."/"
	elseif G_EngineMode=="MacIOS" then 
		retdir = ResultRoot()
		retdir = retdir:sub(-1,-1) ~= "/" and retdir.."/" or retdir
	elseif G_EngineMode=="Android" then
		retdir=_cfunc.ResultRoot().."/"..ArguMentList[2].."/"..ArguMentList[3].."/"..ArguMentList[4].."/"
	end
	return retdir
end

function GetAPI_signalPath()				--signal文件路径
	local retdir = "/"
	if G_EngineMode=="IOS" then
		retdir="/var/mobile/"
	elseif G_EngineMode=="Android" then
		retdir="/data/local/tmp/c/result/"..G_Id.."/"
	end
	return retdir
end

function GetAPI_DebugPath()				--Debug文件路径
	local retdir
	if G_EngineMode=="IOS" then
		retdir="/var/mobile/uusense/result/"..G_Id.."/"
	elseif G_EngineMode=="Android" then
		retdir="/data/local/tmp/c/result/"..G_Id.."/"
	end
	return retdir
end

function GetAPI_DelResultPath()				--删除结果文件夹路径
	local retdir
	if G_EngineMode=="IOS" then
		retdir="/var/mobile/uusense/result/"
	elseif G_EngineMode=="MacIOS" then
		retdir=ResultRoot()
		retdir = retdir:sub(-1,-1) ~= "/" and retdir.."/" or retdir
	elseif G_EngineMode=="Android" then
		retdir="/data/local/tmp/c/result/"
	end
	return retdir
end

function GetAPI_EnginePath()				--引擎文件夹路径
	local retdir
	if G_EngineMode=="IOS" then
		retdir="/usr/local/lib/lua/5.1/"
	elseif G_EngineMode=="Android" then
		retdir="/data/local/tmp/c/engine/"
	end
	return retdir
end

function GetAPI_EnginePicPath()				--引擎图片路径
	local retdir = "/"
	if G_EngineMode=="IOS" then
		retdir="/var/mobile/uusense/pic"
	elseif G_EngineMode=="Android" then
		retdir="/data/local/tmp/c/engine/pic"
	end
	return retdir
end

--Delay:延迟时间(单位：毫秒)
function GetAPI_Sleep(Delay)				--延时
	if G_EngineMode=="IOS" or G_EngineMode=="MacIOS" then
		Sleep(Delay*1000)
	elseif G_EngineMode=="Android" then
		_cfunc.Sleep(Delay*1000)
	end
end

function GetAPI_KillProcess(ps)				--杀进程
	if G_EngineMode=="IOS" then
		KillProcess(ps)
	elseif G_EngineMode=="Android" then
		_cfunc.Command('am force-stop '..ps)
		_cfunc.KillProcess(ps)
		if ps == "logcat" then GetAPI_KillProcess_byPID("logcat") end
	end
end

function GetAPI_KillProcess_byPID(pkgname)
	local tmpstr  = string.format("ps|grep %s",pkgname)
	local tmp_pidstr = _cfunc.Command(tmpstr)	--通过pid检查是否启动完成
	for pidstring in string.gmatch(tmp_pidstr,'([^\n]*)[\n\r]') do
		for i in string.gmatch(pidstring,'([^ ]*)') do
			if i == pkgname then
				local _,_,pid = string.find(pidstring,'( %d+)')	
				_cfunc.Command(string.format("kill -9 %s",pid))
			end
		end
	end
end

function GetAPI_WriteContentToTxt(str,path,writeModel)
	local file = io.open(path,writeModel)
	local time = GetAPI_OsClock()
	local DataLog = "["..os.date('%Y-%m-%d %H:%M:%S',string.sub(time,1,-4))..'.'..string.sub(time,-3,-1).."]	"..str.."\t\n"
	file:write(DataLog)
	file:close()
end

function GetAPI_Dump(value_table,non_flag,and_flag)							--{{'index="1"','resource-id="com.autosense:id/top2"'},{'index="1"','text="autosense"'}}
	-- pcall(GetAPI_DeleteDir,"/data/local/tmp/uubootstrap")
	GetAPI_KillProcess("uiautomator")
	pcall(function()local file = io.open("/sdcard/dump.xml",'w') file:close() local file = io.open("/data/local/tmp/uubootstrap/dump/dump.xml",'w') file:close() end)	
	local command = 'uiautomator runtest UUBootstrap.jar -c io.appium.android.bootstrap.Bootstrap -e output true -e isDumper true -e dumpPath /sdcard'
	local Ret_dump = _cfunc.Command(command)
	GetAPI_KillProcess("uiautomator")
	-- DebugLogId('Ret_dump:'..Ret_dump)
	local _,_,file_path = string.find(Ret_dump,'Dump Source At:(.-)"')
	if file_path then
		file_path = string.gsub(file_path,'\\','')
		DebugLogId("dump文件路径："..file_path)
	else
		GetAPI_WriteContentToTxt(_cfunc.Utf8ToGbk(Ret_dump),string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump_err_log.txt","a")
		DebugLogId("dump文件路径获取失败")
	end

	local ret,dump_content = pcall(function() local file=io.open(file_path..'/dump.xml','r') local content=file:read("*all") file:close() CopyFile(file_path..G_Pflg.."dump.xml",string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump.xml") GetAPI_Deletefile(file_path..G_Pflg.."dump.xml") return content end)
	if ret and dump_content ~= '' then
		-- GetAPI_WriteContentToTxt('文件内容：'..dump_content,string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump_content_log.txt","a")
		--DebugLogId('文件内容：'..dump_content)
		for i in string.gmatch(dump_content,'<node(.-)>') do
			for j=1,#value_table do
				if TabInStr(value_table[j],i,1) then
					local i_gbk = _cfunc.Utf8ToGbk(i)
					if not i_gbk or i_gbk =="" then
						i_gbk = i
					end
					DebugLogId('查找到控件信息，该控件信息为：'..i_gbk)
					if not non_flag or non_flag == false then
						return j,i
					else
						return -1,''
					end
				end
			end
		end
	-- else
		-- GetAPI_WriteContentToTxt('dump文件不存在：',string.sub(G_SysDbgPath,1,-2)..G_Pflg.."dump_content_log.txt","a")
	end
	if not non_flag or non_flag == false then
		return -1,''
	else
		return 0,''
	end
end

function GetAPI_att_cbt(strcommand)			--重组控件命令行 desc='男生 Link' index='1'，返回数组格式：{{'index="1"','resource-id="com.autosense:id/top2"'},{'index="1"','text="autosense"'}}
	DebugLogId('查询：'..strcommand)
	local tmp_table = splittable(strcommand,'|')
	local value_type_table = {}
	local value_table = {}
	if tmp_table[#tmp_table] == '' then
		tmp_table[#tmp_table] = nil
	end
	for i =1,#tmp_table do
		tmp_table[i] = splittable(tmp_table[i],"' ")
		local tmp_value_table = {}
		for j = 1,#tmp_table[i] do
			local tmp_value = ''
			for k in string.gmatch(tmp_table[i][j],"(.-)=") do
				tmp_value = k
			end
			for k in string.gmatch(tmp_table[i][j],"='(.*)") do
				if string.sub(k,-1,-1) == "'" then
					k = string.sub(k,1,-2)
				end
				tmp_value = tmp_value..'="'..k..'"'
			end
			DebugLogId('组合控件：'..tmp_value)
			tmp_value = transferred(tmp_value)
			table.insert(tmp_value_table,tmp_value)
		end
		table.insert(value_table,tmp_value_table)
	end
	return value_table
end

function transferred(value)
	value = string.gsub(value,'%(','%%(')
	value = string.gsub(value,'%)','%%)')
	value = string.gsub(value,'%[','%%[')
	value = string.gsub(value,'%]','%%]')
	value = string.gsub(value,'%+','%%+')
	value = string.gsub(value,'%-','%%-')
	value = string.gsub(value,'%*','%%*')
	value = string.gsub(value,'%?','%%?')
	value = string.gsub(value,'%^','%%^')
	value = string.gsub(value,'%$','%%$')
	return value
end

function GetAPI_att_cbt_get_view(strcommand)
	local tmp_table = splittable(strcommand,'|')
	local value_type_table = {}
	local value_table = {}
	if tmp_table[#tmp_table] == '' then
		tmp_table[#tmp_table] = nil
	end
	for i =1,#tmp_table do
		tmp_table[i] = splittable(tmp_table[i],"' ")
		local tmp_value_table = {}
		for j = 1,#tmp_table[i] do
			local tmp_value = ''
			for k in string.gmatch(tmp_table[i][j],"(.-)=") do
				tmp_value = k
			end
			for k in string.gmatch(tmp_table[i][j],"='(.*)") do
				if string.sub(k,-1,-1) == "'" then
					k = string.sub(k,1,-2)
				end
				tmp_value = tmp_value..'=".*'..k..'%w+'
			end
			table.insert(tmp_value_table,tmp_value)
		end
		table.insert(value_table,tmp_value_table)
	end
	return value_table
end

--keyvalue:按键值,keytype:按键类型,keydelay:延迟时间(单位：秒)
function GetAPI_Key(keyvalue,keytype,keydelay)
	local keyvalueint
	keydelay = TestMode and string.upper(TestMode)=="MONITOR" and 0 or keydelay
	if G_EngineMode=="IOS" then
		Key(keyvalue,keytype)
	elseif G_EngineMode=="MacIOS" then
		keyvalue = string.lower( keyvalue )
		Key(keyvalue)
	elseif G_EngineMode=="Android" then
		keydelay = G_re and 0 or keydelay
		keyvalueint=Key_Value(keyvalue)
		_cfunc.Key(keyvalueint,keytype)
	end
	GetAPI_Sleep(keydelay)
end

function Key_Value(keyvalue)
	local Value1={"F","B","CALL","ENDCALL","UP","DOWN","LEFT","RIGHT","CENTER","VOUP","VODOWN","POWER","CAMERA","TAB","SYM","ENTER","DEL","FOCUS","M","NOT","SEARCH","MUTE","PAGEUP","PAGEDOWN","O","VOMUTE"}
	--			主屏幕，回退，拨号，挂机，	上移，下移，   左移，  右移，导航键或确定键，音量增大，音量减小，电源键，拍照键，tab键，弹出输入法选择，回车键，删除键，拍照对焦键，菜单键，通知键，搜索键，话筒静音键，向上翻页，向下翻页，按钮型开始键，扬声器静音键
	local Value2={3,4,5,6,19,20,21,22,23,24,25,26,27,61,63,66,67,80,82,83,84,91,92,93,108,164}
	local ret=InTable(string.upper(keyvalue),Value1)
	return Value2[ret]
end

--touchx:X坐标,touchy:Y坐标,touchtype:触屏类型,touchdelay:延迟时间(单位：秒)
function GetAPI_Touch(touchx,touchy,touchtype,touchdelay)
	-- local start_clock = GetAPI_OsClock()
	if G_EngineMode=="IOS" then
		if touchtype==3 then	--长按
			Touch(touchx,touchy,1)
			Sleep(150)
			Touch(touchx,touchy,2)
		else
			Touch(touchx,touchy,touchtype)
		end
	elseif G_EngineMode=="MacIOS" then
		touchtype = touchtype==1 or touchtype==2 and 2 or touchtype==3 and 1 or touchtype	 ----按下松开，长按，
		local iosScale = IOSCALE 
		local itype = WDATYPE
		local iScale = iosScale[itype] or 1
		touchx,touchy = math.ceil(touchx/iScale),math.ceil(touchy/iScale)
		if DScreen then 
			DebugLogId(string.format("当前屏幕大小(%s*%s),适配后坐标-->(%s,%s)",G_now_width,G_now_height,touchx,touchy))
		end
		DebugLogId("mac touch = "..touchx..","..touchy..","..touchtype)
		Touch(touchx,touchy,touchtype)
	elseif G_EngineMode=="Android" then
		local temptable ={}
		if touchx > 0 and touchx < 1 then
			touchx = math.ceil(touchx*G_now_width)
			touchy = math.ceil(touchy*G_now_height)
			DebugLogId('当前屏幕大小('..G_now_width..'*'..G_now_height..'),适配后坐标('..touchx..','..touchy..')')
		elseif DScreen and G_click_coor == true then
			temptable = splittable(DScreen,"*")
			touchx = math.ceil(touchx*G_now_width/tonumber(temptable[1]))
			touchy = math.ceil(touchy*G_now_height/tonumber(temptable[2]))
			DebugLogId("DScreen not nil,After conversion: touchx="..touchx..",touchy="..touchy)
		end
		_cfunc.Touch(touchx,touchy,touchtype)
		-- os.execute(string.format("input tap %s %s",touchx,touchy))
	end
	-- local end_clock = GetAPI_OsClock()
-- 	first_time = GetAPI_SubTime(end_clock,start_clock)
	if not touchdelay then
		GetAPI_Sleep(2)
	else
		DebugLogId("停顿时间："..touchdelay)
		GetAPI_Sleep(touchdelay)
	end
	-- return first_time
end

--touchax:起点x坐标,touchay:起点y坐标,touchbx:终点x坐标,touchby:终点y坐标,touchdelay:延迟时间(单位：秒)
function GetAPI_Move(touchax,touchay,touchbx,touchby,touchdelay)
	if G_EngineMode=="IOS" then
		Move(touchax,touchay,touchbx,touchby)
		Sleep(touchdelay*1000)
	elseif G_EngineMode=="MacIOS" then
		if DScreen then 
			DebugLogId(string.format("当前屏幕大小(%s*%s),滑动坐标(%s,%s)-->(%s,%s)",G_now_width,G_now_height,touchax,touchay,touchbx,touchby))
		end
		Move(touchax,touchay,touchbx,touchby,0.1)
		Sleep(touchdelay*1000)
	elseif G_EngineMode=="Android" then
		local temptable ={}
		if touchax > 0 and touchax < 1 then
			touchax = math.ceil(touchax*G_now_width)
			touchay = math.ceil(touchay*G_now_height)
			touchbx = math.ceil(touchbx*G_now_width)
			touchby = math.ceil(touchby*G_now_height)
			DebugLogId('当前屏幕大小('..G_now_width..'*'..G_now_height..'),滑动坐标('..touchax..','..touchay..')-->('..touchbx..','..touchby..')')
		elseif DScreen and G_click_coor == true then
			temptable = splittable(DScreen,"*")
			touchax = math.ceil(touchax*G_now_width/tonumber(temptable[1]))
			touchay = math.ceil(touchay*G_now_height/tonumber(temptable[2]))
			touchbx = math.ceil(touchbx*G_now_width/tonumber(temptable[1]))
			touchby = math.ceil(touchby*G_now_height/tonumber(temptable[2]))
			-- touchdelay = 0
			DebugLogId("DScreen not nil,After conversion: touchax="..touchax..",touchay="..touchay..",touchbx="..touchbx..",touchby="..touchby)

		end
		_cfunc.Move(touchax,touchay,touchbx,touchby)
		_cfunc.Sleep(touchdelay*1000)
	end
end
--touchax:起点x坐标,touchay:起点y坐标,touchbx:终点x坐标,touchby:终点y坐标,touchdelay
--touchcx:起点x坐标,touchcy:起点y坐标,touchdx:终点x坐标,touchdy:终点y坐标,touchdelay
--延迟时间(单位：秒)
function GetAPI_DoubleMove(touchax,touchay,touchbx,touchby,touchcx,touchcy,touchdx,touchdy,touchdelay)
	if G_EngineMode=="IOS" then
		print("DBMove...")
		Sleep(touchdelay*1000)
	elseif G_EngineMode=="MacIOS" then
		DoubleMove(touchax,touchay,touchbx,touchby,touchcx,touchcy,touchdx,touchdy,0.5)
		Sleep(touchdelay*1000)
	elseif G_EngineMode=="Android" then
		DebugLogId("After conversion: toucha="..touchax..","..touchay..",touchb="..touchbx..","..touchby)
		DebugLogId("After conversion: touchc="..touchcx..","..touchcy..",touchd="..touchdx..","..touchdy)
		_cfunc.DoubleMove(touchax,touchay,touchbx,touchby,touchcx,touchcy,touchdx,touchdy)
		_cfunc.Sleep(touchdelay*1000)
	end
end

--imgFile:比对图片(文件名要求Iphone:x_y_w_h开头，Android:sx_sy_ex_ey开头)
function GetAPI_MatchScreen(imgFile,conflag)				--精确比图
	local imgret = -1
	local stclock = GetAPI_OsClock()

	if G_EngineMode=="IOS" then
		local tmplib=splittable(imgFile,"/")
		local tmptb=splittable(tmplib[#tmplib],"_")
		local onetime = G_OnecTime or 500
		imgret= BinaryMatchScreen(imgFile,tonumber(tmptb[1]),tonumber(tmptb[2]),tonumber(tmptb[3]),tonumber(tmptb[4]),onetime)
		if imgret==1 then
			imgret=0
		else
			imgret=1
		end
	elseif G_EngineMode=="MacIOS" then
		local Scale = IOSCALE[WDATYPE]
		DebugLogId(string.format( "script imgFile:%s\t%s",imgFile,Scale ))
		local s1,_,t1,t2,t3,t4=string.find(imgFile,"/(%d+)_(%d+)_(%d+)_(%d+)")
		t1,t2,t3,t4 = math.modf(t1/Scale),math.modf(t2/Scale),math.modf( t3/Scale ),math.modf( t4/Scale )
		t1,t2,t3,t4 = t1,t2,t3+t1,t4+t2
		-- t1,t2,t3,t4 = math.modf(t1/Scale),math.modf(t2/Scale),math.modf( (t1+t3)/Scale ),math.modf( (t2+t4)/Scale )
		local img=string.format('%sFILE/%s_%s_%s_%s_tmp.jpeg',G_SysDbgPath,t1,t2,t3,t4)
		local ret = CaptureRectangle(img) 
		DebugLogId(string.format("tmp img: %s\nCapture ret: %s\t%s",img,ret or "nil",ret==0.0))
		if ret~=0.0 then DebugLogId("CaptureRectangle false "..ret) return -1 end
		imgret= MatchJPEG(imgFile,img)
		DebugLogId(string.format("MatchJPEG ret :%s",imgret))
		imgret=math.floor(imgret)
	elseif G_EngineMode=="Android" then
		imgret=_cfunc.MatchScreen(imgFile)
	end
	endclock = GetAPI_OsClock()
	G_Imgtime = GetAPI_SubTime(endclock,stclock);
	-- DebugLogId(string.format("st:%s\tet:%s\tretval:%s",stclock,endclock,G_Imgtime))
	if string.find(imgFile,"_NOMATCH_") or (conflag and conflag ==true) then
		imgret = imgret==0 and 1 or 0
		DebugLogId("NOMATCH反比,imgret:"..imgret..'\t'..G_Imgtime)
	else
		DebugLogId("imgret:"..imgret.."		"..G_Imgtime)
	end

	return imgret
end

function GetAPI_MatchScreen2(imgFile,flag,conflag)				--精确多张比图
	local imgret = -1
	local tmptb,tmpteb
	local tmplib
	local tmppicreturn
	local tmpretlist
	local retx
	local startclock = GetAPI_OsClock();
	if G_EngineMode=="IOS" then
		local onetime = G_OnecTime or 500
		local capret = CaptureLocal("/var/mobile/match.png",onetime);
		tmpteb=splittable(imgFile,"|")
		for i=1,#tmpteb-1 do
			if capret ~=0 then imgret=-1 DebugLogId(string.format("CaptureLocal: ret=%s\ttime=%s",capret,onetime)) break end	--截图失败不比对
			tmplib=splittable(tmpteb[i],"/")
			tmptb=splittable(tmplib[#tmplib],"_")
			imgret = BinaryMatchFile("/var/mobile/match.png",tmpteb[i],tonumber(tmptb[1]),tonumber(tmptb[2]),tonumber(tmptb[3]),tonumber(tmptb[4]),3000);
			if imgret==1 then
				imgret=i
				break
			else
				imgret=-1
			end
		end
	elseif G_EngineMode=="Android" then
		-- DebugLogId("GetAPI_MatchScreen2: 进入开始比图")
		if flag==0 then
			imgret=_cfunc.MatchScreen2(imgFile,0)
			imgret=tonumber(imgret)
		else
			-- DebugLogId("GetAPI_MatchScreen2: 进入开始比图，flag=1")
			-- DebugLogId("GetAPI_MatchScreen2: 进入开始比图   "..imgFile)
			_,tmppicreturn=_cfunc.MatchScreen2(imgFile,1)
			imgret=1
			DebugLogId("tmppicreturn："..tmppicreturn)
			tmpretlist=splittable(tmppicreturn,"|")           -- -1|-1
			for i = 1,#tmpretlist do
				if tonumber(tmpretlist[i])==-1 then
					imgret=-1
					break
				end
			end
		end
		DebugLogId("GetAPI_MatchScreen2: 比图结束")
	end
	local endclock = GetAPI_OsClock();
	G_Imgtime = GetAPI_SubTime(endclock,startclock)
	if string.find(imgFile,"_NOMATCH_") or (conflag and conflag ==true) then
		if not tmpretlist then
			imgret = imgret==-1 and 1 or -1
			DebugLogId("NOMATCH反比,imgsret:"..imgret..'\t'..G_Imgtime)
		else
			imgret=1
			for i=1,#tmpretlist do
				if tonumber(tmpretlist[i])==0 then
					imgret=-1
					break
				end
			end
		end
	else
		DebugLogId("imgsret:"..imgret.."		"..G_Imgtime)
	end

	return imgret
end

--fullimg:全屏图片全路径
--imgFile:比对图片(文件名要求Iphone:x_y_w_h开头,Android:sx_sy_ex_ey开头)
function GetAPI_MatchFileImg(fullimg,imgFile)				--模糊比纯色图片
	local imgret = -1
	local tmptb
	local tmplib
	if G_EngineMode=="IOS" then
		tmplib=splittable(imgFile,"/")
		tmptb=splittable(tmplib[#tmplib],"_")
		imgret= BinaryMatchFile(fullimg,imgFile,tonumber(tmptb[1]),tonumber(tmptb[2]),tonumber(tmptb[3]),tonumber(tmptb[4]),30000)
		if imgret==1 then
			imgret=0
		else
			imgret=1
		end
	elseif G_EngineMode=="Android" then
		imgret=_cfunc.MatchBmp(imgFile,fullimg)
	end
	DebugLogId("imgret="..imgret)
	return imgret
end

function GetAPI_MatchScreenEX(imgFile,tempimg,ScriptPath,CompImage,conflag)												--模糊比对
	local imgret,resx,resy = -1,-1,-1
	local startclock = GetAPI_OsClock()
	if G_EngineMode=="IOS" then
		print("模糊比对")
	elseif G_EngineMode=="Android" then
		local touchax,touchay=0,0
		local rp_x ,rp_y = 0,0
		local touchbx,touchby=G_now_width,G_now_height
		if CompImage and CompImage~='' then
			touchax,touchay,touchbx,touchby,rp_x,rp_y = GetAPI_getCoorByResPow(CompImage,G_now_width,G_now_height)
			tempimg = ScriptPath..G_Pflg..tostring(touchax).."_"..tostring(touchay).."_"..tostring(touchbx).."_"..tostring(touchby).."_".."tmp.bmp"
			GetAPI_CaptureRectangle(tempimg)
		else
			GetAPI_CaptureImg(tempimg,11)
		end
		imgret,resx,resy=_cfunc.match_resize(tempimg,imgFile,rp_x,rp_y,tempimg,0,0)
		-- imgret,resx,resy=_cfunc.MatchGrayBmp(imgFile,tempimg,0,0,0,0)
		local endclock = GetAPI_OsClock()
		G_Imgtime = GetAPI_SubTime(endclock,startclock)

		if tonumber(imgret)>=90 then
			imgret = 0
		else
			imgret = -1
		end
		if string.find(imgFile,"_NOMATCH_") or (conflag and conflag==true) then
			if imgret~=0 then
				imgret=0
			else
				imgret=-1
			end
			DebugLogId("NOMATCH反比,imgsret:"..imgret..'\t'..G_Imgtime)
		else
			DebugLogId("imgret="..imgret.."    "..resx..","..resy..'\t'..G_Imgtime)
		end

	end
	return imgret,resx,resy
end

function GetAPI_getCoorByResPow(CompImage,now_width,now_height)
	local coor_table = splittable(CompImage,'_')
	local rp_x,rp_y
	local touchax,touchay,touchbx,touchby = tonumber(coor_table[1]),tonumber(coor_table[2]),tonumber(coor_table[3]),tonumber(coor_table[4])
	if DScreen then
		temptable = splittable(DScreen,"*")
		touchax = math.ceil(touchax*now_width/tonumber(temptable[1]))
		touchay = math.ceil(touchay*now_height/tonumber(temptable[2]))
		touchbx = math.ceil(touchbx*now_width/tonumber(temptable[1]))
		touchby = math.ceil(touchby*now_height/tonumber(temptable[2]))
		touchax = touchax - G_Fuzzy_Offset
		touchay = touchay - G_Fuzzy_Offset
		touchbx = touchbx + G_Fuzzy_Offset
		touchby = touchby + G_Fuzzy_Offset
		if touchax < 0 then
			touchax = 0
		end
		if touchay < 0 then
			touchay = 0
		end
		if touchbx > now_width then
			touchbx = now_width
		end
		if touchby > now_height then
			touchby = now_height
		end
		rp_x = math.ceil(tonumber(temptable[1])*(touchbx-touchax)/now_width)
		rp_y = math.ceil(tonumber(temptable[2])*(touchby-touchay)/now_height)
	end
	return touchax,touchay,touchbx,touchby,rp_x,rp_y
end

function GetAPI_ClearSms()				--清理短信
	if G_EngineMode=="IOS" then
		ClearSms()
	elseif G_EngineMode=="Android" then
		_cfunc.ClearSms()
	end
end

function GetAPI_ClearLog()				--清理手机环境
	if G_EngineMode=="IOS" then
		local fb
		fb = io.open("/var/mobile/autosense.log","wb")
		fb:close()
	elseif G_EngineMode=="Android" then
		_cfunc.Command("rm /data/data/com.autosense/files/ser/log/d20*.log")
		_cfunc.Command("rm /data/data/com.autosense/files/log/f20*.log")
		_cfunc.Command("rm /data/data/com.autosense/files/daemproc/log/screxecd2*.log")
		_cfunc.Command("echo > /data/data/com.autosense/files/daemproc/log/signalstrength.log")
		_cfunc.Command("rm -r /data/log/*")
		_cfunc.ClearSms()
	end
end

--SPOrder:指令,DestCode:特服号
function GetAPI_SendSms(SPOrder,DestCode)				--发送短信
	local retval
	if G_EngineMode=="IOS" then
		retval=1
	elseif G_EngineMode=="Android" then
		retval=0
		_cfunc.SendSms(DestCode,SPOrder)
	end
	return retval
end

--TimeOut:超时时间,RecvContent:接收内容(特服号-短信内容|特服号-短信内容...),Arga:回调函数名
function GetAPI_RecvSms(TimeOut,CompContent,FlowStep)				--收短信
	local retval,retidx
	if G_EngineMode=="IOS" then
		if G_RelDeviceName=="IPHONE5" or G_RelDeviceName=="IPHONE6" then
			retval,retidx=RecvSms(CompContent,TimeOut*1000,"CallBack_SmsIosEx")
		else
			retval,retidx=RecvSms(CompContent,TimeOut*1000,"CallBack_SmsIos")
		end
	elseif G_FileDeviceName=="SMN9008" then
		retval,retidx=_cfunc.RecvSms(TimeOut,CompContent,"CallBack_SmsAndroid")
	-- elseif G_FileDeviceName=="PRO6" then
-- 		retval,retidx=_cfunc.RecvSms(TimeOut,CompContent,"CallBack_SmsAndroid")
	elseif G_EngineMode=="Android" then
		retval,retidx=CallBack_SmsAndroidEx(TimeOut,CompContent)
	end
	--把获取到的验证码上报给后台
	if FlowStep==2 and G_Captcha then
		DebugLogId("上传验证码...")
		UpLoad_Identify()
	end
	return retval,retidx
end

function GetAPI_CreateDumpDir()
	local info
	if not pcall(function() local f=io.open('/data/local/tmp/uubootstrap/dump/dump.xml') f:close() end) then
		GetAPI_CommandEx('mkdir /data/local/tmp/uubootstrap')
		GetAPI_CommandEx('mkdir /data/local/tmp/uubootstrap/dump')
		pcall(function() local ffx = io.open("/data/local/tmp/uubootstrap/dump/dump.xml","w") ffx:close() end) 
	end
	local list = GetAPI_Command('ls -l /data/local/tmp')
	for uustr in string.gmatch(list,"([^\n]*)[\n\r]") do
		for i in string.gmatch(uustr,'([^ ]*)') do
			if i == "uubootstrap" then
				info = string.match(uustr,'([^\n]-) ')
			end
		end
	end
	
	if info ~= 'drwxrwxrwx' then 
		GetAPI_CommandEx('su && chmod 777 /data/local/tmp/uubootstrap')
		GetAPI_CommandEx('su && chmod 777 /data/local/tmp/uubootstrap/dump')
		GetAPI_CommandEx("su && chmod 777 /data/local/tmp/uubootstrap/dump/dump.xml")
		local fx = io.open("/sdcard/dump.xml","w")
		fx:close()
		GetAPI_CommandEx("su && chmod 777 /sdcard/dump.xml")
	end
end

function GetAPI_CommandEx(command)
	DebugLogId("start command "..command)
	if G_FileDeviceName ~= 'SMG9008V' and G_FileDeviceName ~= 'SMG9008W' and G_FileDeviceName ~= 'SMG9009W' then
		os.execute(command)
		os.execute('exit')
	elseif G_EngineMode=="Android" then
		command = string.gsub(command,'&&','\n')
		_cfunc.Command(command..'\nexit')
	end
	DebugLogId("completed command "..command)
end

function CallBack_SmsAndroidEx(TimeOut,InputSMSMessgae)
	local startime,endtime
	local OutputSMSMessgae,OutputList,InputSMSList
	local Outputsourcecode,Outputrecvcontent
	local InputValue,Inputsourcecode,Inputkeyword
	local retval,listensucidx=-1,-1
	local breakflag
	local tempnum
	InputSMSList = splittable(InputSMSMessgae,"|")
	startime = GetAPI_OsClock()
	DebugLogId("--------------------开始读取收件箱短信--------------------")
	while 1 do
		endtime = GetAPI_OsClock()
		if GetAPI_SubTime(endtime,startime)>=tonumber(TimeOut) then
			DebugLogId("测试时间到,退出")
			break
		end
		OutputSMSMessgae=_cfunc.PopSms()
		if OutputSMSMessgae~="" then
			OutputList = splittable(OutputSMSMessgae,"|")               ---格式:接收号码|发送时间|接收时间|短信内容
			Outputsourcecode = OutputList[1]
			Outputrecvcontent = OutputList[4]
			G_GlbVocMsg=GetGVM("收到(%s)短信,内容：",{Outputsourcecode})
			G_GlbVocMsg=GetGVM("%s",{Outputrecvcontent})
			for i=1,#InputSMSList do
				InputValue=splittable(InputSMSList[i],"-")
				if #InputValue==1 and tempnum then
					Inputsourcecode=tempnum
					Inputkeyword=InputValue[1]
				elseif #InputValue==2 then
					Inputsourcecode = InputValue[1]                             ---需匹配的下行号码
					tempnum=Inputsourcecode
					Inputkeyword = InputValue[2]                                ---需匹配关健字
				else
					DebugLogId("传入比对参数有误...","脚本错误")
					return -1,-1
				end
				DebugLogId("比对特服号:"..Inputsourcecode..",比对关键字:"..Inputkeyword)
				DebugLogId("收到特服号:"..Outputsourcecode..",收到内容:"..Outputrecvcontent)
				if findword(Outputsourcecode,Inputsourcecode) and findword(Outputrecvcontent,Inputkeyword) then
					retval = 0
					listensucidx=i
					DebugLogId("匹配号码及关健字成功，接收号码："..Outputsourcecode)
					G_RecvNumber=Outputsourcecode                             --全局变量，用于回复短信时
					G_recvcontent=Outputrecvcontent
					DebugLogId("--------------------结束监听短信接收--------------------")
					FindCaptcha(Outputrecvcontent,Inputkeyword)
					breakflag=true
					break
				else
					DebugLogId("匹配号码及关健字失败")
					DebugLogId("--------------------继续监听短信接收--------------------")
				end
			end
		end
		if breakflag then
			break
		end
		_cfunc.Sleep(3000)
	end
	return retval,listensucidx
end

function CallBack_SmsAndroid(OutputSMSMessgae,InputSMSMessgae)				--安卓短信回调函数
	local i=1
	local InputSMSList,InputValue,Inputsourcecode,Inputkeyword
	local OutputList,Outputsourcecode,Outputrecvcontent
	local retval
	local tempnum
	listensucidx=0
	DebugLogId("--------------------开始监听短信接收--------------------")
	OutputList = splittable(OutputSMSMessgae,"|")               ---格式:接收号码|发送时间|接收时间|短信内容
	Outputsourcecode = OutputList[1]
	Outputrecvcontent = OutputList[4]
	InputSMSList = splittable(InputSMSMessgae,"|")
	G_GlbVocMsg=GetGVM("收到(%s)短信,内容：",{Outputsourcecode})
	G_GlbVocMsg=GetGVM("%s",{Outputrecvcontent})
	while i<=#InputSMSList do
		InputValue=splittable(InputSMSList[i],"-")
		if #InputValue==1 and tempnum then
			Inputsourcecode=tempnum
			Inputkeyword=InputValue[1]
		elseif #InputValue==2 then
			Inputsourcecode = InputValue[1]                             ---需匹配的下行号码
			tempnum=Inputsourcecode
			Inputkeyword = InputValue[2]                                ---需匹配关健字
		else
			DebugLogId("传入比对参数有误...","脚本错误")
			return -1,-1
		end
		DebugLogId("比对特服号:"..Inputsourcecode..",比对关键字:"..Inputkeyword)
		DebugLogId("收到特服号:"..Outputsourcecode..",收到内容:"..Outputrecvcontent)
		if findword(Outputsourcecode,Inputsourcecode) and findword(Outputrecvcontent,Inputkeyword) then
			retval = 0
			listensucidx=i
			DebugLogId("匹配号码及关健字成功，接收号码："..Outputsourcecode)
			G_RecvNumber=Outputsourcecode                             --全局变量，用于回复短信时
			G_recvcontent=Outputrecvcontent
			DebugLogId("--------------------结束监听短信接收--------------------")
			FindCaptcha(Outputrecvcontent,Inputkeyword)
			break
		else
			retval = -1
			listensucidx = -1
			DebugLogId("匹配号码及关健字失败")
			DebugLogId("--------------------继续监听短信接收--------------------")
		end
		i=i+1
	end
	return retval,listensucidx
end

function CallBack_SmsIosEx(Recvcode,RecvContent,CompContent)				--IOS短信回调函数
	local i=1
	local CompList,Compcode,Compkeyword,CompValue
	local retval
	local tempnum
	listensucidx=0
	DebugLogId("--------------------开始监听短信接收--------------------")
	CompList = splittable(CompContent,"|")
	G_GlbVocMsg=GetGVM("收到(%s)短信,内容：",{Recvcode})
	G_GlbVocMsg=GetGVM("%s",{RecvContent})
	while i<=#CompList do
		CompValue=splittable(CompList[i],"-")
		if #CompValue==1 and tempnum then
			Compcode=tempnum
			Compkeyword=CompValue[1]
		elseif #CompValue==2 then
			Compcode = CompValue[1]                             ---需匹配的下行号码
			tempnum=Compcode
			Compkeyword = CompValue[2]                                ---需匹配关健字
		else
			DebugLogId("传入比对参数有误...","脚本错误")
			return -1,-1
		end
		DebugLogId("比对特服号:"..Compcode..",比对关键字:"..Compkeyword)
		DebugLogId("收到特服号:"..Recvcode..",收到内容:"..RecvContent)
		if findword(Recvcode,Compcode) and findword(RecvContent,Compkeyword) then
			retval = 0
			listensucidx = i
			DebugLogId("匹配号码及关健字成功，接收号码："..Recvcode)
			G_RecvNumber=Recvcode                             --全局变量，用于回复短信时
			G_recvcontent=RecvContent
			DebugLogId("--------------------结束监听短信接收--------------------")
			FindCaptcha(RecvContent,Compkeyword)
			break
		else
			retval = -1
			listensucidx = -1
			DebugLogId("匹配号码及关健字失败")
			DebugLogId("--------------------继续监听短信接收--------------------")
		end
		i=i+1
	end
	return retval,listensucidx
end

function CallBack_SmsIos(Recvcode,RecvContent,CompContent)				--IOS短信回调函数
	local i=1
	local CompList,Compcode,Compkeyword,CompValue
	local retval
	local tempnum
	local a
	listensucidx=0
	DebugLogId("--------------------开始监听短信接收--------------------")

	G_GlbVocMsg=GetGVM("收到(%s)短信,内容：",{Recvcode})
	G_GlbVocMsg=GetGVM("%s",{RecvContent})
	while 1 do
		CompList = splittableEx(CompContent,"|",i)
		if not CompList then break end
		a=string.find(CompList,"-")
		if a then
			Compcode=string.sub(CompList,1,a-1)
			tempnum=Compcode
			Compkeyword=string.sub(CompList,a+1,-1)
		else
			if tempnum then
				Compcode=tempnum
				Compkeyword=CompList
			else
				DebugLogId("传入比对参数有误...","脚本错误")
				return -1,-1
			end
		end
		DebugLogId("比对特服号:"..Compcode..",比对关键字:"..Compkeyword)
		DebugLogId("收到特服号:"..Recvcode..",收到内容:"..RecvContent)
		if findword(Recvcode,Compcode) and findword(RecvContent,Compkeyword) then
			retval = 0
			listensucidx = i
			DebugLogId("匹配号码及关健字成功，接收号码："..Recvcode)
			G_RecvNumber=Recvcode                             --全局变量，用于回复短信时
			G_recvcontent=RecvContent
			DebugLogId("--------------------结束监听短信接收--------------------")
			FindCaptcha(RecvContent,Compkeyword)
			break
		else
			retval = -1
			listensucidx = -1
			DebugLogId("匹配号码及关健字失败")
			DebugLogId("--------------------继续监听短信接收--------------------")
		end
		i=i+1
	end
	return retval,listensucidx
end

--URL:访问的网址
function GetAPI_OpenBrowser(URL)				--自动打开浏览器函数
	local retval
	if G_EngineMode=="IOS" then
		print ("visiturl")                          --需新增
	elseif G_EngineMode=="Android" then
		URL = not URL:find("://") and "http://"..URL or URL
		retval=_cfunc.OpenBrowser(URL)
	end
	return retval
end

--APPName:打开的应用程序名称
function GetAPI_Open_App(APPName)				--自动打开APP引擎函数
	local tmptb,APPNameTb,APPAutoTb
	local indata
	local i
	local retval=0
	APPNameTb={"飞信","MM商城","和阅读","和通讯录","139邮箱","12580","和地图","和动漫","和生活","和视频","和游戏","灵犀","咪咕音乐","手机报","优酷视频","爱奇艺","和视界","和视频","腾讯","搜狐","UC"}
	APPAutoTb={
	"cn.com.fetion|cn.com.fetion.activity.LaunchActivity",
	"com.aspire.mm|com.aspire.mm.app.HotSaleActivity",
	"com.ophone.reader.ui|com.cmread.bplusc.bookshelf.LocalMainActivity",
	"com.chinamobile.contacts.im|com.chinamobile.contacts.im.LoadingPage",
	"cn.cj.pe|cn.cj.pe.activity.PeSplashActivity",
	"cn.com.umessage.client12580|cn.com.umessage.client12580.presentation.view.StartActivity",
	"com.autonavi.cmccmap|com.autonavi.minimap.Splashy",
	"com.hisunflytone.android|com.cmdm.android.controller.InitActivity",
	"com.whty.wicity.china|com.whty.wicity.china.home.WicityHomeNewActivity",
	"com.cmcc.mobilevideo|com.cmcc.mobilevideo.StartActivity",
	"cn.emagsoftware.gamehall|cn.emagsoftware.gamehall.GameHallShowcase",
	"com.iflytek.cmcc|com.iflytek.viafly.SplashActivity",
	"cmccwm.mobilemusic|cmccwm.mobilemusic.ui.activity.PreSplashActivityMigu",
	"com.newspaper.client|com.cmread.bplusc.reader.ui.mainscreen.MainScreen",
	"com.youku.phone|com.youku.phone.ActivityWelcome",
	"com.qiyi.video|com.qiyi.video.WelcomeActivity",
	"cn.cmvideo.isj|com.cmcc.mobilevideo.StartActivity",
	"com.cmcc.mobilevideo|com.cmcc.mobilevideo.StartActivity",
	"com.tencent.qqlive|com.tencent.qqlive.ona.activity.WelcomeActivity",
	"com.sohu.sohuvideo|com.sohu.sohuvideo.FirstNavigationActivityGroup",
	"com.UCMobile|com.UCMobile.main.UCMobile"
	}
    if string.find(APPName,"|") then
		indata=APPName
	elseif InTable(APPName,APPNameTb) then
		i=InTable(APPName,APPNameTb)
		indata=APPAutoTb[i]
	else
		DebugLogId("自动起进程传入参数有误!","脚本错误")
		return 1
	end

	if G_EngineMode=="IOS" then
		DebugLogId("起进程...")
	elseif G_EngineMode=="Android" then
		tmptb=splittable(indata,"|")
		DebugLogId("起进程参数1:"..tmptb[1])
		DebugLogId("起进程参数2:"..tmptb[2])
		_cfunc.OpenApplication(tmptb[1],tmptb[2])
	end

	return retval
end

function GetAPI_OpenAutosense()				--自动把Autosense拉到前台
	if G_EngineMode=="Android" then
		_cfunc.OpenApplication("com.autosense","com.autosense.ui.activity.MainActivity")
	end
end

--AllPath:图片全路径
function GetAPI_CaptureImg(AllPath,tempflag)				--截图
	local cret
	if G_EngineMode=="IOS" then
		cret=CaptureLocal("/var/mobile/a.png",5000)
		if cret ~=0 then DebugLogId(string.format("CaptureLocal: ret=%s\ttime=%s",cret,5000)) end
		CopyFile("/var/mobile/a.png",AllPath)
	elseif G_EngineMode=="MacIOS" then
		tempflag = tempflag or 1
		DebugLogId("mac jpeg :"..tempflag.."\t"..AllPath)
		cret = CaptureAsJpg(AllPath,tempflag)	--0,1,2
	elseif G_EngineMode=="Android" then
		if tempflag then
			cret=_cfunc.Capture(AllPath)
		else
			DebugLogId("截取jpg屏幕图片...")
			cret=_cfunc.CaptureAsJpg(AllPath,50)
		end
	end
	return cret
end

--Dir:要创建的文件夹路径
function GetAPI_CreateDir(Dir)				--创建文件夹
	local cret
	if G_EngineMode=="IOS" then
		cret=CreateDir(Dir)
	elseif G_EngineMode=="MacIOS" then
		cret = CreateDir(Dir)
	elseif G_EngineMode=="Android" then
		cret=_cfunc.CreateDir(Dir)
	end
	return cret
end

--Dir:要删除的文件夹路径
function GetAPI_DeleteDir(Dir)				--删除文件夹
	local cret
	if G_EngineMode=="IOS" then
		cret=DeleteDir(Dir)
	elseif G_EngineMode == 'MacIOS' then
		cret = DeleteFile(Dir)
	elseif G_EngineMode=="Android" then
		cret=_cfunc.DeleteDir(Dir)
	end
	return cret
end

function GetAPI_Deletefile(Delpath)				--删除文件
	local cret
	if G_EngineMode=="IOS" then
		cret=DeleteFile(Delpath)
	elseif G_EngineMode == 'MacIOS' then
		cret = DeleteFile(Delpath)
	elseif G_EngineMode=="Android" then
		cret=_cfunc.DeleteFile(Delpath)
	end
	return cret
end

--zipname:压缩包全路径,zuhestr:需压缩的各文件全路径(全路径1|全路径2|...)
function GetAPI_Zip(zipname,zuhestr)				--压缩文件
	local zipret
	if G_EngineMode=="IOS" then
		zuhestr=string.sub(zuhestr,1,-2)
		zipret=Zip(zipname,zuhestr)
	elseif G_EngineMode=="Android" then
		zipret=_cfunc.Zip(zipname,zuhestr)
	-- elseif G_EngineMode=="MacIOS" then
	-- 	zuhestr=string.sub(zuhestr,1,-2)
	-- 	zipret=Zip(zipname,zuhestr)
	end
	return zipret
end

function GetAPI_Unzip(zipname,zuhestr)				--解压文件
	local zipret
	if G_EngineMode=="IOS" then
		zipret=Unzip(zipname,zuhestr)
	elseif G_EngineMode=="Android" then
		zipret=_cfunc.Unzip(zipname,zuhestr)
	end
	return zipret
end

--excsql:SQL语句,DBName:数据库全路径
function GetAPI_ExecSql(excsql,DBName)				--写数据库
	local retval
	if G_EngineMode=="IOS" then
		retval=ExecSql(excsql,DBName)
	elseif G_EngineMode=="Android" then
		retval=_cfunc.ExecSql(excsql,DBName)
	end
	return retval
end

function GetAPI_DnsInfo(DnsUrl)				--DNS
	local Dnstime,DnsIP
	if G_EngineMode=="IOS" then
		print("DNS")
	elseif G_EngineMode=="Android" then
		Dnstime,DnsIP=_cfunc.Dns(DnsUrl)
	end
	return Dnstime,DnsIP
end

function GetAPI_PingInfo(Purl,Ptimes,Ppcgsize)				--PING
	local ret,pvalue,ping_avgtime = -1,0,0
	if G_EngineMode=="IOS" then
		ret,pvalue=Ping(Purl,Ptimes,Ppcgsize)
	elseif G_EngineMode=="Android" then
		--pvalue=_cfunc.Ping(Purl,Ptimes,Ppcgsize)
		pvalue,ping_avgtime=GetAPI_Ping_CMD(Purl,Ptimes,Ppcgsize)		
		if pvalue and pvalue~="" then
			ret=0
		else
			DebugLogId("the ping return value is empty from --> "..Purl)
			ret=1
		end
	end
	DebugLogId("ping返回值："..pvalue..ping_avgtime)
	return ret,pvalue,ping_avgtime
end

function GetAPI_Ping_CMD(Purl,Ptimes,Ppcgsize)
	local rec_packet = 0
	local trans_packet = 0
	local ping_time,ping_ttl = {},{}
	local ret,ping_content 
	local _,ping_avgtime
	GetAPI_Deletefile('rm -r /data/local/tmp/c/ping_test.txt')
	local cmdstr = string.format('ping -c %s -s %s %s > /data/local/tmp/c/ping_test.txt',Ptimes,Ppcgsize,Purl)
	_cfunc.Command(cmdstr)

	local starttime = GetAPI_OsClock()
	while true do
		local endtime = GetAPI_OsClock()
		if GetAPI_SubTime(endtime,starttime) > 60 then
			DebugLogId("Ping返回结果超时")
			break
		end
		ret,ping_content = pcall(function() local file = io.open("/data/local/tmp/c/ping_test.txt","r") local content = file:read("*all") file:close() return content end)
		if string.find(ping_content,"rtt min/avg/max/mdev") then
			GetAPI_Sleep(1)
			_,_,_,ping_avgtime = string.find(ping_content,"rtt min/avg/max/mdev = (.-)/(.-)/") 
			break
		end
	end		
	DebugLogId("命令行ping的返回值："..ping_content)				
	
	for i,j,k in string.gmatch(ping_content,'icmp_seq=(%d+) *ttl=(%d+) *time=(.-) *ms') do
		table.insert(ping_time,k)
		table.insert(ping_ttl,j)
	end
	for i,k in string.gmatch(ping_content,'(%d+) -packets *transmitted, *(%d+) *received') do
		trans_packet = tonumber(i)
		rec_packet = tonumber(k)
	end
	local ret_p = ''
	if rec_packet == trans_packet then
		for i = rec_packet,1,-1 do
			ret_p = ret_p..tostring(i)..','..ping_time[i]..','..ping_ttl[i]..',0|'
		end
	elseif rec_packet == 0 then
		for i = tonumber(Ptimes),1,-1 do
			ret_p = ret_p..tostring(i)..',-1,0,0|'
		end
	else
		for i = rec_packet,1,-1 do
			ret_p = ret_p..tostring(i)..','..ping_time[i]..','..ping_ttl[i]..',0|'
		end
		local tmp_ret_p = ''
		for i = Ptimes,rec_packet+1,-1 do
			tmp_ret_p = tmp_ret_p..tostring(i)..',-1,0,0|'
		end
		ret_p = tmp_ret_p..ret_p
	end
	return ret_p,ping_avgtime
end

function GetAPI_Ping(Purl,Ptimes,Ppcgsize)
	local ret,pvalue = GetAPI_PingInfo(Purl,Ptimes,Ppcgsize)
	local ret_ping = ''
	if ret ~=0 then
		pvalue = ''
		for i = Ptimes,1,-1 do
			pvalue = pvalue..tostring(i)..',-1,0,0|'
		end
	end
	if string.sub(pvalue,-1,-1) == '|' then
		pvalue = string.sub(pvalue,1,-2)
	end
	local tmp_ping_table = splittable(pvalue,"|")
	for i =1,#tmp_ping_table do
		local tmp_tratime_tab = splittable(tmp_ping_table[i],',')
		if tmp_tratime_tab[2] == -1 or tmp_tratime_tab[2] == '-1' or tmp_tratime_tab[2] == '0' or tmp_tratime_tab[2] == 0 then
			ret_ping = ret_ping..'0,'
		else
			ret_ping = ret_ping..'1,'
		end
	end
	if string.sub(ret_ping,-1,-1) == ',' then
		ret_ping = string.sub(ret_ping,1,-2)
	end
	return ret_ping,pvalue
end

function GetAPI_HttpClient(HUrl,DownUrl,url,TimeOut)				--HTTP下载
	local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12
	local ret,result
	local restb
	if G_EngineMode=="IOS" then
		-- NSE_DNS_FAIL         -1
		-- NSE_DNS_NETWORK      -2
		-- NSE_DNS_TIMEOUT      -3
		-- NSE_CONNECT_FAIL     -4
		-- NSE_CONNECT_NET      -5
		-- NSE_CONNECT_TIMEOUT  -6
		-- NSE_SSL_FAIL         -7
		-- NSE_SSL_TIMEOUT      -8
		-- NSE_FB_FAIL          -9
		-- NSE_FB_TIMEOUT       -10
		-- NSE_DL_FAIL          -11
		-- NSE_DL_TIMEOUT       -12
		-- NSE_REDIRECT_FAIL    -13
		-- NSE_REDIRECT_TIMEOUT -14
		ret,result,r11=DL_Page(url)
		if ret==0 then
			r1=6
		else
			r1=0
		end
		restb=splittable(result,"|")
		r10=restb[1]
		r4=restb[2]
		r3=restb[4]
		r6=restb[6]
		r7=restb[7]
		r12=r11
	elseif G_EngineMode=="Android" then
		if TimeOut then
			r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12=_cfunc.HttpClient2(HUrl,DownUrl,tonumber(TimeOut))
		else
			r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12=_cfunc.HttpClient2(HUrl,DownUrl)
		end
	end
	return r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12
end

function GetAPI_FileLength(Path)				--获取文件大小函数
	local ret
	for i=1,6 do
		if G_EngineMode=="IOS" then
			ret=GetFileLength(Path)
		elseif G_EngineMode == 'MacIOS' then 
			ret = GetFileLength(Path)
		elseif G_EngineMode=="Android" then
			ret=_cfunc.GetFileLength(Path)
		end
		if ret >0 then break end
		GetAPI_Sleep(5)
	end
	return ret
end

function GetAPI_VM2_Start()				--视频测试启动函数
	local ip
	local port
	local cache=2
	port = PortFlag and 8088 or 80
	if G_EngineMode=="IOS" then
		require "lua_vm2"
		ip=GetIp()
		VM2_Start(ip,port,cache)
	elseif G_EngineMode=="Android" then
		ip=_cfunc.GetIp()
		DebugLogId("ip: "..ip)
		_cfunc.VM2_Start(ip,8088,cache)
	end
end

function GetAPI_VM2_Stop()				--视频测试结束函数
	if G_EngineMode=="IOS" then
		VM2_Stop()
	elseif G_EngineMode=="Android" then
		_cfunc.VM2_Stop()
	end
end

function GetAPI_GetFileName(str)
    local idx = str:match(".*/([^/]*%.%w+) *$")
    if idx then
        return idx
    else
        return str
    end
end

function GetAPI_VM2_Video_ID()				--视频测试获取ID
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_ID()
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_ID()
	end
	return ret
end

function GetAPI_VM2_Video_Force_Check()
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Force_Check()
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Force_Check()
	end
end

function GetAPI_VM2_Video_Duration(Id)				--视频测试获取视频长度
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Duration(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Duration(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Buffer_Count(Id)				--视频测试获取缓冲次数
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Buffer_Count(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Buffer_Count(Id)
	end
	return ret
end

function GetAPI_VM2_Video_URL(Id)				--视频测试获取视频网址
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_URL(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_URL(Id)
	end
	return ret
end

function GetAPI_VM2_Video_M3U8_Addr(Id)				--视频测试获取m3u8文件服务器网址
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_M3U8_Addr(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_M3U8_Addr(Id)
	end
	return ret
end


function GetAPI_deleteString(times)
	_cfunc.Backspace(times)
end

function GetAPI_VM2_Video_DL_Rate(Id)				--视频测试获取视频下载速率
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_DL_Rate(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_DL_Rate(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Connect_Time(Id)				--视频测试视频连接时长
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Connect_Time(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Connect_Time(Id)
	end
	return ret
end

function GetAPI_VM2_Video_First_Frame_PTS(Id)				--视频测试视频首帧播放时长
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_First_Frame_PTS(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_First_Frame_PTS(Id)
	end
	return ret
end

function GetAPI_VM2_Video_DL_Time(Id)					--视频测试视频下载时长
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_DL_Time(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_DL_Time(Id)
	end
	return ret
end

function GetAPI_VM2_Video_First_PKT_Time(Id)				--视频测试视频首包时长
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_First_PKT_Time(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_First_PKT_Time(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Width(Id)				--视频测试视频宽度
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Width(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Width(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Set_Play_Point()		--视频计时点设置
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Set_Play_Point()
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Set_Play_Point()
	end
end

function GetAPI_VM2_Video_Play_Time(Id)			--视频点击后到画面开始播放时间
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Play_Time(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Play_Time(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Height(Id)				--视频测试视频高度
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Height(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Height(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Bitrate(Id)				--视频测试视频码率
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Bitrate(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Bitrate(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Reset(Id)				--视频测试删除视频数据
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Reset(Id)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Reset(Id)
	end
	return ret
end

function GetAPI_VM2_Video_Buffer_Time(Id,i)				--视频测试视频缓冲时长
	local ret
	if G_EngineMode=="IOS" then
		ret=VM2_Video_Buffer_Time(Id,i)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.VM2_Video_Buffer_Time(Id,i)
	end
	return ret
end

function GetAPI_FtpGet(FUrl,account,password,DLName)				--FTP下载
	local ret
	local DLPath
	local filesize
	if G_EngineMode=="IOS" then
		print("FtpGet")
	elseif G_EngineMode=="Android" then
		DLPath="/data/local/tmp/c/"..DLName
		ret=_cfunc.FtpGet(FUrl,account,password,DLPath,DLName)
		GetAPI_Sleep(5)
		filesize=GetAPI_FileLength(DLPath)
	end
	return ret,filesize
end

function GetAPI_FtpPut(FUrl,account,password,DLPath)				--FTP上传
	local ret,filesize
	if G_EngineMode=="IOS" then
		print("FtpPut")
	elseif G_EngineMode=="Android" then
		filesize=GetAPI_FileLength(DLPath)
		GetAPI_Sleep(5)
		DebugLogId("传入参数:"..FUrl..","..account..","..password..","..DLPath)
		ret=_cfunc.FtpPut(FUrl,account,password,DLPath,".")
	end
	return ret,filesize
end

function GetAPI_ScanWlanInfo()				--获取WIFI信息
	local ret
	if G_EngineMode=="IOS" then
		print("GetScanWlanInfo")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.GetScanWlanInfo()
	end
	return ret
end

function GetAPI_DnsIp()				--获取当前DNSIP
	local ret
	if G_EngineMode=="IOS" then
		print("GetDns")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.GetDns()
	end
	return ret
end

function GetAPI_ChangeDns(Dns)				--转换NDS服务器地址
	local ret
	if G_EngineMode=="IOS" then
		print("ChangeDns")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.ChangeDns(Dns)
	end
	return ret
end

function GetAPI_BtDownload(downpath,downname)				--BT下载
	local ret
	if G_EngineMode=="IOS" then
		print("BtDownload")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.BtDownload(downpath,downname)
	end
	return ret
end

function GetAPI_WifiDisconnect()				--断开WIFI
	local ret
	if G_EngineMode=="IOS" then
		print("WifiDisconnect")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.WifiDisconnect()
	end
	return ret
end

function GetAPI_WifiConnect(wifiname)				--连接WIFI
	local ret
	if G_EngineMode=="IOS" then
		print("WifiConnect")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.WifiConnect(wifiname)
	end
	return ret
end

function GetAPI_WifiCurrConnInfo()				--获取当前WIFI连接信息
	local ret
	if G_EngineMode=="IOS" then
		print("WifiCurrConnInfo")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.WifiCurrConnInfo()
	end
	return ret
end

function GetAPI_InputString(content)				--输入
	local ret = -1
	if G_EngineMode=="IOS" then
		content = GbkToUtf8(content)
		ret=Keys(content)
	elseif G_EngineMode == 'MacIOS' then
		ret = Text(content)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.Text(content)
	end
	return ret
end

function GetAPI_Input(content,MobType)				--输入
	local ret = -1
	if G_EngineMode=="IOS" then
		content = GbkToUtf8(content)
		ret=Keys(content)
		Sleep(1*1000)
	elseif G_EngineMode == 'MacIOS' then
		ret = Text(content)
	elseif G_EngineMode=="Android" then
		ret=_cfunc.Text(content)
	end
	return ret
end

function GetAPI_GPSInfo()				--经纬度
	local x,y = 0,0
	local ret="nil,nil"
	if G_EngineMode=="IOS" then
		print("Text")
	elseif G_EngineMode=="Android" then
		x,y=_cfunc.Location()
		if x and y then
			ret=x..","..y
		end
	end
	return ret
end

function GetAPI_TestInfoPath()				--测试任务存放路径
	local filepath
	if G_EngineMode=="IOS" then
		filepath="/var/mobile/uusense/TestInfo.ini"
	elseif G_EngineMode=="Android" then
		filepath="/data/local/tmp/c/TestInfo.ini"
	end
	return filepath
end

function GetAPI_NetworkInfo()	--获取运营商标识	--46000(中国移动TD )，46001(中国联通)，46002(中国移动GSM )，46003(中国电信CDMA)
	local NetInfo,Nutf
	if G_EngineMode=="IOS" then
		NetInfo=' '
		Nutf=' '
		DebugLogId("IOS系统暂不支持获取运营商操作")
	elseif G_EngineMode=="Android" then
		NetInfo = _cfunc.GetNetworkOperator()
		if tonumber(NetInfo)==46000 then	--中国移动 （GSM）
			Nutf = '中国移动GSM'
		elseif tonumber(NetInfo)==46001 then	--中国联通 （GSM）
			Nutf = '中国联通GSM'
		elseif tonumber(NetInfo)==46002 then	--中国移动TD
			Nutf = '中国移动TD'
		elseif tonumber(NetInfo)==46003 then	--中国电信CDMA
			Nutf = '中国电信CDMA'
		elseif tonumber(NetInfo)==46004 then	--中国测试网络
			Nutf = '中国测试网络'
		elseif tonumber(NetInfo)==46005 then	--中国电信 （CDMA）
			Nutf = '中国电信CDMA'
		elseif tonumber(NetInfo)==46006 then	--中国联通 （WCDMA）
			Nutf = '中国联通WCDMA'
		elseif tonumber(NetInfo)==46007 then	--中国移动 （TD-S）
			Nutf = '中国移动TD-S'
		elseif tonumber(NetInfo)==46011 then	--中国电信 （FDD-LTE）
			Nutf = '中国电信FDD-LTE'
		else
			Nutf = 'nil'
		end
	end
	return NetInfo,Nutf
end

function GetAPI_DeviceTraffic(Process)
	local ret1,ret2
	if G_EngineMode=="IOS" then
		print("GetAPI_DeviceTraffic")
	elseif G_EngineMode=="Android" then
		if Process=="" then
			ret1,ret2=_cfunc.GetDeviceTraffic()
		else
			ret1,ret2=_cfunc.GetApplicationTraffic(Process)
		end
	end
	return ret1,ret2
end

function GetAPI_Command(command)
	local value
	if G_EngineMode=="IOS" then
		print("command")
	elseif G_EngineMode=="Android" then
		value=_cfunc.Command(command)
	end
	return value
end

function GetAPI_Makepack(msg,val)
	local length
	local pack
	if val then
		length = string.len(val)+12
		pack = string.format("%08d%s%s",length,msg,val)
	else
		length = 12
		pack = string.format("%08d%s",length,msg)
	end
	DebugLogId("拼接后的发送包："..pack)
	return pack
end

function GetAPI_GetDevicesInfo()
	if G_EngineMode=="IOS" then
		DebugLogId("DeviceName:"..G_DeviceName)
		-- print("Get Phone Info")
	elseif G_EngineMode=="Android" then
		local now_width,now_height = _cfunc.GetDisplayWidth(),_cfunc.GetDisplayHeight()
		local code = GetAPI_DevCode()
		local net_model = GetAPI_NetFlag()
		local ip_addr = GetAPI_DeviceIP()
		local phone_num = GetAPI_MobileNum()
		local proxy = GetAPI_DevProxyInfo()
		local _,Operator = GetAPI_NetworkInfo()
		G_now_width = now_width
		G_now_height = now_height
		DebugLogId("设备名称:"..G_DeviceName..'\t设备编号：'..code)
		DebugLogId('本机分辨率为(宽*高)：'..tostring(now_width)..'*'..now_height)
		DebugLogId("本机号码:"..phone_num)
		DebugLogId("当前网络模式:"..net_model..'\t当前ip：'..ip_addr..'\t'..Operator)
		if net_model == '2G' or net_model == '3G' or net_model == '4G' then
			DebugLogId("当前网络代理:"..proxy)
		end
	end
end

function GetAPI_GetProcCpuPercent(testps)
	local ret
	if G_EngineMode=="IOS" then
		print("GetProcCpuPercent")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.GetProcCpuPercent(testps)
	end
	return ret
end

function GetAPI_Switch_input(flag)
	if flag and flag == true then
		G_input_method= _cfunc.Command("settings get secure default_input_method")
		if G_input_method ~= 'com.uusense.tools.inputmethod/.service.UUInputMethodService' then
			_cfunc.Command('ime set com.uusense.tools.inputmethod/.service.UUInputMethodService')
		end
	else
		if G_input_method and G_input_method ~= _cfunc.Command("settings get secure default_input_method") then
			_cfunc.Command('ime set '..G_input_method)
		end
	end
end

function GetAPI_GetProcMemInfo(testps)
	local ret
	if G_EngineMode=="IOS" then
		print("GetProcMemInfo")
	elseif G_EngineMode=="Android" then
		_,ret=_cfunc.GetProcMemInfo(testps)
	end
	return ret
end

function GetAPI_perf_monitor(File,Process,flag)
	if flag==0 then
		if G_EngineMode=="IOS" then
			print("start_perf_monitor")
		elseif G_EngineMode=="Android" then
			_cfunc.start_perf_monitor(File,Process,3)
		end
	else
		if G_EngineMode=="IOS" then
			print("stop_perf_monitor")
		elseif G_EngineMode=="Android" then
			_cfunc.stop_perf_monitor()
		end
	end
end

function GetAPI_GetMemInfo()
	local r1
	if G_EngineMode=="IOS" then
		print("GetAPI_GetMemInfo")
	elseif G_EngineMode=="Android" then
		r1=_cfunc.GetMemInfo()
	end
	return r1
end

function GetAPI_DevProxyInfo()
	local netret
	if G_EngineMode=="IOS" then
		netret=""
	elseif G_EngineMode=="Android" then
		local net=GetAPI_NetFlag()
		if net~="WIFI" then
			local NetInfo=GetAPI_NetworkInfo()	--运营商标识
			local Proxy=_cfunc.DevIsUseProxy()  --有代理( 1 ),无代理( 2 )
			Proxy=tonumber(Proxy)
			if tonumber(NetInfo)==46003 then	--中国电信CDMA
				if Proxy == 1 then
					netret ="CTWAP"
				elseif Proxy == 2 then
					netret ="CTNET"
				else
					DebugLogId("网络代理值："..netret)
					netret="UNKNOWN"
				end
			else
				if Proxy == 1 then
					netret ="CMWAP"
				elseif Proxy == 2 then
					netret ="CMNET"
				else
					DebugLogId("网络代理值："..netret)
					netret="UNKNOWN"
				end
			end
		else
			netret="LAN"
		end
	end
	return netret
end

function GetAPI_SwitchSim(card)
	local r1=1
	local ret
	if G_EngineMode=="IOS" then
		print("GetAPI_SwitchSim")
	elseif G_EngineMode=="Android" then
		ret=_cfunc.SwitchSim(card);--切换sim卡，参数是sim卡的编号
		if tonumber(ret) and tonumber(ret)==0 then
			r1=tonumber(ret)
		end
	end
	return r1
end

function GetAPI_start_signal_monitor(filename,oncetime)
	if G_EngineMode=="IOS" then
		start_signal_monitor(filename,oncetime)
	elseif G_EngineMode=="Android" then
		_cfunc.start_signal_monitor(filename,oncetime)
	end
end

function GetAPI_stop_signal_monitor()
	if G_EngineMode=="Symbian" then
		print("stop_signal_monitor")
	elseif G_EngineMode=="IOS" then
		stop_signal_monitor()
	elseif G_EngineMode=="Android" then
		_cfunc.stop_signal_monitor()
	end
end


function GetAPI_CaptureRectangle(img,x1,y1,x2,y2)		--截取区域图片，入参为保存位置
	local start_clock = GetAPI_OsClock()
	local ret
	if G_EngineMode=="Symbian" then
		print("CaptureRectangle")
	elseif G_EngineMode=="IOS" then
		--DebugLogId("截图路径: "..img)
		if not x1 then
			tmplib=splittable(img,"/")
			tmptb=splittable(tmplib[#tmplib],"_")
			x1,y1 = tonumber(tmptb[1]),tonumber(tmptb[2])
			x2,y2 = tonumber(tmptb[3]),tonumber(tmptb[4])
		end
		DebugLogId(string.format("截图坐标: %s,%s,%s,%s",x1,y1,x1+x2-1,y1+y2-1))
		-- ret = CaptureArea(img,tonumber(x1),tonumber(y1),tonumber(x2),tonumber(y2),10000)		
		-- DebugLogId("截图坐标: "..tonumber(x1)..','..tonumber(y1)..','..tonumber(x1)+tonumber(x2)..','..tonumber(y1)+tonumber(y2))
		ret = CaptureArea(img,tonumber(x1),tonumber(y1),tonumber(x1)+tonumber(x2)-1,tonumber(y1)+tonumber(y2)-1,10000)		--实际坐标再-1
		DebugLogId("截图结束 :"..ret)
	elseif G_EngineMode=="Android" then
		_cfunc.CaptureRectangle(img)
	elseif G_EngineMode=="MacIOS" then
		local s1,_,t1,t2,t3,t4=string.find(img,"/(%d+)_(%d+)_(%d+)_(%d+)")
		img = string.sub(img,1,s1)..t1.."_"..t2.."_"..t3.."_"..t4.."_tmp.jpeg"
		DebugLogId("MAC截图: "..img)
		ret = CaptureRectangle(img)
	end
	local end_clock = GetAPI_OsClock()
	local capt_time = GetAPI_SubTime(end_clock,start_clock)
	DebugLogId("截图耗时："..capt_time)
	return capt_time
end

function auto_WaitEx(Imgs)         --自动修改脚本方法专用比图函数
	local i,ScriptPath,imgFile,imgret,imgidx
	local ss,se
	local ImgsTab,idx,CompImage
	local tempimg
	local resx,resy
	local ImgFileName=''
	imgret=1
	imgidx=0
	ImgsTab=splittable(Imgs,"|")
	ss=GetAPI_OsClock()
	ScriptPath=G_SysScpPath
	tempimg = ScriptPath..G_Pflg.."temp.bmp"
	GetAPI_CaptureImg(tempimg,11)
	for idx,CompImage in pairs(ImgsTab) do
		if string.match(string.lower(CompImage),"engine") then
			ScriptPath=G_SysEngPath
		else
			ScriptPath=G_SysScpPath
		end
		imgFile = ScriptPath..G_Pflg..CompImage    ---脚本路径加资源名
		imgret,resx,resy= GetAPI_MatchScreenEX(imgFile,tempimg)
		if imgret == 0 then
			ImgFileName=auto_PicReturn(CompImage,resx,resy)
			imgidx=idx
			break
		end
	end
	return imgret,imgidx,ImgFileName
end

function GetAPI_URLCombination(httpmode,url,body)
	local i=string.find(url,"/")
	if i then
		return string.format("%s %s HTTP/1.1\r\nHOST:%s\r\nContent-Length:%s\r\nContent-Type: application/json; charset=UTF-8\r\nConnection:Close\r\n\r\n%s",httpmode,string.sub(url,i,-1),string.sub(url,1,i-1),#body,body),string.sub(url,1,i-1)
	end
end

function GetAPI_getCoordinate(strCommand)
	local long_click_flag = false
	local swipe_flag = false
	local start_num = 2
	if string.sub(strCommand,1,1) == '<' then
		long_click_flag = true
		strCommand = string.sub(strCommand,2,-2)
	elseif string.sub(strCommand,1,1) == '(' then
		swipe_flag = true
		strCommand = string.sub(strCommand,2,-2)
	end
	local command_tab = splittable(strCommand,',')
	local ret,str_Command = GetAPI_getCoordinateEx(command_tab[1])
	local str_Command_swipe
	if ret ~= -1 then
		if swipe_flag == true then
			ret,str_Command_swipe = GetAPI_getCoordinateEx(command_tab[2])
			if ret ~= -1 then
				str_Command = str_Command..','..str_Command_swipe
				start_num = 3
			else
				return -1,'0,0'
			end
		end
		for i =start_num,#command_tab do
			str_Command = str_Command..','..command_tab[i]
		end
		if long_click_flag == true then
			str_Command = '<'..str_Command..'>'
		end
		if swipe_flag == true then
			str_Command = '('..str_Command..')'
		end
		return ret,str_Command
	end
	return -1,'0,0'
end

function GetAPI_getCoordinateEx(str)	
	local start_clock=GetAPI_OsClock()
	local value_table = GetAPI_att_cbt(str)			--desc='男生 Link' index='1'
	local ret,dump_content 
	while 1 do
		local end_clock=GetAPI_OsClock()
		if GetAPI_SubTime(end_clock,start_clock)>tonumber(G_ClickTimeOut) then
			DebugLogId(string.format("%s秒组件信息查找超时!",tonumber(G_ClickTimeOut)))
			return -1,'0,0'
		end
		
		local single_start_clock = GetAPI_OsClock()
		ret,dump_content= GetAPI_Dump(value_table)
		local single_end_clock = GetAPI_OsClock()
		local single_clicltime = GetAPI_SubTime(single_end_clock,single_start_clock)
		--DebugLogId("耗时："..G_Imgtime)
		local coordinate
		if ret ~=-1 then
			local x_coo,y_coo = dump_Coordinate(dump_content)
			local str_Command = x_coo..','..y_coo
			return ret,str_Command
		else
			DebugLogId("viewret:-1".."		"..single_clicltime)
			if G_UIAutoClick then 
				UI_AutoClickOpen(pkgname,7)
			end
		end
	end
end

function dump_Coordinate(dump_content)
	local tmp_coordinate_tab = {}
	local _,_,tmp_coordinate = string.find(dump_content,'bounds="%[(.-)"')
	for i in string.gmatch(tmp_coordinate..'[','(.-)%]%[') do
		table.insert(tmp_coordinate_tab,i)
	end
	tmp_coordinate_tab[1] = splittable(tmp_coordinate_tab[1],',')
	tmp_coordinate_tab[2] = splittable(tmp_coordinate_tab[2],',')
	local x_coo = tostring(math.ceil((tonumber(tmp_coordinate_tab[1][1])+tonumber(tmp_coordinate_tab[2][1]))/2))
	local y_coo = tostring(math.ceil((tonumber(tmp_coordinate_tab[1][2])+tonumber(tmp_coordinate_tab[2][2]))/2))
	return x_coo,y_coo
end

function GetAPI_getXpath(strCommand,flag)
	local start_time = GetAPI_OsClock()
	local ret,dump_content
	local command_tab = splittable(strCommand,',')
	local value_table = GetAPI_att_cbt(command_tab[1])			--desc='男生 Link' index='1'
	local rp_x,rp_y = 0,0
	local direction = ''
	if flag ~= 3 then
		direction = command_tab[2]
		if string.lower(direction) == 'ver' then
			direction = '0'
		elseif string.lower(direction) == 'hor' or string.lower(direction) =='left' then
			direction = '1'
		elseif string.lower(direction) =='right' then
			direction = '2'
		elseif string.lower(direction) =='up' then
			direction = '3'
		elseif string.lower(direction) == 'down' then
			direction = '4'
		end
	else
		tmp_table_rp = splittable(DScreen,'*')
		rp_x = tonumber(command_tab[2])/tonumber(tmp_table_rp[1])
		rp_y = tonumber(command_tab[3])/tonumber(tmp_table_rp[2])
	end
	
	while 1 do
		local end_clock=GetAPI_OsClock()
		if GetAPI_SubTime(end_clock,start_time)>tonumber(G_ClickTimeOut) then
			DebugLogId(string.format("%s秒组件信息查找超时!",tonumber(G_ClickTimeOut)))
			return -1,'','-1',0,0,0
		end
		local single_start_clock = GetAPI_OsClock()
		ret,dump_content = GetAPI_Dump(value_table)
		local single_end_clock = GetAPI_OsClock()
		local G_Imgtime = GetAPI_SubTime(single_end_clock,single_start_clock)
		DebugLogId("耗时："..G_Imgtime)
		if ret ~=-1 then
			local end_time = GetAPI_OsClock()
			local time_first = GetAPI_SubTime(end_time,start_time)
			DebugLogId('拖拽前查找Xpath耗时：'..time_first)
			local _,_,tmp_Xpath = string.find(dump_content,'xpath="(.-)"')
			tmp_Xpath = string.gsub(string.gsub(tmp_Xpath,"%(","\\("),"%)","\\)")
			return ret,tmp_Xpath,direction,time_first,tostring(rp_x),tostring(rp_y)
		end	
	end
end

function GetAPI_SetTask(ttid,flag)
	local Url="a.netsense.cn/api/http/task_set"
	local httpmode="POST"
	local body
	if flag==0 then
		body=string.format('{"ttid":"%s","set_status":"start"}',ttid)
	else
		body=string.format('{"ttid":"%s","set_status":"stop"}',ttid)
	end
	local contect,host=GetAPI_URLCombination("POST",Url,body)
	local ret,_,_,_,_,_,_,_,_,_,bodyconcent=_cfunc.HttpClient2(host,contect)
	ret = ret==6 and 0 or -1
	return ret
end

function GetAPI_DeviceStatus(imei)
	local Url="a.netsense.cn/api/http/device_select"
	local httpmode="POST"
	local body=string.format('{"device_sn":"%s"}',imei)
	local contect,host=GetAPI_URLCombination("POST",Url,body)
	local ret,ttid
	local Status,bodyconcent
	ret,_,_,_,_,_,_,_,_,_,bodyconcent=_cfunc.HttpClient2(host,contect)
	if ret==6 then
		_,_,Status=string.find(bodyconcent,'"status":"(%d-)"')
		_,_,ttid=string.find(bodyconcent,'"ttid":"(%d-)"')
		return Status,ttid
	else
		return "-1","-1"
	end
end

function GetAPI_URLSentSms(imei,sms)
	local Url="a.netsense.cn/api/http/sent_sms"
	local httpmode="POST"
	local body=string.format('{"device_sn":"%s","content":"%s"}',imei,sms)
	local ret,bodyconcent
	local contect,host=GetAPI_URLCombination("POST",Url,body)
	ret,_,_,_,_,_,_,_,_,_,bodyconcent=_cfunc.HttpClient2(host,contect)
	if bodyconcent then
		DebugLogId("发送信息的返回包体："..bodyconcent)
	else
		DebugLogId("发送信息的返回包体：null")
	end
	ret = ret==6 and 0 or 1
	return ret
end

function GetAPI_URLGetSms(imei,timeout)
	local Url="a.netsense.cn/api/http/get_sms"
	local httpmode="POST"
	local body=string.format('{"device_sn":"%s"}',imei)
	local ret,bodyconcent,res
	local contect,host=GetAPI_URLCombination("POST",Url,body)
	local startclock = GetAPI_OsClock()
	while 1 do
		if GetAPI_SubTime(GetAPI_OsClock(),startclock)> timeout then
			ret=-1
			break
		end
		res,_,_,_,_,_,_,_,_,_,bodyconcent=_cfunc.HttpClient2(host,contect)
		if res==6 then
			DebugLogId("接收获取信息包体："..bodyconcent)
			_,_,ret=string.find(bodyconcent,'"message":"(%-?%d-)"')
			if ret then
				DebugLogId("被交互手机返回信息："..ret)
			else
				DebugLogId("被交互手机返回信息：nil")
			end
			ret=tonumber(ret)
			if ret==0 or ret==-1 then
				break
			end
		else
			DebugLogId("接收获取信息包体：null")
		end
		GetAPI_Sleep(3)
	end
	return ret
end

function auto_PicReturn(ImgName,resx,resy)							--处理自动修改脚本模块下比对通过图片的截图问题
	local x1,y1,x2,y2,retx,rety
	local ImgsTab
	local ImgFileName
	ImgsTab=splittable(ImgName,"_")
	x1=tonumber(ImgsTab[1])
	y1=tonumber(ImgsTab[2])
	x2=tonumber(ImgsTab[3])
	y2=tonumber(ImgsTab[4])
	retx=x2-x1+resx
	rety=y2-y1+resy
	ImgFileName=tostring(resx)..'_'..tostring(resy)..'_'..tostring(retx)..'_'..tostring(rety)..'_android_'..os.date("%Y%m%d%H%M%S")..'.bmp'
	GetAPI_CaptureRectangle(G_SysScpPath..G_Pflg..ImgFileName)
	return ImgFileName
end

function GetAPI_auto_FileZIP()
	local lsret,FileName,FileALLName
	local FileList={}
	local FileALLName=""
	if G_EngineMode=="Android" then
		GetAPI_Deletefile(G_SysScpPath..G_Pflg..'script.zip')
		lsret=GetAPI_Command("ls "..G_SysScpPath)
		lsret=string.gsub(lsret,'\r','\n')
		lsret=string.gsub(lsret,'\n','|')
		FileList=splittable(lsret,'|')
		for i,FileName in pairs(FileList) do
			if FileName~='temp.bmp' then
				if FileName~='' then
					FileALLName=FileALLName..G_SysScpPath..G_Pflg..FileName.."|"
				end
			end
		end
		DebugLogId('FileALLName:'..FileALLName)
		GetAPI_Zip(G_SysScpPath..G_Pflg..'script.zip',FileALLName)
	else
		print("不支持该功能")
	end
end

function GetApi_inter(from_imei,to_imei,flag)
	local r1,r12,status,_
	local content=string.format('from_imei=%s&apikey=2dcbd425ce1d281865ebec6088125622&type=%s&to_imei=%s',from_imei,flag,to_imei)
	local PostUrl="api.netsense.cn"
	local PostContent=string.format('POST /receive/phone HTTP/1.1\r\nHOST:api.netsense.cn\r\nAccpt:*/*\r\nContent-type:application/x-www-form-urlencoded\r\nContent-Length:%s\r\nConnection:Close\r\n\r\n%s',#content,content)
	DebugLogId(PostContent)
	for i=1,5 do
		r1,_,_,_,_,_,_,_,_,_,_,r12=GetAPI_HttpClient(PostUrl,PostContent,PostUrl)
		DebugLogId('第'..i..'次：'..r12)
		if string.find(r12,'"status":(%d+)') then 
			_,_,status=string.find(r12,'"status":(%d+)')
			break
		end
	end
	return status,r12
end

function GetAPI_HttpVisit(url,TimeOut)
	local i,k
	local HUrl,DUrl
	local ret,r2,r3,r4,r5,r6,r7,r8,r9,head,body,all
	if string.find(url,"//") then
		k=string.find(url,"//")
		url=string.sub(url,k+2,-1)
	end
	i=string.find(url,"/")
	if i then
		HUrl=string.sub(url,1,i-1)
		DUrl=string.format("GET /%s HTTP/1.1\r\nHOST:%s\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",string.sub(url,i+1,-1),string.sub(url,1,i-1))
	else
		HUrl=url
		DUrl=string.format("GET / HTTP/1.1\r\nHOST:%s\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",url)
	end
	DebugLogId("本次测试网址:"..url)
	ret,r2,r3,r4,r5,r6,r7,r8,r9,head,body,all=GetAPI_HttpClient(HUrl,DUrl,url,TimeOut)
	return ret,r2,r3,r4,r5,r6,r7,r8,r9,head,body,all
end

--生成文件名：screen-20180524-145223-720x1280.mp4
function GetAPI_RecordScreenManager(seflg,frameRate,bitRate,process)		--java录屏, 帧率,码率
	local fpath = "/sdcard/RecordScreenManager/"
	local fname =string.format("%s_%s_*.mp4", G_FileDeviceName, G_Id)
	if seflg == "start" then
		pcall(function () _cfunc.LuaScriptJavaExec('RecordScreenManager.getInstance():stopRecordScreen()') end)			--确保每次启动录屏时已关闭	
		_cfunc.Command(string.format("mkdir -p %s", fpath))	
		if not process then 
			DebugLogId(string.format("开始录制视频: 帧率: %s     码率: %sM     存储路径: %s",frameRate,bitRate,fpath))
		end
		UI_AutoClickOpen(nil,7)
		_cfunc.Command(string.format("mkdir -p %s", fpath))
		bitRate = tonumber(bitRate)*1024*1024
		_cfunc.LuaScriptJavaExec(string.format('RecordScreenManager.getInstance():startRecordScreen("%s","%s",%s,%s)', fpath, fname,frameRate,bitRate))
		_cfunc.Sleep(4*1000)
	else
		if not process then 
			fpath = string.format("%s%sscreen%s",string.sub(G_SysDbgPath,1,-2),G_Pflg,G_Pflg)
			DebugLogId(string.format("结束录制视频: %s",fpath))
		end
		_cfunc.LuaScriptJavaExec('RecordScreenManager.getInstance():stopRecordScreen()')
		_cfunc.Sleep(3*1000)
	end
end

function VoucRecordScreen()
	local fpath = "/sdcard/RecordScreenManager/"
	local pmfiles = getPathFiles(fpath)		--获取文件列表
	if #pmfiles>0 then
		GetAPI_RecordScreenManager(nil,nil,nil,"process") 
		_cfunc.Command(string.format("mkdir -p %sscreen", G_SysDbgPath))
		for k,v in pairs(pmfiles) do
			if string.find(v,"mp4") then
				local fpname = string.format("%s%s",fpath,v)
				--local TempTime = os.date("%Y%m%d%H%M%S")
				--local new_v = string.gsub(v,"screen",TempTime.."-screen")
				local lfpname = string.format("%sscreen/%s", G_SysDbgPath,v)
				_cfunc.Command(string.format("cp %s %s", fpname, lfpname))
				DebugLogId(string.format("记录凭证录屏文件: %s", lfpname))
			end
		end
		GetAPI_DeleteDir("/sdcard/RecordScreenManager/")
		_cfunc.Command("rm -rf /sdcard/RecordScreenManager/")
		GetAPI_RecordScreenManager("start",G_FrameRate,G_BitRate,"process")
	end
end

MonEdt="3.0.1"	

--适配autosense3.1监控后台
----------------------------------------------------接口监控-------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
function GetTestContent()					--从后台获取测试内容函数
	local urlTab={}
	local DLPath,DLID
	local a,ret
	local UrlList
	local Line,UrlLine
	local tempfalg
	local DLURL
	local Turl="a.netsense.cn"
	local i,j
	local num
	local imei
	local concent
	local tempab
	local contou,Dlu
	local DEVICECODE
	local codetab={"15067117690"}
	if string.upper(TestMode)=="MONITOR" then
		ret,DEVICECODE=Device_Rag()			--设备注册函数
		if ret==0 then
			--Turl="mnt.netsense.cn"
			--DLURL=string.format("GET /apps/api/get_tasks?DEVICECODE=%s HTTP/1.1\r\nHOST:mnt.netsense.cn\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",DEVICECODE)
			Turl="autoapi.uusense.com"
			DLURL=string.format("GET /monitorapps/api/get_tasks?DEVICECODE=%s HTTP/1.1\r\nHOST:autoapi.uusense.com\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",DEVICECODE)
		else
			error("Device_Rag error...")
		end
	else
		a=string.find(G_Id,"_")
		DLID=string.sub(G_Id,1,a-1)
		DebugLogId("测试ID:"..DLID)
		DLURL=string.format("GET /apps/task_parameter?tid=%s HTTP/1.1\r\nHOST:a.netsense.cn\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",DLID)
		Dlu=string.format("a.netsense.cn/apps/task_parameter?tid=%s",DLID)
	end
	for k=1,5 do
		ret,_,_,_,_,_,_,_,_,contou,concent=GetAPI_HttpClient(Turl,DLURL,Dlu)
		if ret == 6 then
			break
		end
		GetAPI_Sleep(10)
	end
	DebugLogId("下载任务结果:"..ret)
	if concent then
		DebugLogId("包体内容"..concent)
	end
	if ret~=6 then
		error("DownLoad error...")
	end
	tempab=splittable(concent,"\n")
	for jj=1,#tempab do
		tempab[jj]=string.gsub(tempab[jj]," ","")
		tempab[jj]=string.gsub(tempab[jj],"\r","")
		if tempab[jj]~="----------" and tempab[jj]~="" and tempab[jj]~="notesttask" then
			DebugLogId("测试网址:"..tempab[jj])
			table.insert(urlTab,tempab[jj])
		end
	end
	if #urlTab<=0 then
		DebugLogId("测试表为空...下载测试任务失败！")
		error("DownLoad error...")
	end
	return urlTab
end

function Device_Rag()				--设备注册函数
	local ret,concent
	local Turl,DLURL
	local uploadinfo
	local DEVICECODE,DEVNETTYPE,PROVCODE,DEVICETYPE
	DebugLogId("设备注册中")
	DEVICECODE=GetAPI_DevCode()
	uploadinfo=MakePattern(uploadinfo,"DEVICECODE:"..DEVICECODE)
	DEVNETTYPE=GetAPI_NetFlag()
	uploadinfo=MakePattern(uploadinfo,"DEVNETTYPE:"..DEVNETTYPE)
	PROVCODE=GetAPI_Location()
	uploadinfo=MakePattern(uploadinfo,"PROVCODE:"..PROVCODE)
	DEVICETYPE=GetAPI_DevType()
	uploadinfo=MakePattern(uploadinfo,"DEVICETYPE:"..DEVICETYPE)
	--Turl="mnt.netsense.cn"
	--DLURL=string.format("GET /apps/api/device_register HTTP/1.1\r\nHOST:mnt.netsense.cn\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",uploadinfo)
	Turl="autoapi.uusense.com"
	DLURL=string.format("GET /monitorapps/api/device_register HTTP/1.1\r\nHOST:autoapi.uusense.com\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",uploadinfo)
	ret,_,_,_,_,_,_,_,_,_,concent=GetAPI_HttpClient(Turl,DLURL)
	DebugLogId(DLURL)
	DebugLogId("设备注册完毕,结果:"..ret.."	0=失败,6=成功")
	DebugLogId(concent)
	if string.find(concent,"ok") then
		ret=0
	else
		ret=-1
	end
	return ret,DEVICECODE
end

function Method_Monitor(DownUrl,DId,RawUrl)				--监控测试主函数
	local ret
	local startclock = GetAPI_OsClock()
	if RawUrl then
		ret = Method_MonitorEx_Https(RawUrl,DId)
	else
		ret = Method_MonitorEx(DownUrl,DId)
	end
	local endclock = GetAPI_OsClock()
	local DelayTime = GetAPI_SubTime(endclock,startclock)
	local ResultTable = {}
	table.insert(ResultTable,"auto")
	table.insert(ResultTable,DelayTime)
	return ret,ResultTable
end

function Method_MonitorEx(DownUrl,DId)					--监控测试实现函数 http测试
	local i,HUrl,DUrl
	local Ttime,Dnstime,DnsIP
	local uploadinfo
	local DeviceCode,DevNetType,IPAddress,DeviceType,ProvCode
	local Result=1
	local pingret,pingres,pingrett
	local ret,res,ree
	local conret,Fbtime,sendtime
	local DLName,DLret,Filesize
	local inp,Content,Contt
	local j=1
	local k=1
	local cc
	local etab={"服务器正忙","网站正在维护中","服务器内部错误","网络出现异常","网关超时","其它错误","其他失败","系统维护中","错误的网关","读取服务器响应失败","网关从远端服务器读取数据失败","远端服务器返回的响应消息语法有错误","活动信息已不存在","您访问的网址被网站拒绝访问","System busy","请稍候再试"}
	local erflag
	local Header,HTTPReturn
	local num
	local dlrt,btcontent,allcontent
	local phonetype
	local dltype="GET"
	local Turl="autoapi.uusense.com"
	if DownUrl=="www.118100.cn" or DownUrl=="3g.118100.cn/?jump3g=100&st=p8_1A_0_3/3/0_dt_0" then
		phonetype="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 4.0.20506)"
	else
		phonetype="Mozilla/5.0 Mobile"
	end
	uploadinfo = Get_DevicePram(DownUrl,DId)	--上传信息
	DebugLogId("开始下载测试网址头信息...")
	local hdlurl=string.format("GET /apps/postheader/get_header?domain_id=%s HTTP/1.1\r\nHOST:monitor.netsense.cn\r\nUser-Agent:Mozilla/5.0 Mobile\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",DId)
	local hdlret,hdlcont
	local Postflag
	for kk=1,3 do
		hdlret,_,_,_,_,_,_,_,_,_,hdlcont=GetAPI_HttpClient("monitor.netsense.cn",hdlurl)
		if tonumber(hdlret)==6 then
			hdlcont=Strip(hdlcont)
			if hdlcont~="----------" then
				hdlcont=string.gsub(hdlcont,"----------","")
				Postflag=true
			end
			break
		end
	end
	local hdtab
	local hdcont=""
	
	if Postflag then
		hdlcont=Strip(hdlcont)
		if #hdlcont>0 then
			dltype="POST"
			hdlcont=string.gsub(hdlcont," ","")
			hdlcont=string.gsub(hdlcont,"\r\n","\r")
			hdlcont=string.gsub(hdlcont,"\n","\r")
			hdtab=splittable(hdlcont,"\r")
			for kk=1,#hdtab do
				hdcont=hdcont..hdtab[kk].."\r\n"
			end
			if G_CMReadJSESSIONID then
				_,_,cc=string.find(hdcont,"JSESSIONID[^%w]*(%w+)")
				if cc then
					hdcont=string.gsub(hdcont,cc,G_CMReadJSESSIONID)
				end
			end
			if G_CMReadtokenId then
				_,_,cc=string.find(hdcont,"tokenId[^%w]*(%w+)")
				if cc then
					hdcont=string.gsub(hdcont,cc,G_CMReadtokenId)
				end
			end
		end
	end
	i=string.find(DownUrl,"/")
	if i then
		HUrl=string.sub(DownUrl,1,i-1)
		DUrl=string.format("%s /%s HTTP/1.1\r\nHOST:%s\r\nUser-Agent:%s\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",dltype,string.sub(DownUrl,i+1,-1),string.sub(DownUrl,1,i-1),phonetype,hdcont)
	else
		HUrl=DownUrl
		DUrl=string.format("%s / HTTP/1.1\r\nHOST:%s\r\nUser-Agent:%s\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",dltype,DownUrl,phonetype,hdcont)
	end
	DebugLogId("下载网址:"..DownUrl)
	DebugLogId("HUrl:"..HUrl)
	DebugLogId("DUrl:"..DUrl)
	DebugLogId("准备下载...")
	for k=1,2 do
		dlrt,Ttime,Dnstime,conret,sendtime,Fbtime,DLret,IPAddress,DnsIP,Content,btcontent,allcontent=GetAPI_HttpClient(HUrl,DUrl,DownUrl)
		DebugLogId("下载完成...")
		uploadinfo=MakePattern(uploadinfo,"IPAddress:"..IPAddress)
		num=GetAPI_MobileNum()
		if num=="" then
			num="0"
		end
		uploadinfo=MakePattern(uploadinfo,"DLRET:"..dlrt)
		uploadinfo=MakePattern(uploadinfo,"PHONENUMBER:"..num)
		uploadinfo=MakePattern(uploadinfo,"DNS:"..DnsIP)
		uploadinfo=MakePattern(uploadinfo,"HTTPCONNECT:"..conret)
		if tonumber(Dnstime) and tonumber(conret) and tonumber(sendtime) and tonumber(Fbtime) and tonumber(DLret) then
			DLret=tonumber(Dnstime)+tonumber(conret)+tonumber(sendtime)+tonumber(Fbtime)+tonumber(DLret)
		else
			DLret=0
		end
		uploadinfo=MakePattern(uploadinfo,"HTTPDELAY:"..DLret)
		uploadinfo=MakePattern(uploadinfo,"HTTPFRISTTIME:"..Fbtime)
		if tonumber(dlrt)==6 then
			_,_,HTTPReturn=string.find(Content,"[Hh][Tt][Tt][Pp][/][^ ]*[ ]*(%w+)")
		else
			HTTPReturn="000"
		end
		if HTTPReturn~="000" then
			break
		end
	end
	if not HTTPReturn then
		HTTPReturn="001"
	end

	if btcontent then
		_,_,cc=string.find(btcontent,"JSESSIONID[^%w]*(%w+)")
		if cc then
			G_CMReadJSESSIONID=cc
		end
		_,_,cc=string.find(btcontent,"tokenId[^%w]*(%w+)")
		if cc then
			G_CMReadtokenId=cc
		end
	end
	uploadinfo=MakePattern(uploadinfo,"HTTPRETURN:"..HTTPReturn)
	Header=string.gsub(Content,"\r\n","#uusense#")
	Header=string.gsub(Header,"\n","#uusense#")
	Header=string.gsub(Header,"\r","#uusense#")
	uploadinfo=MakePattern(uploadinfo,"HEADER:"..Header)
	Filesize=string.len(allcontent)
	uploadinfo=MakePattern(uploadinfo,"FILESIZE:"..Filesize)
	DebugLogId("下载返回参数获取完毕...")
	DebugLogId("返回码:"..HTTPReturn)
	if not HTTPReturn then
		Result=1
	else
		if string.sub(HTTPReturn,1,1)=="4" or string.sub(HTTPReturn,1,1)=="5" or string.sub(HTTPReturn,1,1)=="7" then
			Result=2
		elseif string.sub(HTTPReturn,1,1)=="3" then
			Result=0
		elseif HTTPReturn=="000" or HTTPReturn=="001" then
			Result=2
		else
			Contt=allcontent
			while j<=#etab do
				if string.find(Contt,etab[j]) then
					erflag=true
					break
				end
				j=j+1
			end

			if erflag then
				Result=2
			elseif Filesize==0 then
				Result=2
			else
				Result=0
				--[[while k<=#Contt do				--判断是否有中文字
					if string.byte(string.sub(Contt,k,k))>=128 then
						Result=0
						break
					else
						Result=2
					end
					k=k+1
				end]]
			end
		end
	end
	if Result==2 then
		if HTTPReturn=="000" then
			local dlrt1
			dlrt1=GetAPI_HttpClient("www.baidu.com","GET / HTTP/1.1\r\nHOST:www.baidu.com\r\nUser-Agent:Mozilla/5.0 Mobile\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n","www.baidu.com")
			if tonumber(dlrt1)==6 then
				Result=2
			else
				Result=1
			end
		end
		ree,pingrett=GetAPI_PingInfo(HUrl,3,32)
		DebugLogId("PING:"..HUrl.."...测试值:"..pingrett)
		ret,pingret=GetAPI_PingInfo("3g.baidu.com",3,32)
		DebugLogId("PING百度...测试值:"..pingret)
		res,pingres=GetAPI_PingInfo("3g.qq.com",3,32)
		DebugLogId("PINGQQ...测试值:"..pingres)
		ret=CheckPingRes(pingret,3)
		res=CheckPingRes(pingres,3)
		if HTTPReturn~="000" then
			if ret==0 or res==0 then
				Result=2
			else
				Result=1
			end
		end
		uploadinfo=MakePattern(uploadinfo,"PING:"..HUrl.."|"..pingrett..",3g.baidu.com|"..pingret..",3g.qq.com|"..pingres)
	elseif Result==0 then
		if conret>5000 then
			ree,pingrett=GetAPI_PingInfo(HUrl,3,32)
			DebugLogId("PING:"..HUrl.."...测试值:"..pingrett)
			ret,pingret=GetAPI_PingInfo("3g.baidu.com",3,32)
			DebugLogId("PING百度...测试值:"..pingret)
			res,pingres=GetAPI_PingInfo("3g.qq.com",3,32)
			DebugLogId("PINGQQ...测试值:"..pingres)
			uploadinfo=MakePattern(uploadinfo,"PING:"..HUrl.."|"..pingrett..",3g.baidu.com|"..pingret..",3g.qq.com|"..pingres)
			ret=CheckPingRes(pingret,3)
			res=CheckPingRes(pingres,3)
			if ret==-2 or res==-2 then
				Result=1
			else
				Result=4
			end
		end
	end
	DebugLogId("本次测试完成...测试结果:"..Result)
	uploadinfo=MakePattern(uploadinfo,"RESULT:"..Result)
	--uploadinfo=string.format("POST /apps/api/put_result HTTP/1.1\r\nHOST:mnt.netsense.cn\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",uploadinfo)
	uploadinfo=string.format("POST /monitorapps/api/put_result HTTP/1.1\r\nHOST:autoapi.uusense.com\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",uploadinfo)
	DebugLogId("上传测试数据...")
	--GetAPI_HttpClient("mnt.netsense.cn",uploadinfo)
	GetAPI_HttpClient("autoapi.uusense.com",uploadinfo)
	DebugLogId("测试数据上传完成...")
	return 0
end

function Method_MonitorEx_Https(RawUrl,DId)
	local Httpsflag = 1
	local Turl="autoapi.uusense.com"
	local uploadinfo	--上传信息
	local Result = 1 	--测试结果
	local errflgtab = {"服务器正忙", "网站正在维护中", "服务器内部错误", "网络出现异常", "网关超时", "其它错误", "其他失败", "系统维护中", "错误的网关", "读取服务器响应失败", "网关从远端服务器读取数据失败", "远端服务器返回的响应消息语法有错误", "活动信息已不存在", "您访问的网址被网站拒绝访问", "System busy", "请稍候再试"}
	
	uploadinfo = Get_DevicePram(RawUrl,DId)
	DebugLogId("开始下载测试网址包头信息...")
	local hesderpath = string.format('/monitorapps/postheader/get_header?domain_id=%s',DId)
	local hdlret,header_cont = Get_MonitorPram(Turl,hesderpath,Httpsflag)	--获取header
	DebugLogId("测试网址包头信息:\t"..header_cont)
	DebugLogId("开始下载测试网址包体信息...")
	local bodypath = string.format('/monitorapps/postheader/get_body?domain_id=%s',DId)
	local hdlret,body_cont = Get_MonitorPram(Turl,bodypath,Httpsflag)	--获取body
	DebugLogId("测试网址包头信息:\t"..body_cont)
	DebugLogId(string.format("下载网址(%s): %s",DId,RawUrl))
	
	local HTTPReturn,Filesize,Ttime,Dnstime,conret,sendtime,Fbtime,DLret,IPAddress,DnsIP,Content,btcontent,allcontent = GetAPI_HttpsClient(RawUrl,header_cont,body_cont)
	
	Ttime = Ttime or os.date()
	DebugLogId("下载完成..." .. Ttime)
	uploadinfo = MakePattern(uploadinfo, "IPAddress:" .. IPAddress)
	uploadinfo = MakePattern(uploadinfo, "DLRET:" .. 6)
	local num = GetAPI_MobileNum()
	if num == "" then 
		num = "0" 
	end
	uploadinfo = MakePattern(uploadinfo, "PHONENUMBER:" .. num)
	uploadinfo = MakePattern(uploadinfo, "DNS:" .. DnsIP)
	uploadinfo = MakePattern(uploadinfo, "HTTPCONNECT:" .. conret)
	uploadinfo = MakePattern(uploadinfo, "HTTPDELAY:" .. DLret)
	uploadinfo = MakePattern(uploadinfo, "HTTPFRISTTIME:" .. Fbtime)
	if btcontent then
		_, _, cc = string.find(btcontent, "JSESSIONID[^%w]*(%w+)")
		if cc then
			G_CMReadJSESSIONID = cc
		end
		_, _, cc = string.find(btcontent, "tokenId[^%w]*(%w+)")
		if cc then
			G_CMReadtokenId = cc
		end
	end
	uploadinfo = MakePattern(uploadinfo, "HTTPRETURN:" .. HTTPReturn)
	local Header = Content:gsub("\r\n", "#uusense#"):gsub("\n", "#uusense#"):gsub("\r", "#uusense#")
	uploadinfo = MakePattern(uploadinfo, "HEADER:" .. Header)
	uploadinfo = MakePattern(uploadinfo, "FILESIZE:" .. Filesize)
	DebugLogId("下载返回参数获取完毕...")
	DebugLogId(string.format("uploadinfo: \n%s", uploadinfo))
	DebugLogId("返回码:" .. HTTPReturn)
	if not HTTPReturn then
		Result = 1
	else
		if string.sub(HTTPReturn, 1, 1) == "4" or string.sub(HTTPReturn, 1, 1) == "5" or string.sub(HTTPReturn, 1, 1) == "7" then
			Result = 2
		elseif string.sub(HTTPReturn, 1, 1) == "3" then
			Result = 0
		elseif HTTPReturn == "000" or HTTPReturn == "001" then
			Result = 2
		else
			local Contt = allcontent
			local erflag = false
			for i = 1, #errflgtab do
				if string.find(Contt, errflgtab[i]) then
					erflag = true
					break
				end
			end
			Result = erflag and 2 or 0
			-- while k<=#Contt do				--判断是否有中文字
			-- 	if string.byte(string.sub(Contt,k,k))>=128 then
			-- 		Result=0
			-- 		break
			-- 	else
			-- 		Result=2
			-- 	end
			-- 	k=k+1
			-- end
		end
	end
	if Result == 2 then
		if HTTPReturn == "000" then
			local dlrt1
			dlrt1 = GetAPI_HttpClient("www.baidu.com", "GET / HTTP/1.1\r\nHOST:www.baidu.com\r\nUser-Agent:Mozilla/5.0 Mobile\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n", "www.baidu.com")
			if tonumber(dlrt1) == 6 then
				Result = 2
			else
				Result = 1
			end
		end
		local ree, pingrett = GetAPI_PingInfo(HUrl, 3, 32)
		DebugLogId("PING:" .. HUrl .. "...测试值:" .. pingrett)
		local ret, pingret = GetAPI_PingInfo("3g.baidu.com", 3, 32)
		DebugLogId("PING百度...测试值:" .. pingret)
		local res, pingres = GetAPI_PingInfo("3g.qq.com", 3, 32)
		DebugLogId("PINGQQ...测试值:" .. pingres)
		local ret = CheckPingRes(pingret, 3)
		local res = CheckPingRes(pingres, 3)
		if HTTPReturn ~= "000" then
			if ret == 0 or res == 0 then
				Result = 2
			else
				Result = 1
			end
		end
		uploadinfo = MakePattern(uploadinfo, "PING:" .. HUrl .. "|" .. pingrett .. ",3g.baidu.com|" .. pingret .. ",3g.qq.com|" .. pingres)
	elseif Result == 0 then
		if tonumber(conret) > 5000 then
			local ree, pingrett = GetAPI_PingInfo(HUrl, 3, 32)
			DebugLogId("PING:" .. HUrl .. "...测试值:" .. pingrett)
			local ret, pingret = GetAPI_PingInfo("3g.baidu.com", 3, 32)
			DebugLogId("PING百度...测试值:" .. pingret)
			local res, pingres = GetAPI_PingInfo("3g.qq.com", 3, 32)
			DebugLogId("PINGQQ...测试值:" .. pingres)
			uploadinfo = MakePattern(uploadinfo, "PING:" .. HUrl .. "|" .. pingrett .. ",3g.baidu.com|" .. pingret .. ",3g.qq.com|" .. pingres)
			local ret = CheckPingRes(pingret, 3)
			local res = CheckPingRes(pingres, 3)
			if ret == - 2 or res == - 2 then
				Result = 1
			else
				Result = 4
			end
		end
	end
	DebugLogId("本次测试完成...测试结果:" .. Result)
	uploadinfo = MakePattern(uploadinfo, "RESULT:" .. Result)
	uploadinfo = string.format("POST /monitorapps/api/put_result HTTP/1.1\r\nHOST:%s\r\nAccpt:*/*\r\n%sContent-Length:0\r\nConnection:Close\r\n\r\n",Turl,uploadinfo)
	DebugLogId("上传测试数据...")
	GetAPI_HttpClient(Turl,uploadinfo)
	DebugLogId("测试数据上传完成..." .. Turl)
	return 0
end


function Get_DevicePram(Url,DId)			--上传信息
	local uploadinfo
	local DeviceCode,DevNetType,DeviceType,ProvCode
	uploadinfo=MakePattern(uploadinfo,"DOMAINID:"..DId)
	uploadinfo=MakePattern(uploadinfo,"Domain:"..Url)
	
	DeviceCode=GetAPI_DevCode()
	uploadinfo=MakePattern(uploadinfo,"DEVICECODE:"..DeviceCode)
	
	DevNetType=GetAPI_NetFlag()
	uploadinfo=MakePattern(uploadinfo,"DEVNETTYPE:"..DevNetType)
	
	DeviceType=GetAPI_DevType()
	uploadinfo=MakePattern(uploadinfo,"DEVICETYPE:"..DeviceType)
	
	ProvCode=GetAPI_Location()
	uploadinfo=MakePattern(uploadinfo,"PROVCODE:"..ProvCode)
	
	DebugLogId("获取设备参数完毕...")
	return uploadinfo
end

function Get_MonitorPram(Turl,pathurl,Httpsflag)
	local hdlurl = string.format("GET %s HTTP/1.1\r\nHOST:%s\r\nUser-Agent:Mozilla/5.0 Mobile\r\nAccpt:*/*\r\nContent-Length:0\r\nConnection:Close\r\n\r\n",pathurl,Turl)
	local hdlret,hdlcont,Postflag
	for kk = 1,3 do
		hdlret,_,_,_,_,_,_,_,_,_,hdlcont = GetAPI_HttpClient(Turl,hdlurl)
		if tonumber(hdlret) == 6 then 
			hdlcont=Strip(hdlcont)
			if hdlcont~="----------" then
				hdlcont=string.gsub(hdlcont,"----------","")
				Postflag=true
			end
			break 
		end
	end	
	if Httpsflag then		
		hdlcont=string.gsub(hdlcont,"\n", "")
		hdlcont=string.gsub(hdlcont,"%-", "",10)
		hdlcont=string.gsub(hdlcont,"\r", "")
		hdlcont=string.gsub(hdlcont," ", "")
	end
	return hdlret,hdlcont,Postflag
end
	
function GetAPI_HttpsClient(RawUrl,header,body)
	local retvalue,retcontent = Curl_HttpsClient(RawUrl,header,body)
	local httptb = splittable(retvalue,":")
	-- DebugLogId(string.format("http_code: %s", httptb[1]))
	-- DebugLogId(string.format("content_type: %s", httptb[2]))
	-- DebugLogId(string.format("time_total: %s ms", httptb[3] * 1000))
	-- DebugLogId(string.format("dns_lookup: %s ms", httptb[4] * 1000))
	-- DebugLogId(string.format("tcp_time_connect: %s ms",httptb[5] * 1000))
	-- DebugLogId(string.format("time_appconnect: %s ms",httptb[6] * 1000))
	-- DebugLogId(string.format("time_pretransfer: %s ms",httptb[7] * 1000))
	-- DebugLogId(string.format("time_starttransfer: %s ms",httptb[8] * 1000))
	-- DebugLogId(string.format(""))
	-- DebugLogId(string.format("size_request: %s bytes", httptb[9]))
	-- DebugLogId(string.format("size_header: %s bytes", httptb[10]))
	-- DebugLogId(string.format("size_download: %s byte", httptb[15]))
	-- DebugLogId(string.format("speed_download: %s byte/s", httptb[16]))
	-- DebugLogId(string.format("time_redirect: %s s", httptb[11]))
	-- DebugLogId(string.format(""))
	-- DebugLogId(string.format("remote_ip: %s ", httptb[12]))
	-- DebugLogId(string.format("local_ip: %s ", httptb[13]))
	-- DebugLogId(string.format("scheme: %s ", httptb[14]))
	-- DebugLogId(string.format("url_effective: %s: %s", httptb[18],httptb[19]))
	local HTTPReturn = httptb[1]		--状态码
	local IPAddress = httptb[13]		--local_ip
	-- local dlrt = 6
	local DnsIP = httptb[12]			--remote_ip
	local conret = httptb[6] * 1000		--建连时间 time_appconnect
	local DLret = httptb[3] * 1000		--总时长
	local Filesize = httptb[15]			--大小
	local Fbtime = httptb[8] * 1000		--首包时间
	local Dnstime = httptb[4] * 1000	--dns解析时间
	local sendtime = httptb[3] * 1000 - httptb[4] * 1000 - httptb[5] * 1000   	--发送时间
	DebugLogId(string.format("返回码：%s", HTTPReturn))
	DebugLogId(string.format("HTTP连接时延：%s ms", conret))
	DebugLogId(string.format("请求时延：%s ms", DLret))
	DebugLogId(string.format("文件大小：%s", Filesize))
	DebugLogId(string.format("IP地址：%s", IPAddress))
	DebugLogId(string.format("DNS地址：%s", DnsIP))
	DebugLogId(string.format("DNS解析：%s ms", Dnstime))
	DebugLogId(string.format("发送时间：%s ms", sendtime))
	DebugLogId(string.format("retcontent ：%s ", retcontent))
	local Content = retcontent:match("(.*)\r\n\r\n")		--头
	local btcontent = retcontent:match("\r\n\r\n(.*)")		--体
	local allcontent = retcontent	
	return HTTPReturn,Filesize,Ttime,Dnstime,conret,sendtime,Fbtime,DLret,IPAddress,DnsIP,Content,btcontent,allcontent
end

function Curl_HttpsClient(pramurl,header,body)
	local curlPathstr
	if File_Exists("/data/local/tmp/curl-7.40.0/bin/curl") then 
		curlPathstr = "/data/local/tmp/curl-7.40.0/bin/curl" 
	elseif cmd_exists("curl")==0 then
		DebugLogId(string.format( "该终端Autosense未安装curl模块，使用终端内置模块，可能会有部分值获取失败"))
		curlPathstr = "curl"
	else
		error("not found curl exit !! ")
	end
	_cfunc.Command(string.format( "am force-stop %s",curlPathstr))
	
	--梳理curl参数
	local curlpram = con_pram()
	
	curlPram = string.format('-s -w "ZXYXDTEST"%s',curlpram)
	DebugLogId(string.format("header.parm:\n%s", header))
	DebugLogId(string.format("body.parm:\n%s", body))
	if header~="" then
		curlPram = string.format( '%s -H "%s"',curlPram,header)
	end
	if body~="" then
		curlPram = string.format( "%s -X POST -d '%s'",curlPram,body)
	end
	curlPram = string.format( "%s %s -i %s -k",curlPathstr,curlPram,pramurl)
	
	DebugLogId(string.format( "curl(https): %s",curlPram))
	local testlog = _cfunc.Command(curlPram)
	local httpvalue = testlog:match("ZXYXDTEST(.*)")
	local httpret = testlog:match("(.*)ZXYXDTEST")
	DebugLogId("响应信息："..httpvalue)
	DebugLogId("响应包体："..httpret)
	return httpvalue, httpret
end

function con_pram()
	local curlpram = string.format('%s', "%{http_code}")    --状态码
	curlpram = string.format('%s:%s', curlpram, "%{content_type}")
	curlpram = string.format('%s:%s', curlpram, "%{time_total}")		--总时间：client发出请求；到web的server发送会所有的相应数据的时间，包含 tcp建连 dns解析
	curlpram = string.format('%s:%s', curlpram, "%{time_namelookup}")	    --DNS 解析域名 时间 单位 s
	curlpram = string.format('%s:%s', curlpram, "%{time_connect}")		    --client和server端建立TCP 连接的时间，包括DNS解析的时间
	curlpram = string.format('%s:%s', curlpram, "%{time_appconnect}")		--连接建立完成时间，如SSL/SSH等建立连接或者完成三次握手时间
	curlpram = string.format('%s:%s', curlpram, "%{time_pretransfer}")      --从开始到准备传输的时间
	curlpram = string.format('%s:%s', curlpram, "%{time_starttransfer}")    --在发出请求之后,Web 服务器返回数据的第一个字节所用的时间
	curlpram = string.format('%s:%s', curlpram, "%{size_request}")		--请求的大小
	curlpram = string.format('%s:%s', curlpram, "%{size_header}")		--下载的header的大小 bytes
	curlpram = string.format('%s:%s', curlpram, "%{time_redirect}")		--重定向时间，包括到最后一次传输前的几次重定向的DNS解析，连接，预传输，传输时间。
	curlpram = string.format('%s:%s', curlpram, "%{remote_ip}")		--10
	curlpram = string.format('%s:%s', curlpram, "%{local_ip}")
	curlpram = string.format('%s:%s', curlpram, "%{scheme}")            --请求方式
	curlpram = string.format('%s:%s', curlpram, "%{size_download}")     --
	curlpram = string.format('%s:%s', curlpram, "%{speed_download}")	--下载速度 单位 byte/s
	curlpram = string.format('%s:%s', curlpram, "%{ssl_verify_result}")     --ssl认证结果，返回0表示认证成功
	curlpram = string.format('%s:%s', curlpram, "%{url_effective}")     --最后请求地址
	return curlpram
end
function url_overview(logdata, userurl,json)
	DebugLogId(string.format("packetdata[%s] to overview : %s", #logdata,userurl))
	local overview = _xsplit(logdata, '{"overview')
	for k, v in ipairs(overview) do
		overview[k] = '{"overview' .. v
	end
	local userhttptb = {}
	for k, v in pairs(overview) do
		if v:find(userurl) then
			local tmptb = json.decode(v)
			table.insert(userhttptb, tmptb)
		end
	end
	return userhttptb
end

function mgkv_HttpMain(cmddurl, scstr)
	local json = dofile(string.format("/data/local/tmp/c/mode/%s", "dkjson.lua"))
	scstr = scstr:gsub(" ", "")
	local rules = scstr:match("regex:%'(.-)%',") or ""
	local tvalue = scstr:match("value:%'(%a+)%',?") or ""
	DebugLogId(string.format("get [%s] value to [%s]", rules, tvalue))
	local function getpkglog(pktf)
		local files = io.open(pktf, "rb")
		local fdata = files:read("*all")
		files:close()
		os.remove(pktf)  --删除文件
		local file = io.open("/sdcard/packet_log.txt", "a+") --备份
		file:write(fdata .. "\n")
		file:close()
		return fdata
	end
	local uncode_mgdata = function(hturl, urlpacket,type) --解密数据
		local curlp = "/data/local/tmp/curl-7.40.0/bin"
		DebugLogId(string.format("请求解密接口: %s", hturl))
		local urlexc = ""
		if type then
			local postdata = ""
			for k, v in pairs(urlpacket["postdata params"]) do
				postdata = string.format('%s"%s":"%s",', postdata, k, v)
			end
			DebugLogId(string.format("请求数据: {%s}", sendata))
			urlexc = string.format("%s/curl -X POST -d '{%s}' %s", curlp, postdata, hturl)
		else
			if not urlpacket["postdata params"]["data"] then return "nil" end
			local getdata = ""
			for k, v in pairs(urlpacket["postdata params"]) do
				getdata = string.format("%s%s=%s&", getdata, k, v)
			end
			DebugLogId(string.format("请求数据: {%s}", getdata:sub(1,-2)))
			urlexc = string.format('%s/curl -d "%s" %s', curlp, getdata:sub(1,-2),hturl)
		end
		DebugLogId("解密命令:%s",urlexc)
		local httpstr = _cfunc.Command(urlexc)
		DebugLogId(string.format("解密返回值1: \n%s", httpstr))
		if #httpstr<6 then DebugLogId(string.format("ret: \n%s", httpstr or "nil")) httpstr = httpstr or '{Command return nil}' end
		local retpram = httpstr:match("{.*}") or "nil"
		DebugLogId(string.format("解密返回值: \n%s", retpram))
		G_mgScriptFlg["RESPONSE"] = _cfunc.Utf8ToGbk(retpram)
		DebugLogId("保存解密返回值至参数<RESPONSE>")
		return retpram
	end
	local pktf = "/sdcard/packet.log"
	local enurl = G_mgKVENURL or "nil" --解密地址
	local userurl = cmddurl or "nil" --捕获指定地址
	if not File_Exists(pktf) then
		local lslogtmp = _cfunc.Command("ls /sdcard/ -l |grep log")
		DebugLogId(string.format("未找到数据包文件 (请检查代理设置或抓包工具): \n%s", lslogtmp))
		return 1
	end
	local version = _cfunc.Command(string.format("dumpsys package %s |grep '%s'", "com.forys.network", "versionName"))
	local installTime = _cfunc.Command(string.format("dumpsys package %s |grep '%s'", "com.forys.network", "firstInstallTime"))
	DebugLogId(string.format("version: %s  installtime: %s", version, installTime))

	local function httpPKstr(urlpacket) --解析抓包json
		local httpstr = "nil"
		for i = #urlpacket, 1, -1 do
			if urlpacket[i] and urlpacket[i]["postdata params"] then
				httpstr = uncode_mgdata(enurl, urlpacket[i]) or "nil" --解密
				httpstr = httpstr:match(rules) or "nil" --正则捕获的值
				DebugLogId(string.format("regex[%s]获取到的对应值: %s", i, httpstr))
				if httpstr ~= "nil" then
					break
				end
			else 
				return "nil"
			end
		end
		return httpstr
	end 
	local httpstr = "nil"
	for i = 1, 3 do
		_cfunc.Sleep(3 * 1000)
		local logdata = getpkglog(pktf) --获取已捕获的包
		local urlpacket = url_overview(logdata, userurl, json) --获取url.view
		DebugLogId(string.format("当前packet,共找到 url.view: %s 个", #urlpacket))
		httpstr= httpPKstr(urlpacket)
		if httpstr == "nil" then
			local psnettmp = _cfunc.Command("ps |grep com.forys.network")
			DebugLogId(string.format("send postdata is null, 请检查: %s:%s", pktf, psnettmp))
		elseif httpstr ~= "nil" then
			break
		end
	end
	httpstr = httpstr:gsub('"', "") or "nil"
	if httpstr ~= "nil" and httpstr ~= "" then
		local kvstr = string.format('{"%s":"%s"}', tvalue, httpstr)
		local pram = json.decode(kvstr)
		for k, v in pairs(pram) do
			G_mgScriptFlg[k] = v
		end --放入全局表中
	else
		return 1
	end
	DebugLogId(string.format("save as [%s] done .", tvalue))
end
