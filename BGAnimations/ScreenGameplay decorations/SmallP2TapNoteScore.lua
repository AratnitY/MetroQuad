local StageStats = STATSMAN:GetCurStageStats()
local PlayerStats = StageStats:GetPlayerStageStats(PLAYER_2)

-- PLAYER 1
local t = Def.ActorFrame{

	LoadFont("Common Normal")..{
		Name="W1";
		Text="0 / 0.00%";
		InitCommand=cmd(y,SCREEN_TOP+58+20*5;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffuse,color(jColors[1]));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			local W1 = PlayerStats:GetTapNoteScores('TapNoteScore_W1')
			local PW1 = PlayerStats:GetPercentageOfTaps('TapNoteScore_W1')
			
			self:settext( W1 .. " / " .. FormatPercentScore(PW1) )
			self:sleep(0.01)
			self:diffuse(color("#CFDBDB"))
			self:zoom(0.5)
			self:maxwidth(150)
			self:queuecommand("Update")
			
			if self:GetText() == "0 / -1.#J%" then
				self:settext("0 / 0.00%")
			end
		end;
		
	};
	
	LoadFont("Common Normal")..{
		Name="W2";
		Text="0 / 0.00%";
		InitCommand=cmd(y,SCREEN_TOP+58+20*7;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffuse,color(jColors[2]));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			local W2 = PlayerStats:GetTapNoteScores('TapNoteScore_W2')
			local PW2 = PlayerStats:GetPercentageOfTaps('TapNoteScore_W2')
			
			self:settext( W2 .. " / " .. FormatPercentScore(PW2) )
			self:sleep(0.01)
			self:diffuse(color("#00FFFF"))
			self:zoom(0.5)
			self:maxwidth(150)
			self:queuecommand("Update")
			
			if self:GetText() == "0 / -1.#J%" then
				self:settext("0 / 0.00%")
			end
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="W3";
		Text="0 / 0.00%";
		InitCommand=cmd(y,SCREEN_TOP+58+20*9;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffuse,color(jColors[3]));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			local W3 = PlayerStats:GetTapNoteScores('TapNoteScore_W3')
			local PW3 = PlayerStats:GetPercentageOfTaps('TapNoteScore_W3')
			
			self:settext( W3 .. " / " .. FormatPercentScore(PW3) )
			self:sleep(0.01)
			self:diffuse(color("#FFFF00"))
			self:zoom(0.5)
			self:maxwidth(150)
			self:queuecommand("Update")
			
			if self:GetText() == "0 / -1.#J%" then
				self:settext("0 / 0.00%")
			end
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="W4";
		Text="0 / 0.00%";
		InitCommand=cmd(y,SCREEN_TOP+58+20*11;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffuse,color(jColors[4]));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			local W4 = PlayerStats:GetTapNoteScores('TapNoteScore_W4')
			local PW4 = PlayerStats:GetPercentageOfTaps('TapNoteScore_W4')
			
			self:settext( W4 .. " / " .. FormatPercentScore(PW4) )
			self:sleep(0.01)
			self:diffuse(color("#00FF00"))
			self:zoom(0.5)
			self:maxwidth(150)
			self:queuecommand("Update")
			
			if self:GetText() == "0 / -1.#J%" then
				self:settext("0 / 0.00%")
			end
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="W5";
		Text="0 / 0.00%";
		InitCommand=cmd(y,SCREEN_TOP+58+20*13;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffuse,color(jColors[5]));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);

		UpdateCommand=function(self)
			local W5 = PlayerStats:GetTapNoteScores('TapNoteScore_W5')
			local PW5 = PlayerStats:GetPercentageOfTaps('TapNoteScore_W5')
			
			self:settext( W5 .. " / " .. FormatPercentScore(PW5) )
			self:sleep(0.01)
			self:diffuse(color("#FF00FF"))
			self:zoom(0.5)
			self:maxwidth(150)
			self:queuecommand("Update")
			
			if self:GetText() == "0 / -1.#J%" then
				self:settext("0 / 0.00%")
			end
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="MISS";
		Text="0 / 0.00%";
		InitCommand=cmd(y,SCREEN_TOP+58+20*15;x,SCREEN_CENTER_X+376;zoom,0.5;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);diffuse,color(jColors[6]));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		
		UpdateCommand=function(self)
			local MISS = PlayerStats:GetTapNoteScores('TapNoteScore_Miss')
			local PMISS = PlayerStats:GetPercentageOfTaps('TapNoteScore_Miss')
			
			self:settext( MISS .. " / " .. FormatPercentScore(PMISS) )
			self:sleep(0.01)
			self:diffuse(color("#FF0000"))
			self:zoom(0.5)
			self:maxwidth(150)
			self:queuecommand("Update")
			
			if self:GetText() == "0 / -1.#J%" then
				self:settext("0 / 0.00%")
			end
		end;
	};
}

return t