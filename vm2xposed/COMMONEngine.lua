--通用引擎,只有初始化函数

MobEdt="3.0.3"

function DeviceInit_COMMON(Id,SysParms,UsrParms)
	local devcount=0
	local ret
	for inx=1,5 do
		-- Serv_All_KillPs()
		if G_EngineMode=="IOS" then
			ret=Method_Touchs("N","",10)
		else
			ret=Method_Touchs("F","",10)
		end
		if ret==0 then
			devcount = devcount + 1
			break
		else
			print ("Initial againb")
			DebugLogId("Initial againb")
		end
	end
	return devcount
end;


function Device_SwitchNetwork_COMMON()
	DebugLogId("进入切网函数3")
	local ret,picidx
	local city = tostring(_cfunc.GetCityCode())
	local scriptcity = splittable(SwitchCity,'|')
	local scripttime = splittable(SwitchTime,'|')
	local cityret = InTable(city,scriptcity)
	local SwitchNetwork = splittable(scripttime[cityret],",")
	if InTable(os.date("%H"),SwitchNetwork) then
		if GetAPI_NetFlag()=='WIFI' then
			DebugLogId("4g时间，关闭wifi")
			_cfunc.SetWifiEnable(2)
			-- _cfunc.Command("su\nsvc wifi disable\nexit")
		end
	else
		if GetAPI_NetFlag()~='WIFI' then
			DebugLogId("wifi时间，开启wifi")
			_cfunc.SetWifiEnable(1)
			-- _cfunc.Command("su\nsvc wifi enable\nexit")
		end
	end
end

function DeviceUnInit_COMMON(Id,SysParms,UsrParms)
	-- Serv_All_KillPs()
	if G_EngineMode=="IOS" then
		ret=Method_Touchs("N","",10)
	else
		ret=Method_Touchs("F","",10)
	end
end;

function DeviceSecondInit_COMMON(DeviceName)
	-- Serv_All_KillPs()
	if G_EngineMode=="IOS" then
		ret=Method_Touchs("N","",10)
	else
		ret=Method_Touchs("F","",10)
	end
end
