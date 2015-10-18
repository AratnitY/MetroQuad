local t = Def.ActorFrame{};

local JudgmentLabel1, JudgmentLabel2, JudgmentLabel3, JudgmentLabel4, JudgmentLabel5, JudgmentLabel6, JudgmentLabel8
local JudgmentResult1, JudgmentResult2, JudgmentResult3, JudgmentResult4, JudgmentResult5, JudgmentResult6, JudgmentResult7, JudgmentResult8
local JudgmentLabel1_2, JudgmentLabel2_2, JudgmentLabel3_2, JudgmentLabel4_2, JudgmentLabel5_2, JudgmentLabel6_2, JudgmentLabel7_2, JudgmentLabel8_2
local JudgmentResult1_2, JudgmentResult2_2, JudgmentResult3_2, JudgmentResult4_2, JudgmentResult5_2, JudgmentResult6_2, JudgmentResult7_2, JudgmentResult8_2

local function ResultsPage1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		-- Judgment Labels
		JudgmentLabel1:visible(true)
		JudgmentLabel2:visible(true)
		JudgmentLabel3:visible(true)
		JudgmentLabel4:visible(true)
		JudgmentLabel5:visible(true)
		JudgmentLabel6:visible(true)
		JudgmentLabel8:visible(true)
		-- Judgment Results
		JudgmentResult1:visible(true)
		JudgmentResult2:visible(true)
		JudgmentResult3:visible(true)
		JudgmentResult4:visible(true)
		JudgmentResult5:visible(true)
		JudgmentResult6:visible(true)
		JudgmentResult8:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		-- Judgment Labels
		JudgmentLabel1:visible(false)
		JudgmentLabel2:visible(false)
		JudgmentLabel3:visible(false)
		JudgmentLabel4:visible(false)
		JudgmentLabel5:visible(false)
		JudgmentLabel6:visible(false)
		JudgmentLabel8:visible(false)
		-- Judgment Results
		JudgmentResult1:visible(false)
		JudgmentResult2:visible(false)
		JudgmentResult3:visible(false)
		JudgmentResult4:visible(false)
		JudgmentResult5:visible(false)
		JudgmentResult6:visible(false)
		JudgmentResult8:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		-- Judgment Labels
		JudgmentLabel1:visible(false)
		JudgmentLabel2:visible(false)
		JudgmentLabel3:visible(false)
		JudgmentLabel4:visible(false)
		JudgmentLabel5:visible(false)
		JudgmentLabel6:visible(false)
		JudgmentLabel8:visible(false)
		-- Judgment Results
		JudgmentResult1:visible(false)
		JudgmentResult2:visible(false)
		JudgmentResult3:visible(false)
		JudgmentResult4:visible(false)
		JudgmentResult5:visible(false)
		JudgmentResult6:visible(false)
		JudgmentResult8:visible(false)
	end
end

local function ResultsPage1_2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		JudgmentLabel1_2:visible(true)
		JudgmentLabel2_2:visible(true)
		JudgmentLabel3_2:visible(true)
		JudgmentLabel4_2:visible(true)
		JudgmentLabel5_2:visible(true)
		JudgmentLabel6_2:visible(true)
		JudgmentLabel8_2:visible(true)
		
		JudgmentResult1_2:visible(true)
		JudgmentResult2_2:visible(true)
		JudgmentResult3_2:visible(true)
		JudgmentResult4_2:visible(true)
		JudgmentResult5_2:visible(true)
		JudgmentResult6_2:visible(true)
		JudgmentResult8_2:visible(true)
		
	elseif event.DeviceInput.button == "DeviceButton_7" then
		JudgmentLabel1_2:visible(false)
		JudgmentLabel2_2:visible(false)
		JudgmentLabel3_2:visible(false)
		JudgmentLabel4_2:visible(false)
		JudgmentLabel5_2:visible(false)
		JudgmentLabel6_2:visible(false)
		JudgmentLabel8_2:visible(false)
		
		JudgmentResult1_2:visible(false)
		JudgmentResult2_2:visible(false)
		JudgmentResult3_2:visible(false)
		JudgmentResult4_2:visible(false)
		JudgmentResult5_2:visible(false)
		JudgmentResult6_2:visible(false)
		JudgmentResult8_2:visible(false)
	
	elseif event.DeviceInput.button == "DeviceButton_8" then
		JudgmentLabel1_2:visible(false)
		JudgmentLabel2_2:visible(false)
		JudgmentLabel3_2:visible(false)
		JudgmentLabel4_2:visible(false)
		JudgmentLabel5_2:visible(false)
		JudgmentLabel6_2:visible(false)
		JudgmentLabel8_2:visible(false)
		
		JudgmentResult1_2:visible(false)
		JudgmentResult2_2:visible(false)
		JudgmentResult3_2:visible(false)
		JudgmentResult4_2:visible(false)
		JudgmentResult5_2:visible(false)
		JudgmentResult6_2:visible(false)
		JudgmentResult8_2:visible(false)
	end
end

t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,2);
	LoadFont("Common Normal")..{
		Text="HOLDS";
		BeginCommand=cmd(x,CenterX();y,CenterY()+89;zoom,0.6;shadowlength,1);
		InitCommand=function(self)
			self:visible(true)
		end,
	},
	LoadFont("Common Normal")..{
		Text="MINES";
		BeginCommand=cmd(x,CenterX();y,CenterY()+89+26;zoom,0.6;shadowlength,1);
		InitCommand=function(self)
			self:visible(true)
		end,
	},
	LoadFont("Common Normal")..{
		Text="HANDS";
		BeginCommand=cmd(x,CenterX();y,CenterY()+89+26*2;zoom,0.6;shadowlength,1);
		InitCommand=function(self)
			self:visible(true)
		end,
	},
}

local StageStats = STATSMAN:GetCurStageStats()
local P1StageStats = StageStats:GetPlayerStageStats(PLAYER_1);
local P2StageStats = StageStats:GetPlayerStageStats(PLAYER_2);

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,2);
		LoadFont("Common Normal")..{
			Text="RIDICULOUS";
			BeginCommand=cmd(x,Left()+40;y,CenterY()-54;zoom,0.7;horizalign,left;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="RIDICULOUS RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()-54;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[1]));
			InitCommand=function(self)
				JudgmentResult1=self
				self:visible(true)	
				self:settext(string.format("%04.f", P1StageStats:GetTapNoteScores('TapNoteScore_W1')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTIC";
			BeginCommand=cmd(x,Left()+40;y,CenterY()-54+26;zoom,0.7;horizalign,left;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="FANTASTIC RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()-54+26;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[2]));
			InitCommand=function(self)
				JudgmentResult2=self
				self:visible(true)
				self:settext(string.format("%04.f", P1StageStats:GetTapNoteScores('TapNoteScore_W2')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENT";
			BeginCommand=cmd(x,Left()+40;y,CenterY()-54+26*2;zoom,0.7;horizalign,left;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel3=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="EXCELLENT RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()-54+26*2;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[3]));
			InitCommand=function(self)
				JudgmentResult3=self
				self:visible(true)
				self:settext(string.format("%04.f", P1StageStats:GetTapNoteScores('TapNoteScore_W3')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Text="GREAT";
			BeginCommand=cmd(x,Left()+40;y,CenterY()-54+26*3;zoom,0.7;horizalign,left;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel4=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="GREAT RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()-54+26*3;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[4]));
			InitCommand=function(self)
				JudgmentResult4=self
				self:visible(true)
				self:settext(string.format("%04.f", P1StageStats:GetTapNoteScores('TapNoteScore_W4')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENT";
			BeginCommand=cmd(x,Left()+40;y,CenterY()-54+26*4;zoom,0.7;horizalign,left;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel5=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="DECENT RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()-54+26*4;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[5]));
			InitCommand=function(self)
				JudgmentResult5=self
				self:visible(true)
				self:settext(string.format("%04.f", P1StageStats:GetTapNoteScores('TapNoteScore_W5')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Text="MISS";
			BeginCommand=cmd(x,Left()+40;y,CenterY()-54+26*5;zoom,0.7;horizalign,left;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel6=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="MISS RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()-54+26*5;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[6]));
			InitCommand=function(self)
				JudgmentResult6=self
				self:visible(true)
				self:settext(string.format("%04.f", P1StageStats:GetTapNoteScores('TapNoteScore_Miss')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Text="MAX COMBO";
			BeginCommand=cmd(x,Left()+22;y,CenterY()+108;zoom,0.4;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel8=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		LoadFont("Common Normal")..{
			Name="MAX COMBO RESULT";
			BeginCommand=cmd(x,Left()+246;y,CenterY()+108;zoom,0.4;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				JudgmentResult8=self
				self:visible(true)
				self:settext(string.format("%06.0f", P1StageStats:MaxCombo()):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToSixZerosForMaxCombo(PLAYER_1); Diffuse = ColorDarkTone(White()) } )				
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
	}
end

local function GetSongRadarValues(pn,rc)
	local Steps = GetCurrentSteps(pn)
	local rValues = Steps:GetRadarValues(pn)
	local gValue = rValues:GetValue(rc)
	return gValue
end

local function GetPlayedRadarValues(pn,rc)
	local CurStat = STATSMAN:GetPlayedStageStats(1):GetPlayerStageStats(pn)
	local Value = CurStat:GetRadarActual(pn):GetValue(rc)
	return Value
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,2);
		LoadFont("Common Normal")..{
			Name="HOLDS RESULT";
			BeginCommand=cmd(x,CenterX()-84;y,CenterY()+89;zoom,0.45;shadowlength,1;diffuse,ColorDarkTone(color("#FFFFFF")));
			InitCommand=function(self)
				self:visible(true)
				self:settext(string.format("%04.0f", P1StageStats:GetHoldNoteScores('HoldNoteScore_Held')).. " / " .. string.format("%04.0f",GetSongRadarValues(PLAYER_1,7)))
			end,
		},
		LoadFont("Common Normal")..{
			Name="MINES RESULT";
			BeginCommand=cmd(x,CenterX()-84;y,CenterY()+89+26;zoom,0.45;shadowlength,1;diffuse,ColorDarkTone(color("#FFFFFF")));
			InitCommand=function(self)
				self:visible(true)
				self:settext(string.format("%04.0f", GetPlayedRadarValues(PLAYER_1,8)).. " / " .. string.format("%04.0f",GetSongRadarValues(PLAYER_1,8)))
			end,
		},
		LoadFont("Common Normal")..{
			Name="HANDS RESULT";
			BeginCommand=cmd(x,CenterX()-84;y,CenterY()+89+26*2;zoom,0.45;shadowlength,1;diffuse,ColorDarkTone(color("#FFFFFF")));
			InitCommand=function(self)
				self:visible(true)
				self:settext(string.format("%04.0f", GetPlayedRadarValues(PLAYER_1,9)).. " / " .. string.format("%04.0f",GetSongRadarValues(PLAYER_1,9)))
			end,
		},
	}
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,2);
		LoadFont("Common Normal")..{
			Text="RIDICULOUS";
			BeginCommand=cmd(x,Right()-254;y,CenterY()-54;zoom,0.7;horizalign,left;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel1_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="RIDICULOUS RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()-54;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[1]));
			InitCommand=function(self)
				JudgmentResult1_2=self
				self:visible(true)
				self:settext(string.format("%04.f", P2StageStats:GetTapNoteScores('TapNoteScore_W1')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTIC";
			BeginCommand=cmd(x,Right()-254;y,CenterY()-54+26;zoom,0.7;horizalign,left;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel2_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="FANTASTIC RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()-54+26;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[2]));
			InitCommand=function(self)
				JudgmentResult2_2=self
				self:visible(true)
				self:settext(string.format("%04.f", P2StageStats:GetTapNoteScores('TapNoteScore_W2')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENT";
			BeginCommand=cmd(x,Right()-254;y,CenterY()-54+26*2;zoom,0.7;horizalign,left;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel3_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="EXCELLENT RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()-54+26*2;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[3]));
			InitCommand=function(self)
				JudgmentResult3_2=self
				self:visible(true)
				self:settext(string.format("%04.f", P2StageStats:GetTapNoteScores('TapNoteScore_W3')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Text="GREAT";
			BeginCommand=cmd(x,Right()-254;y,CenterY()-54+26*3;zoom,0.7;horizalign,left;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel4_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="GREAT RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()-54+26*3;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[4]));
			InitCommand=function(self)
				JudgmentResult4_2=self
				self:visible(true)
				self:settext(string.format("%04.f", P2StageStats:GetTapNoteScores('TapNoteScore_W4')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENT";
			BeginCommand=cmd(x,Right()-254;y,CenterY()-54+26*4;zoom,0.7;horizalign,left;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel5_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="DECENT RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()-54+26*4;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[5]));
			InitCommand=function(self)
				JudgmentResult5_2=self
				self:visible(true)
				self:settext(string.format("%04.f", P2StageStats:GetTapNoteScores('TapNoteScore_W5')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Text="MISS";
			BeginCommand=cmd(x,Right()-254;y,CenterY()-54+26*5;zoom,0.7;horizalign,left;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel6_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="MISS RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()-54+26*5;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[6]));
			InitCommand=function(self)
				JudgmentResult6_2=self
				self:visible(true)
				self:settext(string.format("%04.f", P2StageStats:GetTapNoteScores('TapNoteScore_Miss')))
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Text="MAX COMBO";
			BeginCommand=cmd(x,Right()-274;y,CenterY()+108;zoom,0.4;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				JudgmentLabel8_2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		LoadFont("Common Normal")..{
			Name="MAX COMBO RESULT";
			BeginCommand=cmd(x,Right()-50;y,CenterY()+108;zoom,0.4;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				JudgmentResult8_2=self
				self:visible(true)
				self:settext(string.format("%06.0f", P2StageStats:MaxCombo()):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToSixZerosForMaxCombo(PLAYER_1); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,2);
		LoadFont("Common Normal")..{
			Name="HOLDS RESULT";
			BeginCommand=cmd(x,CenterX()+84;y,CenterY()+89;zoom,0.45;shadowlength,1;diffuse,ColorDarkTone(color("#FFFFFF")));
			InitCommand=function(self)
				self:visible(true)
				self:settext(string.format("%04.0f", P2StageStats:GetHoldNoteScores('HoldNoteScore_Held')).. " / " .. string.format("%04.0f",GetSongRadarValues(PLAYER_2,7)))
			end,
		},
		LoadFont("Common Normal")..{
			Name="MINES RESULT";
			BeginCommand=cmd(x,CenterX()+84;y,CenterY()+89+26;zoom,0.45;shadowlength,1;diffuse,ColorDarkTone(color("#FFFFFF")));
			InitCommand=function(self)
				self:visible(true)
				self:settext(string.format("%04.0f", GetPlayedRadarValues(PLAYER_2,8)).. " / " .. string.format("%04.0f",GetSongRadarValues(PLAYER_2,8)))
			end,
		},
		LoadFont("Common Normal")..{
			Name="HANDS RESULT";
			BeginCommand=cmd(x,CenterX()+84;y,CenterY()+89+26*2;zoom,0.45;shadowlength,1;diffuse,ColorDarkTone(color("#FFFFFF")));
			InitCommand=function(self)
				self:visible(true)
				self:settext(string.format("%04.0f", GetPlayedRadarValues(PLAYER_2,9)).. " / " .. string.format("%04.0f",GetSongRadarValues(PLAYER_2,9)))
			end,
		},
	}
end

return t