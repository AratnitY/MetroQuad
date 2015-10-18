local t = Def.ActorFrame{

	LoadFont("Common Normal")..{
		Name="P1AliveSeconds";
		Text=" ";
		InitCommand=cmd(y,SCREEN_TOP+58+20*3;x,SCREEN_CENTER_X-375;zoom,0.5;shadowlength,1;visible,IsStatsVisible(PLAYER_1));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);

		UpdateCommand=function(self)
			self:settext(SecondsToMSSMsMs( STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetAliveSeconds() ))
			self:sleep(0.01);
			self:queuecommand("Update");
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="P2AliveSeconds";
		Text=" ";
		InitCommand=cmd(y,SCREEN_TOP+58+20*3;x,SCREEN_CENTER_X+375;zoom,0.5;shadowlength,1;visible,IsStatsVisible(PLAYER_2));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);

		UpdateCommand=function(self)
			self:settext(SecondsToMSSMsMs( STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetAliveSeconds() ))
			self:sleep(0.01);
			self:queuecommand("Update");
		end;
	};
}

return t