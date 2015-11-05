local t = LoadFallbackB();

local ScoreP1, ScoreP2
local QuadP1, QuadP2
local TextP1, TextP2

local function ResultsPage1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		ScoreP1:visible(true)
		QuadP1:visible(true)
		TextP1:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		ScoreP1:visible(false)
		QuadP1:visible(false)
		TextP1:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		ScoreP1:visible(false)
		QuadP1:visible(false)
		TextP1:visible(false)
	end
end

local function ResultsPage1_2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		ScoreP2:visible(true)
		QuadP2:visible(true)
		TextP2:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_7" then
		ScoreP2:visible(false)
		QuadP2:visible(false)
		TextP2:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		ScoreP2:visible(false)
		QuadP2:visible(false)
		TextP2:visible(false)
	end
end

local function GetCurrentPercentScore(pn)
	local pss = STATSMAN:GetPlayedStageStats(1):GetPlayerStageStats(pn);
	local DP = pss:GetPercentDancePoints()
	
	return DP
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(draworder,1);
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,CenterX()-214;y,CenterY()-118;zoom,1;shadowlength,1);
			InitCommand=function(self)
				ScoreP1=self
				self:visible(true)
				
				if GetCurrentPercentScore(PLAYER_1) == 1 then
						self:settext("100.00%");
					else
						self:settext(FormatPercentScore(GetCurrentPercentScore(PLAYER_1)));
				end;
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
	};
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(draworder,1);
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,CenterX()+344;y,CenterY()-118;zoom,1;shadowlength,1);
			InitCommand=function(self)
				ScoreP2=self
				self:visible(true)
				
				if GetCurrentPercentScore(PLAYER_2) == 1 then
						self:settext("100.00%");
					else
						self:settext(FormatPercentScore(GetCurrentPercentScore(PLAYER_2)));
				end;
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
	};
end

local function FullComboSymbol(pn,tns)
	local PlayedSS = STATSMAN:GetPlayedStageStats(1)
	local FCS = PlayedSS:GetPlayerStageStats(pn):FullComboOfScore(tns)
	
	return FCS
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
		Def.Quad{
			BeginCommand=cmd(x,Left()+212;y,CenterY()-114;zoomto,126,56;);
			InitCommand=function(self)
				local dColor
				local IsVisible
				local alpha
				
				if FullComboSymbol(PLAYER_1,9) == true then
					dColor = jColors[1]
					IsVisible = true
					alpha = 0.5
				elseif FullComboSymbol(PLAYER_1,8) == true then
					dColor = jColors[2]
					IsVisible = true
					alpha = 0.5
				elseif FullComboSymbol(PLAYER_1,7) == true then
					dColor = jColors[3]
					IsVisible = true
					alpha = 0.5
				elseif FullComboSymbol(PLAYER_1,6) == true then
					dColor = jColors[4]
					IsVisible = true
					alpha = 0.5
				else
					dColor = "#FFFFFF"
					IsVisible = false
					alpha = 0
				end
				
				QuadP1=self
				self:diffusealpha(alpha)
				self:visible(IsVisible);
				( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "0.8,0.95,1,1" );effectcolor2,color( dColor ) ) )(self);
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		
		LoadFont("Common Normal")..{
			Text="";
			BeginCommand=cmd(x,Left()+212;y,CenterY()-96;zoom,0.4;shadowlength,1);
			InitCommand=function(self)
				local dColor
				local IsVisible
				local text
				
				if FullComboSymbol(PLAYER_1,9) == true then
					dColor = jColors[1]
					IsVisible = true
					text = "Ridiculous Full Combo"
				elseif FullComboSymbol(PLAYER_1,8) == true then
					dColor = jColors[2]
					IsVisible = true
					text = "Fantastic Full Combo"
				elseif FullComboSymbol(PLAYER_1,7) == true then
					dColor = jColors[3]
					IsVisible = true
					text = "Excellent Full Combo"
				elseif FullComboSymbol(PLAYER_1,6) == true then
					dColor = jColors[4]
					IsVisible = true
					text = "Great Full Combo"
				else
					dColor = "#FFFFFF"
					IsVisible = false
					text = ""
				end
				
				TextP1=self
				self:settext(text)
				self:visible(IsVisible);
				( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "0.8,0.95,1,1" );effectcolor2,color( dColor ) ) )(self);
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
	};
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
		Def.Quad{
			BeginCommand=cmd(x,Right()-84;y,CenterY()-114;zoomto,126,56;);
			InitCommand=function(self)
				local dColor
				local IsVisible
				local alpha
				
				if FullComboSymbol(PLAYER_2,9) == true then
					dColor = jColors[1]
					IsVisible = true
					alpha = 0.5
				elseif FullComboSymbol(PLAYER_2,8) == true then
					dColor = jColors[2]
					IsVisible = true
					alpha = 0.5
				elseif FullComboSymbol(PLAYER_2,7) == true then
					dColor = jColors[3]
					IsVisible = true
					alpha = 0.5
				elseif FullComboSymbol(PLAYER_2,6) == true then
					dColor = jColors[4]
					IsVisible = true
					alpha = 0.5
				else
					dColor = "#FFFFFF"
					IsVisible = false
					alpha = 0
				end
				
				QuadP2=self
				self:diffusealpha(alpha)
				self:visible(IsVisible);
				( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "0.8,0.95,1,1" );effectcolor2,color( dColor ) ) )(self);
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		
		LoadFont("Common Normal")..{
			Text="";
			BeginCommand=cmd(x,Right()-84;y,CenterY()-96;zoom,0.4;shadowlength,1);
			InitCommand=function(self)
				local dColor
				local IsVisible
				local text
				
				if FullComboSymbol(PLAYER_2,9) == true then
					dColor = jColors[1]
					IsVisible = true
					text = "Ridiculous Full Combo"
				elseif FullComboSymbol(PLAYER_2,8) == true then
					dColor = jColors[2]
					IsVisible = true
					text = "Fantastic Full Combo"
				elseif FullComboSymbol(PLAYER_2,7) == true then
					dColor = jColors[3]
					IsVisible = true
					text = "Excellent Full Combo"
				elseif FullComboSymbol(PLAYER_2,6) == true then
					dColor = jColors[4]
					IsVisible = true
					text = "Great Full Combo"
				else
					dColor = "#FFFFFF"
					IsVisible = false
					text = ""
				end
				
				TextP2=self
				self:settext(text)
				self:visible(IsVisible);
				( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "0.8,0.95,1,1" );effectcolor2,color( dColor ) ) )(self);
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
	};
end

return t