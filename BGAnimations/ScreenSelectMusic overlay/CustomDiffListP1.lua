local gridLength = 25
local gridZoomFactor = 0.3

local t = Def.ActorFrame{
	LoadFont("Common Normal")..{
		Name="Difficulty";
		InitCommand=cmd(xy,Left()+13,Bottom()-70;zoom,0.5;align,0,1;shadowlength,1;uppercase,true);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			local GetSteps = GetCurrentSteps(PLAYER_1)
			local difficulty = GetSteps:GetDifficulty()
			local Meter = GetSteps:GetMeter()
			local ToDiff
			
			if difficulty == "Difficulty_Beginner" then
				ToDiff = "NOVICE"
			elseif difficulty == "Difficulty_Easy" then
				ToDiff = "EASY"
			elseif difficulty == "Difficulty_Medium" then
				ToDiff = "MEDIUM"
			elseif difficulty == "Difficulty_Hard" then
				ToDiff = "HARD"
			elseif difficulty == "Difficulty_Challenge" then
				ToDiff = "EXPERT"
			elseif difficulty and GetSteps:IsAnEdit() then
				ToDiff = GetSteps:GetChartName()
			end
			
			self:sleep(0.01)
			self:queuecommand("Update")
			self:settext(ToDiff .. " " .. Meter)
			self:diffuse(CustomDifficultyToColor(difficulty));
		end
	};
	LoadActor("_block")..{
		Name="Ticks BG";
		InitCommand=cmd(xy,Left()+12,Bottom()-48;align,0,1;shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			local width = 24
			local height = self:GetHeight();
			local meter = 25
		
			self:sleep(0.01)
			self:queuecommand("Update")
			self:zoomto(width * meter * gridZoomFactor * 1.5, height * gridZoomFactor);
			self:customtexturerect(0, 0, meter, 1);
			self:diffuse(ColorDarkTone(color("#FFFFFF")));
		end
	};
	LoadActor("_block")..{
		Name="Ticks";
		InitCommand=cmd(xy,Left()+12,Bottom()-48;align,0,1;shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			local width = 24
			local height = self:GetHeight();
			local GetSteps = GetCurrentSteps(PLAYER_1)
			local difficulty = GetSteps:GetDifficulty()
		
			local meter = GetSteps:GetMeter()
				if meter > gridLength then
				meter = gridLength
			end
		
			self:sleep(0.01)
			self:queuecommand("Update")
			self:zoomto(width * meter * gridZoomFactor * 1.5, height * gridZoomFactor);
			self:customtexturerect(0, 0, meter, 1);
			self:diffuse(CustomDifficultyToColor(difficulty));
		end
	};
};
return t