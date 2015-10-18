local t = Def.ActorFrame{};
local Song = GetCurrentSong()

local function PercentScore(pn)
	local t = LoadFont("SquareFont")..{
		InitCommand=cmd(zoom,0.5;shadowlength,1);
		BeginCommand=cmd(playcommand,"Set");
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

	return t;
end

for pn in ivalues(PlayerNumber) do
	if ShowStandardDecoration("PercentScore"..ToEnumShortString(pn)) then
		t[#t+1] = StandardDecorationFromTable("PercentScore"..ToEnumShortString(pn), PercentScore(pn));
	end;
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("Common Normal")..{
			Name="SavedGradeP1";
			Text=GetSavedGrade(PLAYER_1,1);
			InitCommand=cmd(x,CenterX()-374;y,Top()+58+20*17;zoom,0.5;shadowlength,1);
			OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		};
	};
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("Common Normal")..{
			Name="SavedGradeP2";
			Text=GetSavedGrade(PLAYER_2,1);
			InitCommand=cmd(x,CenterX()+374;y,Top()+58+20*17;zoom,0.5;shadowlength,1);
			OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
		};
	};
end

return t