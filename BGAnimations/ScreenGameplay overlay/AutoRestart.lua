local t = Def.ActorFrame {};

local function CreateNewProfile(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_space" then
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenGameplay")
		SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
	end
end

t[#t+1] = Def.ActorFrame{
	LoadFont("Common Normal")..{
	Text="NOTE: Auto Restart is ENABLED! Press [SPACE] to restart song.";
		BeginCommand=cmd(y,CenterY()+189;shadowlength,1);
		InitCommand=function(self)
			self:zoom(0.4);
			(cmd(diffuseshift;effectperiod,0.5;effectcolor1,color("1,0.95,0.8,1");effectcolor2,color("0.8,0.95,1,1")))(self);
			
			if IsPlayerEnabled(PLAYER_1) and not IsPlayerEnabled(PLAYER_2) then
				self:x(CenterX()+190)
			elseif not IsPlayerEnabled(PLAYER_1) and IsPlayerEnabled(PLAYER_2) then
				self:x(CenterX()-190)
			elseif IsPlayerEnabled(PLAYER_1) and IsPlayerEnabled(PLAYER_2) then
				self:x(CenterX())
			end
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(CreateNewProfile) end,
	},
}

return t
