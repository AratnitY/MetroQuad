local t = Def.ActorFrame{

	LoadFont("Common Normal")..{
		Name="P1Grade";
		Text="";
		InitCommand=cmd(y,SCREEN_TOP+58+20;x,SCREEN_CENTER_X-374;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsStatsVisible(PLAYER_1));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			self:settext(RenamedGrade(PLAYER_1))
			self:sleep(0.01)
			self:zoom(0.5)
			self:queuecommand("Update")
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="P2Grade";
		Text="";
		InitCommand=cmd(y,SCREEN_TOP+58+20;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsStatsVisible(PLAYER_2));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			self:settext(RenamedGrade(PLAYER_2))
			self:sleep(0.01)
			self:zoom(0.5)
			self:queuecommand("Update")
		end;
	};
	
}

return t