--基础扩展函数，实现与平台无关
--脚本方法与功能对应表
luamap = {}
luamap._VERSION = '1.0.1_0702pm14'	

local srcpath = debug.getinfo(1).short_src:match("^.*/")
local logfile = string.format("%sluamap.log", srcpath)

function luamap._gmatch(str, pattern)
	local temp = {}
	for w in string.gmatch(str, pattern) do
		local ttt = string.gsub(w, "[%[%]]", "")
		table.insert(temp, ttt)
	end
	return temp
end
function luamap._xsplit(str, delimiter)
	if str == nil or str == "" or delimiter == nil then
		return nil
	end
	local result = {}
	for match in(str .. delimiter):gmatch("(.-)" .. delimiter) do
		table.insert(result, match)
	end
	return result
end
function luamap._inTable(str, tab)
	local i = 1
	local retval = nil
	while i <= table.getn(tab) do
		if tab[i] == str then
			retval = i
			break
		end
		i = i + 1
	end
	return retval
end

function luamap._writeLog(filename, filevalue, wtype)
	local vfile
	wtype = wtype or "a+"
	filename = filename or logfile
	-- _cfunc.Print(string.format("filename: %s >>>>> %s :\n %s", wtype, filename, filevalue))
	vfile = io.open(filename, wtype)
	if vfile then
		filevalue = filevalue or 'nil'
		vfile:write(filevalue)
		vfile:close()
	end
end

function luamap._writeFile(filename, filevalue, wtype)
	filevalue = filevalue or 'nil'
	local str = string.format("[%s] %s\n", os.date(), filevalue)
	luamap._writeLog(filename, str, wtype)
end
function luamap._file_exists(path, kib)	--file_exists 好看
	local file = io.open(path, "rb")
	if file then
		kib = kib or 1
		file:close()
		file = luamap._getFileLen(path) > kib and file or nil
	end
	return file ~= nil
end
function luamap._cmd_exists(cmdd, cmdpath)
	local excmd = string.format("%s -? > %sexcmd.txt", cmdd, cmdpath)
	os.execute(excmd)
	local vlog = luamap.readfile(string.format("%sexcmd.txt", cmdpath))
	luamap._writeFile(logfile, string.format("cmdd: %s >>>>> %s ", cmdd, vlog))
	return not vlog:match('not')
end
function luamap._rmRepeat(str_tb)
	local tmp = {}
	for k, v in pairs(str_tb) do
		tmp[v] = true
	end
	local str_tb = {}
	for key, val in pairs(tmp) do
		table.insert(str_tb, key)
	end
	return str_tb
end
function luamap._sumTable(tb1, tb2)
	local rettb = {}
	for i in pairs(tb1) do
		if tb1[i] ~= "" then
			table.insert(rettb, tb1[i])
		end
	end
	for i in pairs(tb2) do
		if tb2[i] ~= "" then
			table.insert(rettb, tb2[i])
		end
	end
	return luamap._rmRepeat(rettb)
end
function luamap._getFileLen(filename)
	local fh = assert(io.open(filename, "rb"))
	local len = assert(fh:seek("end"))
	fh:close()
	return len
end
function luamap.oldreadfile(fname)
	local file = 'nil'
	if not luamap._file_exists(fname) then return "nil" end
	local f = assert(io.open(fname, 'rb'))
	if f then
		file = f:read("*all")
		f:close()
	end
	
	return file
end
function luamap.readfile(FileName)
	local ReadContent
	pcall(function()
		io.input(FileName)
		ReadContent = io.read("*a")
		io.close()
	end)
	return ReadContent
end
function string.firstup(str)    --首字母大写
	return string.sub(string.upper(str), 1, 1) .. string.lower(string.sub(string.upper(str), 2))
end
function luamap._fileToTable(filename)  --文件行内容入表
	local datalists = {}
	local sourcetxt = assert(io.open(filename, "rb"))
	for line in sourcetxt:lines() do
		table.insert(datalists, line)
	end
	sourcetxt:close()
	return datalists
end
function luamap._lsfolder(lpath) --获取目录下文件夹名列表
	local filesTb = {}
	lpath = lpath or " "
	local tmpf = string.format('%sstrtmp', srcpath) -- "/data/local/tmp/strtmp"
	os.execute(string.format("ls %s -F|grep '/$' > %s", lpath, tmpf))	
	filesTb = luamap._fileToTable(tmpf)
	local ret, err = os.remove(tmpf)
	if ret == nil then luamap._writeFile(logfile, string.format("rm file(%s) faile", tmpf)) end
	return filesTb
end
function luamap._lsfiles(lpath) --获取目录下文件名列表
	local filesTb = {}
	lpath = lpath or " "
	local tmpf = string.format('%sstrtmp', srcpath) -- "/data/local/tmp/strtmp"
	local tmpf = string.format('strtmp') 	--是否可行有待验证
	os.execute(string.format("ls %s > %s", lpath, tmpf))	---al|grep '^-' 
	filesTb = luamap._fileToTable(tmpf)		--是否过滤文件夹
	local ret, err = os.remove(tmpf)
	if ret == nil then luamap._writeFile(logfile, string.format("rm file(%s) faile", tmpf)) end
	return filesTb
end
function luamap._findword(str, words) --查关键字
	local s, slen, wlen
	slen = string.len(str)
	wlen = string.len(words)
	s = 1
	while s <= slen do
		if string.sub(str, s, s + wlen - 1) == words then
			return true
		end
		s = s + 1
	end
	return false
end
function luamap._cpfile(sourcefile, destfile) --拷贝文件
	if not luamap._file_exists(sourcefile) then
		luamap._writeFile(logfile, string.format("文件( %s )不存在 ", sourcefile))
		return - 1
	end
	luamap._writeFile(logfile, string.format("cp file %s >>>>> %s ", sourcefile, destfile))
	os.execute(string.format("cp %s %s", sourcefile, destfile))
end
function luamap._cpfolder(lpath, gpath)	--复制文件夹下所有内容,没有后缀名 认为是文件夹
	local filetb = luamap._lsfiles(lpath)
	for k, v in pairs(filetb) do
		if v:find('%.') then
			local tmpfile = string.format("%s/%s", lpath, v)
			local endfile = string.format("%s/%s", gpath, v)
			luamap._cpfile(tmpfile, endfile)
		else
			local skd_lpath = string.format("%s/%s", lpath, v)	
			os.execute(string.format('mkdir -p %s/%s', gpath, v))
			luamap._cpfolder(skd_lpath, string.format("%s/%s", gpath, v))
		end
	end
end
function luamap._sleep(s)   -- 单位秒
	local socket = require("socket")
	if socket ~= nil then
		s = s or 1
		socket.select(nil, nil, s)
	else
		luamap._writeFile(logfile, "sleep function unable!")
	end
end
function luamap._gettime()   -- 获取时间戳，单位ms
	local socket = require("socket")
	if socket ~= nil then
		return socket.gettime()
	else
		luamap._writeFile(logfile, "gettime function unable!")
	end
end
function luamap._getlocalhost(s)   -- 获取本机ip
	local socket = require("socket")
	print(os.time())
	function GetAdd(hostname)
		local ip, resolved = socket.dns.toip(hostname)
		local ListTab = {}
		for k, v in ipairs(resolved.ip) do
			table.insert(ListTab, v)
		end
		return ListTab
	end
	
	print(unpack(GetAdd('localhost')))
	print(unpack(GetAdd(socket.dns.gethostname())))
end
function luamap._readDumpFile(xpathFile)		--解析dump文件
	local file
	while true do
		local f = assert(io.open(xpathFile, 'rb'))
		if f then
			file = f:read("*all")
			f:close()
			break
		else
			luamap._sleep(0.1)
		end
	end
	if #file > 60 then 	--获取node信息
		file = string.sub(file, file:find('<node'), file:find('</hierarchy>') - 1)
		file = string.gsub(file, "</node>", "")
	else
		luamap._writeFile(logfile, "dump file read false!" .. #file)
	end
	return file
end
--###################################### 功能扩展函数 #############################################
--###################################### 可能没啥用 #############################################
--==============================--
--desc:
--time:2018-04-17 11:01:37
--@pkgname
--return 
--==============================--
function _uDevGrepPS_pid(pkgname) --检查进程
	local tmpstr = string.format("ps|grep %s", pkgname)
	local pids = _cfunc.Command(tmpstr) --通过pid检查是否启动完成
	if pids ~= "" then
		debugMsg("进程已启动: " .. pids)
		return true
	else
		return false
	end
end


return luamap 