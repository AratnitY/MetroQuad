local t = Def.ActorFrame{};

local ShowGraphDisplayP1
local ShowGraphDisplayP2

local function ResultsPage1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		ShowGraphDisplayP1:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		ShowGraphDisplayP1:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		ShowGraphDisplayP1:visible(false)
	end
end

local function ResultsPage1_2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		ShowGraphDisplayP2:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_7" then
		ShowGraphDisplayP2:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		ShowGraphDisplayP2:visible(false)
	end
end

-- GraphDisplay P1
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.GraphDisplay{
		InitCommand=cmd(y,CenterY()+88;x,Left()+148;zoom,0.62);
		OffCommand=cmd(decelerate,0.2;diffusealpha,0);
		BeginCommand=function(self)
			ShowGraphDisplayP1=self
			self:visible(IsPlayerEnabled(PLAYER_1) and true or false)
			
			self:Load("GraphDisplay")
			local playerStageStats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
			local stageStats = STATSMAN:GetCurStageStats()
			self:Set(stageStats, playerStageStats)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
	}
end

-- GraphDisplay P2
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.GraphDisplay{
		InitCommand=cmd(y,CenterY()+88;x,Right()-148;zoom,0.62);
		OffCommand=cmd(decelerate,0.2;diffusealpha,0);
		BeginCommand=function(self)
			ShowGraphDisplayP2=self
			self:visible(IsPlayerEnabled(PLAYER_2) and true or false)
			
			self:Load("GraphDisplay")
			local playerStageStats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2)
			local stageStats = STATSMAN:GetCurStageStats()
			self:Set(stageStats, playerStageStats)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
	}
end

return t