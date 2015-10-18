local function PercentScoreToMax( pn )
	local r = LoadFont("Common normal")..{
		InitCommand=cmd(zoom,1;shadowlength,1;player,pn;halign,0;maxwidth,100);
		BeginCommand=cmd(playcommand,"Set");
		SetCommand=function(self)

			local SongOrCourse, StepsOrTrail;
			if GAMESTATE:IsCourseMode() then
				SongOrCourse = GAMESTATE:GetCurrentCourse()
				StepsOrTrail = GAMESTATE:GetCurrentTrail(pn)
			else
				SongOrCourse = GAMESTATE:GetCurrentSong()
				StepsOrTrail = GAMESTATE:GetCurrentSteps(pn)
			end;
			if SongOrCourse and StepsOrTrail then
				local st = StepsOrTrail:GetStepsType();
				local diff = StepsOrTrail:GetDifficulty();
				local courseType = GAMESTATE:IsCourseMode() and SongOrCourse:GetCourseType() or nil;
				local cd = GetCustomDifficulty(st, diff, courseType);
				self:diffuse(CustomDifficultyToColor(cd));
				self:shadowcolor(CustomDifficultyToDarkColor(cd));
			end

			local pss = STATSMAN:GetPlayedStageStats(1):GetPlayerStageStats(pn);
			if pss then
				local pct = pss:GetPercentDancePoints();
				local maxPoint = 1
				if pct == 1 then
					self:settext("100.00%");
				else
					self:settext(FormatPercentScore(maxPoint-pct));
				end;
			end;
			
		end;
	};
	return r
end

local t = LoadFallbackB();
local Players = GAMESTATE:GetHumanPlayers()

if ShowStandardDecoration("StepsDisplay") then
	for pn in ivalues(PlayerNumber) do
		local t2 = Def.StepsDisplay {
			InitCommand=cmd(Load,"StepsDisplayEvaluation",pn;SetFromGameState,pn;);
			UpdateNetEvalStatsMessageCommand=function(self,param)
				if GAMESTATE:IsPlayerEnabled(pn) then
					self:SetFromSteps(param.Steps)
				end;
			end;
		};
		t[#t+1] = StandardDecorationFromTable( "StepsDisplay" .. ToEnumShortString(pn), t2 );
		t[#t+1] = StandardDecorationFromTable( "PercentScoreToMax" .. ToEnumShortString(pn), PercentScoreToMax(pn) );
	end
end

for pn in ivalues(Players) do
	t[#t+1] = Def.ActorFrame{
		Name=ToEnumShortString(pn).." AF Upper",
		OnCommand=function(self)
			if pn == PLAYER_1 then
				self:x(_screen.cx - 155)
			elseif pn == PLAYER_2 then
				self:x(_screen.cx + 155)
			end
		end
	}

	t[#t+1] = Def.ActorFrame{
		Name=ToEnumShortString(pn).." AF Lower",
		OnCommand=function(self)
			if GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_OnePlayerTwoSides" then
				self:x(_screen.cx)
			else
				if pn == PLAYER_1 then
					self:x(_screen.cx - 155)
				elseif pn == PLAYER_2 then
					self:x(_screen.cx + 155)
				end
			end
		end,

		-- percentage score
		LoadActor("percentage", pn)..{
			Name="PercentageContainer"..ToEnumShortString(pn),
			InitCommand=function(self)
				self:visible(false)
			end,
			OnCommand=function(self)
				-- Format the Percentage string, removing the % symbol
				local text = self:GetText()
				text = text:gsub("%%", "")
				self:settext(text)
			end
		}

	}
end

for pn in ivalues(PlayerNumber) do
	local MetricsName = "MachineRecord" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor( THEME:GetPathG(Var "LoadingScreen", "MachineRecord"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
	};
end

for pn in ivalues(PlayerNumber) do
	local MetricsName = "PersonalRecord" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor( THEME:GetPathG(Var "LoadingScreen", "PersonalRecord"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
	};
end

for pn in ivalues(PlayerNumber) do
	local MetricsName = "StageAward" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor( THEME:GetPathG(Var "LoadingScreen", "StageAward"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
		BeginCommand=cmd(playcommand,"Set");
		SetCommand=function(self)
			local tStats = THEME:GetMetric(Var "LoadingScreen", "Summary") and STATSMAN:GetAccumPlayedStageStats() or STATSMAN:GetCurStageStats();
			tStats = tStats:GetPlayerStageStats(pn);
			if tStats:GetStageAward() and not tStats:GetFailed() then
				self:settext( THEME:GetString( "StageAward", ToEnumShortString( tStats:GetStageAward() ) ) );
			else
				self:settext( "" );
			end
		end;
	};
end

for pn in ivalues(PlayerNumber) do
	local MetricsName = "PeakComboAward" .. PlayerNumberToString(pn);
	t[#t+1] = LoadActor( THEME:GetPathG(Var "LoadingScreen", "PeakComboAward"), pn ) .. {
		InitCommand=function(self) 
			self:player(pn); 
			self:name(MetricsName); 
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
		end;
		BeginCommand=cmd(playcommand,"Set");
		SetCommand=function(self)
			local tStats = THEME:GetMetric(Var "LoadingScreen", "Summary") and STATSMAN:GetAccumPlayedStageStats() or STATSMAN:GetCurStageStats();
			tStats = tStats:GetPlayerStageStats(pn);
			if tStats:GetPeakComboAward() then
				self:settext( THEME:GetString( "PeakComboAward", ToEnumShortString( tStats:GetPeakComboAward() ) ) );
			else
				self:settext( "" );
			end
		end;
	};
end

t[#t+1] = StandardDecorationFromFileOptional("SongInformation","SongInformation") .. {
	BeginCommand=function(self)
		local SongOrCourse;
		if GAMESTATE:GetCurrentSong() then
			SongOrCourse = GAMESTATE:GetCurrentSong();
		elseif GAMESTATE:GetCurrentCourse() then
			SongOrCourse = GAMESTATE:GetCurrentCourse();
		else
			return
		end
		
		if SongOrCourse:HasBanner() then
			self:visible(true);
		else
			self:visible(true);
		end
	end;
	
	SetCommand=function(self)
		local c = self:GetChildren();
		local SongOrCourse;
		if GAMESTATE:GetCurrentSong() then
			SongOrCourse = GAMESTATE:GetCurrentSong();

			c.TextTitle:settext( SongOrCourse:GetDisplayMainTitle() or nil );
			c.TextSubtitle:settext( SongOrCourse:GetDisplaySubTitle() or nil );
			c.TextArtist:settext( SongOrCourse:GetDisplayArtist() or nil );

			if SongOrCourse:GetDisplaySubTitle() == "" then
				c.TextTitle:visible(true);
				c.TextTitle:y(119);
				c.TextSubtitle:visible(false);
				c.TextArtist:visible(true);
				c.TextArtist:y(139);
			else
				c.TextTitle:visible(true);
				c.TextTitle:y(119);
				c.TextSubtitle:visible(true);
				c.TextSubtitle:y(139);
				c.TextArtist:visible(true);
				c.TextArtist:y(157);
			end
		elseif GAMESTATE:GetCurrentCourse() then
			SongOrCourse = GAMESTATE:GetCurrentCourse();
			
			c.TextTitle:settext( SongOrCourse:GetDisplayMainTitle() or nil );
			c.TextSubtitle:settext( SongOrCourse:GetDisplaySubTitle() or nil );
			c.TextArtist:settext( SongOrCourse:GetDisplayArtist() or nil );
		else
			SongOrCourse = nil;
			
			c.TextTitle:settext("");
			c.TextSubtitle:settext("");
			c.TextArtist:settext("");
			
			self:playcommand("Hide")
		end
	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	DisplayLanguageChangedMessageCommand=cmd(playcommand,"Set");
};

t[#t+1] = StandardDecorationFromFileOptional("StageDisplay","StageDisplay");
t[#t+1] = StandardDecorationFromFileOptional("LifeDifficulty","LifeDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("TimingDifficulty","TimingDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("GameType","GameType");

t[#t+1] = Def.ActorFrame {
	Condition=GAMESTATE:HasEarnedExtraStage() and GAMESTATE:IsExtraStage() and not GAMESTATE:IsExtraStage2();
	InitCommand=cmd(draworder,105);
	LoadActor( THEME:GetPathS("ScreenEvaluation","try Extra1" ) ) .. {
		Condition=THEME:GetMetric( Var "LoadingScreen","Summary" ) == false;
		OnCommand=cmd(play);
	};
	LoadActor( THEME:GetPathG("ScreenStageInformation","Stage extra1" ) ) .. {
		Condition=THEME:GetMetric( Var "LoadingScreen","Summary" ) == false;
		InitCommand=cmd(Center);
		OnCommand=cmd(diffusealpha,0;zoom,0.85;bounceend,1;zoom,1;diffusealpha,1;sleep,0;glow,Color("White");decelerate,1;glow,Color("Invisible");smooth,0.35;zoom,0.25;y,SCREEN_BOTTOM-72);
	};
};

t[#t+1] = Def.ActorFrame {
	Condition=GAMESTATE:HasEarnedExtraStage() and not GAMESTATE:IsExtraStage() and GAMESTATE:IsExtraStage2();
	InitCommand=cmd(draworder,105);
	LoadActor( THEME:GetPathS("ScreenEvaluation","try Extra2" ) ) .. {
		Condition=THEME:GetMetric( Var "LoadingScreen","Summary" ) == false;
		OnCommand=cmd(play);
	};
	LoadActor( THEME:GetPathG("ScreenStageInformation","Stage extra2" ) ) .. {
		Condition=THEME:GetMetric( Var "LoadingScreen","Summary" ) == false;
		InitCommand=cmd(Center);
		OnCommand=cmd(diffusealpha,0;zoom,0.85;bounceend,1;zoom,1;diffusealpha,1;sleep,0;glow,Color("White");decelerate,1;glow,Color("Invisible");smooth,0.35;zoom,0.25;y,SCREEN_BOTTOM-72);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="YOUR RESULTS";
		InitCommand=cmd(x,SCREEN_LEFT+12;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;);
	};
};

t[#t+1] = LoadActor("AccumStats/AccumStatsP1_A");
t[#t+1] = LoadActor("AccumStats/AccumStatsP2_A");
t[#t+1] = LoadActor("Grade");
t[#t+1] = LoadActor("Judgments");
t[#t+1] = LoadActor("PercentScore");
t[#t+1] = LoadActor("TopBestScores");
t[#t+1] = LoadActor("GraphDisplay") .. { InitCommand=cmd(y,52;draworder,999); };

t[#t+1] = LoadActor("RateBPM");
t[#t+1] = LoadActor("NormalBPM");
t[#t+1] = LoadActor("ScoreVocalization");
t[#t+1] = LoadActor("TabsNumber") .. { InitCommand=cmd(y,4); };

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(y,10);
	LoadFont("Common Normal") .. {
		Text="Normal BPM:";
		InitCommand=cmd(x,SCREEN_CENTER_X-125;y,SCREEN_CENTER_Y+12;zoom,0.4;horizalign,left;maxwidth,150);
	};
	LoadFont("Common Normal") .. {
		Text="Rated BPM:";
		InitCommand=cmd(x,SCREEN_CENTER_X+17;y,SCREEN_CENTER_Y+12;zoom,0.4;horizalign,left;maxwidth,150);
	};
	LoadFont("Common Normal") .. {
		Text="Lost P1 Score:";
		InitCommand=cmd(x,SCREEN_CENTER_X-125;y,SCREEN_CENTER_Y+30;zoom,0.4;horizalign,left;maxwidth,150;visible,GAMESTATE:IsHumanPlayer(PLAYER_1));
	};
	LoadFont("Common Normal") .. {
		Text="Lost P2 Score:";
		InitCommand=cmd(x,SCREEN_CENTER_X+17;y,SCREEN_CENTER_Y+30;zoom,0.4;horizalign,left;maxwidth,150;visible,GAMESTATE:IsHumanPlayer(PLAYER_2));
	};
	LoadFont("Common Normal") .. {
		Text="Next P1 Grade:";
		InitCommand=cmd(x,SCREEN_CENTER_X-125;y,SCREEN_CENTER_Y+48;zoom,0.4;horizalign,left;maxwidth,150;visible,GAMESTATE:IsHumanPlayer(PLAYER_1));
	};
	LoadFont("Common Normal") .. {
		Text="Next P2 Grade:";
		InitCommand=cmd(x,SCREEN_CENTER_X+17;y,SCREEN_CENTER_Y+48;zoom,0.4;horizalign,left;maxwidth,150;visible,GAMESTATE:IsHumanPlayer(PLAYER_2));
	};
	LoadFont("Common Normal") .. {
		Text=NextGrade(PLAYER_1);
		InitCommand=cmd(x,SCREEN_CENTER_X-60;y,SCREEN_CENTER_Y+48;zoom,0.4;horizalign,left;maxwidth,100;visible,GAMESTATE:IsHumanPlayer(PLAYER_1));
	};
	LoadFont("Common Normal") .. {
		Text=NextGrade(PLAYER_2);
		InitCommand=cmd(x,SCREEN_CENTER_X+82;y,SCREEN_CENTER_Y+48;zoom,0.4;horizalign,left;maxwidth,100;visible,GAMESTATE:IsHumanPlayer(PLAYER_2));
	};
};

return t