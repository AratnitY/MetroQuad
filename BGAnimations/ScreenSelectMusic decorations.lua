local t = LoadFallbackB();

local function StepsDisplay(pn)
	local function set(self, player)
		self:SetFromGameState( player );
	end

	local t = Def.StepsDisplay {
		InitCommand=cmd(Load,"StepsDisplay",GAMESTATE:GetPlayerState(pn););
	};

	if pn == PLAYER_1 then
		t.CurrentStepsP1ChangedMessageCommand=function(self) set(self, pn); end;
		t.CurrentTrailP1ChangedMessageCommand=function(self) set(self, pn); end;
	else
		t.CurrentStepsP2ChangedMessageCommand=function(self) set(self, pn); end;
		t.CurrentTrailP2ChangedMessageCommand=function(self) set(self, pn); end;
	end

	return t;
end

local function PercentScore(pn)
	local t = LoadFont("SquareFont")..{
		InitCommand=cmd(zoomx,0.77;zoomy,0.9;align,1,1;player,pn);
		BeginCommand=cmd(playcommand,"Set");
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == pn then
				self:visible(true);
				(cmd(playcommand,"Set"))(self);
			end;
		end;
		PlayerUnjoinedMessageCommand=function(self, params)
			if params.Player == pn then
				self:visible(true);
				(cmd(playcommand,"Set"))(self);
			end;
		end;		
		SetCommand=function(self)
		
			local SongOrCourse, StepsOrTrail;
			if GAMESTATE:IsCourseMode() then
				SongOrCourse = GAMESTATE:GetCurrentCourse();
				StepsOrTrail = GAMESTATE:GetCurrentTrail(pn);
			else
				SongOrCourse = GAMESTATE:GetCurrentSong();
				StepsOrTrail = GAMESTATE:GetCurrentSteps(pn);
			end;

			local profile, scorelist;
			local text = "";
			if SongOrCourse and StepsOrTrail then
				local st = StepsOrTrail:GetStepsType();
				local diff = StepsOrTrail:GetDifficulty();
				local courseType = GAMESTATE:IsCourseMode() and SongOrCourse:GetCourseType() or nil;
				local cd = GetCustomDifficulty(st, diff, courseType);
				self:diffuse(CustomDifficultyToColor(cd));
				self:shadowcolor(CustomDifficultyToDarkColor(cd));

				if PROFILEMAN:IsPersistentProfile(pn) then
					-- player profile
					profile = PROFILEMAN:GetProfile(pn);
				else
					-- machine profile
					profile = PROFILEMAN:GetMachineProfile();
				end;

				scorelist = profile:GetHighScoreList(SongOrCourse,StepsOrTrail);
				assert(scorelist)
				local scores = scorelist:GetHighScores();
				local topscore = scores[1];
				if topscore then
					text = string.format("%.2f%%", topscore:GetPercentDP()*100.0);
					-- 100% hack
					if text == "100.00%" then
						text = "100.00%";
					end;
				else
					text = string.format("%.2f%%", 0);
				end;
			else
				text = "";
			end;
			self:settext(text);
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	};

	if pn == PLAYER_1 then
		t.CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
		t.CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
		t.PlayerJoinedMessageCommand=cmd(playcommand,"Set");
	else
		t.CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		t.CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
	end

	return t;
end

for pn in ivalues(PlayerNumber) do
	local MetricsName = "StepsDisplay" .. PlayerNumberToString(pn);
	t[#t+1] = StepsDisplay(pn) .. {
		InitCommand=function(self) self:player(pn); self:name(MetricsName); ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == pn then
				self:visible(true);
				(cmd(zoom,0;bounceend,0.3;zoom,1))(self);
			end;
		end;
		PlayerUnjoinedMessageCommand=function(self, params)
			if params.Player == pn then
				self:visible(true);
				(cmd(bouncebegin,0.3;zoom,0))(self);
			end;
		end;
	};
	if ShowStandardDecoration("PercentScore"..ToEnumShortString(pn)) then
		t[#t+1] = StandardDecorationFromTable("PercentScore"..ToEnumShortString(pn), PercentScore(pn));
	end;
end

local ut = Def.ActorFrame{
	BeginCommand=cmd(draworder,200);
	LoadFont("Common Normal")..{
		Name="songArtist";
		InitCommand=cmd(x,CenterX()-76;y,Top()+152;zoom,0.5;align,0,0);
		OffCommand=cmd(decelerate,0.05;addy,900;);
		SetCommand=function(self)
			local song;
			local sub="";
			local art="";
			if GAMESTATE:IsCourseMode() then
			else
				song=GAMESTATE:GetCurrentSong();
				sub=song:GetDisplaySubTitle();
				art=song:GetDisplayArtist();
				self:settext(art);
			end;
		end;
	};
	-- Working as SubTitle
	LoadFont("Common Normal")..{
		Name="songTitle";
		InitCommand=cmd(x,CenterX()-112;y,Top()+80+24+11;zoom,0.35;halign,0);
		OffCommand=cmd(decelerate,0.05;addy,900);
		SetCommand=function(self)
			local song;
			local tit="";
			if GAMESTATE:IsCourseMode() then
				song=GAMESTATE:GetCurrentCourse();
				tit=song:GetDisplayFullTitle();
				
			else
				song=GAMESTATE:GetCurrentSong();
				tit=song:GetDisplayMainTitle();
			end;
			self:settextf("%s",tit);
		end;
	};
};

local function updateTitle(self)
	local upTit = self:GetChild("songTitle");
	local upArt = self:GetChild("songArtist");
	local curSelection = GAMESTATE:GetCurrentSong();
	local curSelCourse = GAMESTATE:GetCurrentCourse();
	upTit:maxwidth(280);
	upArt:maxwidth(410);
	if curSelection or curSelCourse then
		local song;
		local tit="";
		local sub="";
		local art="";
		if GAMESTATE:IsCourseMode() then
			song=GAMESTATE:GetCurrentCourse();
			tit=song:GetDisplayFullTitle();
			upTit:settextf("%s",tit);
		else
			song=GAMESTATE:GetCurrentSong();
			tit=song:GetDisplayMainTitle();
			art=song:GetDisplayArtist();
			
			if song:GetDisplaySubTitle() == "" then
				sub=""
			else
				sub=" - " .. song:GetDisplaySubTitle();
			end
			
			upTit:settext("");
		end;
		upTit:diffuse(color("1,1,1,1"));
		upTit:strokecolor(Color("White"));
		
		upArt:settext(art .. sub);
		upArt:diffuse(color("1,1,1,1"));
		upArt:strokecolor(Color("White"));
	else
		upTit:settext("");
		upArt:settext("");
	end;
end;

ut.InitCommand=cmd(SetUpdateFunction,updateTitle);

t[#t+1] = ut;
t[#t+1] = StandardDecorationFromFileOptional("PaneDisplayTextP1","PaneDisplayTextP1");
t[#t+1] = StandardDecorationFromFileOptional("PaneDisplayTextP2","PaneDisplayTextP2");
t[#t+1] = StandardDecorationFromFileOptional("StageDisplay","StageDisplay");
t[#t+1] = StandardDecorationFromFileOptional("DifficultyDisplay","DifficultyDisplay");

t[#t+1] = StandardDecorationFromFileOptional("SongTimeP1","SongTimeP1") .. {
	SetCommand=function(self)
		local curSelection = nil;
		local length = 0.0;
		if GAMESTATE:IsCourseMode() then
			curSelection = GAMESTATE:GetCurrentCourse();
			self:playcommand("Reset");
			if curSelection then
				local trail = GAMESTATE:GetCurrentTrail(GAMESTATE:GetMasterPlayerNumber());
				if trail then
					length = TrailUtil.GetTotalSeconds(trail);
				else
					length = 0.0;
				end;
			else
				length = 0.0;
			end;
		else
			curSelection = GAMESTATE:GetCurrentSong();
			self:playcommand("Reset");
			if curSelection then
				length = curSelection:MusicLengthSeconds();
				if curSelection:IsLong() then
					self:playcommand("Long");
				elseif curSelection:IsMarathon() then
					self:playcommand("Marathon");
				else
					self:playcommand("Reset");
				end
			else
				length = 0.0;
				self:playcommand("Reset");
			end;
		end;
		self:settext( SecondsToMSS(length) );
		self:visible(IsPlayerEnabled(PLAYER_1))
	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
}

t[#t+1] = StandardDecorationFromFileOptional("SongTimeP2","SongTimeP2") .. {
	SetCommand=function(self)
		local curSelection = nil;
		local length = 0.0;
		if GAMESTATE:IsCourseMode() then
			curSelection = GAMESTATE:GetCurrentCourse();
			self:playcommand("Reset");
			if curSelection then
				local trail = GAMESTATE:GetCurrentTrail(GAMESTATE:GetMasterPlayerNumber());
				if trail then
					length = TrailUtil.GetTotalSeconds(trail);
				else
					length = 0.0;
				end;
			else
				length = 0.0;
			end;
		else
			curSelection = GAMESTATE:GetCurrentSong();
			self:playcommand("Reset");
			if curSelection then
				length = curSelection:MusicLengthSeconds();
				if curSelection:IsLong() then
					self:playcommand("Long");
				elseif curSelection:IsMarathon() then
					self:playcommand("Marathon");
				else
					self:playcommand("Reset");
				end
			else
				length = 0.0;
				self:playcommand("Reset");
			end;
		end;
		self:settext( SecondsToMSS(length) );
		self:visible(IsPlayerEnabled(PLAYER_2))
	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
}

if GAMESTATE:IsCourseMode() then
	t[#t+1] = StandardDecorationFromFileOptional("NumCourseSongs","NumCourseSongs")..{
		InitCommand=cmd(horizalign,left;uppercase,true);
		SetCommand=function(self)
			local curSelection= nil;
			local sAppend = "";
			if GAMESTATE:IsCourseMode() then
				curSelection = GAMESTATE:GetCurrentCourse();
				if curSelection then
					sAppend = (curSelection:GetEstimatedNumStages() == 1) and "Stage" or "Stages";
					self:visible(true);
					self:settext( curSelection:GetEstimatedNumStages() .. " " .. sAppend);
				else
					self:visible(false);
				end;
			else
				self:visible(false);
			end;
		end;
		CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	};
end

t[#t+1] = StandardDecorationFromFileOptional("SortOrder","SortOrderText") .. {
	BeginCommand=cmd(playcommand,"Set");
	SortOrderChangedMessageCommand=cmd(playcommand,"Set";);
	SetCommand=function(self)
		local s = SortOrderToLocalizedString( GAMESTATE:GetSortOrder() );
		self:settext( s );
		self:maxwidth(190)
		self:uppercase(true)
		self:playcommand("Sort");
	end;
};

t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(x,Left()+204;y,Top()+52;zoomto,64,24;diffuse,color( LightBaseColor() );diffusealpha,0.8);
	};
	LoadFont("Common Normal") .. {
		Text="Sort:";
		InitCommand=cmd(x,Left()+204;y,Top()+48;zoom,0.3);
	};
	Def.Quad {
		InitCommand=cmd(x,Left()+276;y,Top()+52;zoomto,64,24;diffuse,color( LightBaseColor() );diffusealpha,0.8);
	};
	LoadFont("Common Normal") .. {
		Text="Style:";
		InitCommand=cmd(x,Left()+276;y,Top()+48;zoom,0.3);
	};
	Def.Quad {
		InitCommand=cmd(x,Left()+348;y,Top()+52;zoomto,64,24;diffuse,color( LightBaseColor() );diffusealpha,0.8);
	};
	LoadFont("Common Normal") .. {
		Text="Game:";
		InitCommand=cmd(x,Left()+348;y,Top()+48;zoom,0.3);
	};
--[[	Def.Quad {
		InitCommand=cmd(x,Left()+420;y,Top()+52;zoomto,64,24;diffuse,color( LightBaseColor() );diffusealpha,0.8);
	};]]
};

t[#t+1] = StandardDecorationFromFileOptional("SongOptions","SongOptionsText") .. {
	ShowPressStartForOptionsCommand=THEME:GetMetric(Var "LoadingScreen","SongOptionsShowCommand");
	ShowEnteringOptionsCommand=THEME:GetMetric(Var "LoadingScreen","SongOptionsEnterCommand");
	HidePressStartForOptionsCommand=THEME:GetMetric(Var "LoadingScreen","SongOptionsHideCommand");
};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("_switch","up")) .. {
		SelectMenuOpenedMessageCommand=cmd(stop;play);
	};
	LoadActor(THEME:GetPathS("_switch","down")) .. {
		SelectMenuClosedMessageCommand=cmd(stop;play);
	};
};

return t