--[[
  罗技鼠标宏
  https://github.com/kzli/pubg
]]

-- 总开关键
SwitchButton = "scrolllock"

-- 启用全自动开关
SwitchBoomAllButton = "capslock"

-- 开关按键
M16 = 4
M4 = 5
Scarl = 6

-- 是否为激活状态
IsM4 = false
IsScarl = false
IsM16 = false

-- 左键是否为按下状态
IsOnClick = false

-- 启用左键监听,默认左键关闭
EnablePrimaryMouseButtonEvents(true)

-- 激活
function ActivationM16()
	IsM4 = false
	IsScarl = false
	IsM16 = not IsM16
	IsOnClick = false
end

function ActivationM4()
	IsM4 = not IsM4
	IsScarl = false
	IsM16 = false
	IsOnClick = false
end

function ActivationScarl()
	IsM4 = false
	IsScarl = not IsScarl
	IsM16 = false
	IsOnClick = false
end

-- 压枪
-- M16
-- 点射
function BoomM16Point()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1840 then 
					MoveMouseRelative(0, 29)
			elseif shotTime > 1000 then
					MoveMouseRelative(0, 29)
			elseif shotTime > 680 then
					MoveMouseRelative(0, 45)
			elseif shotTime < 680 then
					MoveMouseRelative(0, 26)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick ) 
end

-- 自动
function BoomM16()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1840 then
					MoveMouseRelative(0, 8)
			elseif shotTime > 1000 then
					MoveMouseRelative(0, 10.2)
			elseif shotTime > 680 then
					MoveMouseRelative(0, 13.6)
			elseif shotTime < 680 then
					MoveMouseRelative(0, 7)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )
end

-- shift
function ShiftM16()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1840 then
				MoveMouseRelative(0, 10)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 12.5)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 14.5)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 10.5)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )
end

-- 全自动
function BoomAllM16()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1840 then 
				MoveMouseRelative(0, 8)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 8)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 11)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 7)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )
end

-- M4
-- 点射和Scarl一样 @see BoomScarlPoint()

-- 自动
function BoomM4()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1840 then
				MoveMouseRelative(0, 10.1)
			elseif shotTime > 1500 then
				MoveMouseRelative(0, 10)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 9.8)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 13.8)--up
			elseif shotTime < 680 then
				MoveMouseRelative(0, 7.8)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30 
		else
			break
		end
	until( not IsOnClick )				
end

-- shift
function ShiftM4()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1840 then
				MoveMouseRelative(0, 13)
			elseif shotTime > 1500 then
				MoveMouseRelative(0, 12.5)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 11)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 19)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 11)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )
end

-- 全自动
function BoomAllM4()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1600 then
				MoveMouseRelative(0, 6)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 7)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 7)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 5)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )
end

-- Scarl
-- 点射
function BoomScarlPoint()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1600 then
				MoveMouseRelative(0, 29)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 29)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 45)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 26)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )
end

-- 自动
function BoomScarl()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1600 then
				MoveMouseRelative(0, 8)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 8)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 8.8)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 6.7)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )     
end

-- shift
function ShiftScarl()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if shotTime > 1600 then
				MoveMouseRelative(0, 10.7)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 10.7)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 11)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 8.7)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )    
end

-- 全自动
function BoomAllScarl()
	shotTime = 0 
	repeat
		if (IsMouseButtonPressed(1)) then
			if	shotTime > 1600 then
				MoveMouseRelative(0, 6)
			elseif shotTime > 1000 then
				MoveMouseRelative(0, 7)
			elseif shotTime > 680 then
				MoveMouseRelative(0, 7)
			elseif shotTime < 680 then
				MoveMouseRelative(0, 5)
			end
			PressAndReleaseKey("Left")
			Sleep(30)
			shotTime = shotTime + 30
		else
			break
		end
	until( not IsOnClick )    
end


-- 默认事件监听
function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %s\n", event, arg)
	
	-- 鼠标左键已被释放
	if (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
		IsOnClick = false	
		ReleaseKey("Left")
	end
	
	-- 鼠标左键 按下
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
		IsOnClick = not IsOnClick
	end
	
	-- 激活 m16
	if (event == "MOUSE_BUTTON_PRESSED" and arg == M16) then
		ActivationM16()
    end
	-- 激活 M4
	if (event == "MOUSE_BUTTON_PRESSED" and arg == M4) then
		ActivationM4()
    end
	-- 激活 Scarl
	if (event == "MOUSE_BUTTON_PRESSED" and arg == Scarl) then
		ActivationScarl()
    end
	
	-- 压枪
	-- M16
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsM16 and IsKeyLockOn(switchButton)) then
		if IsKeyLockOn(SwitchBoomAllButton)  then
			BoomAllM16()
		else
			if not IsModifierPressed("shift") then
				BoomM16Point()
			else
				ShiftM16()
			end
		end
    end
	
	-- M4
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsM4 and IsKeyLockOn(switchButton)) then
		if IsKeyLockOn(SwitchBoomAllButton)  then
			BoomAllM4()
		else
			if not IsModifierPressed("shift") then
				BoomScarlPoint()
			else
				ShiftM4()
			end
		end
    end
	
	-- Scarl
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsScarl and IsKeyLockOn(switchButton)) then
		if IsKeyLockOn(SwitchBoomAllButton)  then
			BoomAllScarl()
		else 
			if not IsModifierPressed("shift") then
				BoomScarlPoint()
			else
				ShiftScarl()
			end
		end
    end
end
