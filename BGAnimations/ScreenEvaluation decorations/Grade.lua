local t = LoadFallbackB();
local GradeP1, GradeP2

local function ResultsPage1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		GradeP1:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		GradeP1:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		GradeP1:visible(false)
	end
end

local function ResultsPage1_2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		GradeP2:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_7" then
		GradeP2:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		GradeP2:visible(false)
	end
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
		LoadActor(GetGrade(PLAYER_1))..{
			BeginCommand=cmd(x,CenterX()-336;y,CenterY()-107;zoom,0.35);
			InitCommand=function(self)
				GradeP1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
		LoadActor(GetGrade(PLAYER_2))..{
			BeginCommand=cmd(x,CenterX()+222;y,CenterY()-107;zoom,0.35);
			InitCommand=function(self)
				GradeP2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
	}
end

return t