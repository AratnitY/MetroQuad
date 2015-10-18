local t = Def.ActorFrame{};
local StatsP1 = GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsStatsVisible(PLAYER_1) and GAMESTATE:GetNumPlayersEnabled() == 1 and not GAMESTATE:IsDemonstration()

local TabP1Title1
local TabP1Judgment1, TabP1Judgment2, TabP1Judgment3, TabP1Judgment4, TabP1Judgment5, TabP1Judgment6, TabP1MaxCombo, TabP1CurrentGrade, TabP1AliveTime
local TabP1Judgment1Number, TabP1Judgment2Number, TabP1Judgment3Number, TabP1Judgment4Number, TabP1Judgment5Number, TabP1Judgment6Number, TabP1MaxComboNumber, TabP1CurrentGradeValue, TabP1AliveTimeValue
local TabP1Judgment1Percent, TabP1Judgment2Percent, TabP1Judgment3Percent, TabP1Judgment4Percent, TabP1Judgment5Percent, TabP1Judgment6Percent
local TabP1Best1, TabP1BestFantastic, TabP1BestExcellent, TabP1BestGreat, TabP1BestDecent, TabP1BestWayOff, TabP1BestMiss
local TabP1BestFantasticNumber, TabP1BestExcellentNumber, TabP1BestGreatNumber, TabP1BestDecentNumber, TabP1BestWayOffNumber, TabP1BestMissNumber, TabP1BestScore, TabP1BestGrade

local function TabP1Page1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		TabP1Title1:visible(true)
		TabP1Judgment1:visible(true)
		TabP1Judgment2:visible(true)
		TabP1Judgment3:visible(true)
		TabP1Judgment4:visible(true)
		TabP1Judgment5:visible(true)
		TabP1Judgment6:visible(true)
		TabP1Judgment1Number:visible(true)
		TabP1Judgment2Number:visible(true)
		TabP1Judgment3Number:visible(true)
		TabP1Judgment4Number:visible(true)
		TabP1Judgment5Number:visible(true)
		TabP1Judgment6Number:visible(true)
		TabP1Judgment1Percent:visible(true)
		TabP1Judgment2Percent:visible(true)
		TabP1Judgment3Percent:visible(true)
		TabP1Judgment4Percent:visible(true)
		TabP1Judgment5Percent:visible(true)
		TabP1Judgment6Percent:visible(true)
		TabP1MaxCombo:visible(true)
		TabP1MaxComboNumber:visible(true)
		TabP1Best1:visible(true)
		TabP1BestFantastic:visible(true)
		TabP1BestExcellent:visible(true)
		TabP1BestGreat:visible(true)
		TabP1BestDecent:visible(true)
		TabP1BestWayOff:visible(true)
		TabP1BestMiss:visible(true)
		TabP1BestFantasticNumber:visible(true)
		TabP1BestExcellentNumber:visible(true)
		TabP1BestGreatNumber:visible(true)
		TabP1BestDecentNumber:visible(true)
		TabP1BestWayOffNumber:visible(true)
		TabP1BestMissNumber:visible(true)
		TabP1BestScore:visible(true)
		TabP1BestGrade:visible(true)
		TabP1CurrentGrade:visible(true)
		TabP1CurrentGradeValue:visible(true)
		TabP1AliveTime:visible(true)
		TabP1AliveTimeValue:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		TabP1Title1:visible(false)
		TabP1Judgment1:visible(false)
		TabP1Judgment2:visible(false)
		TabP1Judgment3:visible(false)
		TabP1Judgment4:visible(false)
		TabP1Judgment5:visible(false)
		TabP1Judgment6:visible(false)
		TabP1Judgment1Number:visible(false)
		TabP1Judgment2Number:visible(false)
		TabP1Judgment3Number:visible(false)
		TabP1Judgment4Number:visible(false)
		TabP1Judgment5Number:visible(false)
		TabP1Judgment6Number:visible(false)
		TabP1Judgment1Percent:visible(false)
		TabP1Judgment2Percent:visible(false)
		TabP1Judgment3Percent:visible(false)
		TabP1Judgment4Percent:visible(false)
		TabP1Judgment5Percent:visible(false)
		TabP1Judgment6Percent:visible(false)
		TabP1MaxCombo:visible(false)
		TabP1MaxComboNumber:visible(false)
		TabP1Best1:visible(false)
		TabP1BestFantastic:visible(false)
		TabP1BestExcellent:visible(false)
		TabP1BestGreat:visible(false)
		TabP1BestDecent:visible(false)
		TabP1BestWayOff:visible(false)
		TabP1BestMiss:visible(false)
		TabP1BestFantasticNumber:visible(false)
		TabP1BestExcellentNumber:visible(false)
		TabP1BestGreatNumber:visible(false)
		TabP1BestDecentNumber:visible(false)
		TabP1BestWayOffNumber:visible(false)
		TabP1BestMissNumber:visible(false)
		TabP1BestScore:visible(false)
		TabP1BestGrade:visible(false)
		TabP1CurrentGrade:visible(false)
		TabP1CurrentGradeValue:visible(false)
		TabP1AliveTime:visible(false)
		TabP1AliveTimeValue:visible(false)
	end
end

-- Title
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="JUDGMENTS & SCORE";
			BeginCommand=cmd(x,Right()-151;y,Top()+74;zoom,0.5;diffuse,color(LightColorForScore());shadowlength,1);
			InitCommand=function(self)
				TabP1Title1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

-- Top Section
-- Judgments Labels
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-8;y,6;visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="RIDICULOUS";
			BeginCommand=cmd(x,Right()-392;y,Top()+94;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTIC";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENT";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*2;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment3=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="GREAT";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*3;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment4=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENT";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*4;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment5=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="MISS";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*5;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment6=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

local function TapNoteScore(pn,tns)
	local StageStats = STATSMAN:GetCurStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local TapNotes = PlayerStats:GetTapNoteScores(tns)
	
	return TapNotes
end

local function TapPercentNoteScore(pn,tns)
	local StageStats = STATSMAN:GetCurStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local TapNotes = PlayerStats:GetPercentageOfTaps(tns)
	
	return TapNotes
end

-- Top Section
-- Judgment Value
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6;visible,StatsP1);
		LoadFont("Common Normal")..{
			Name="W1 Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94;horizalign,left;vertalign,top;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment1Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_1,9)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W1 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment1Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_1,9)))
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(120)
				self:queuecommand("Update")
				
				if self:GetText() == "-1.#J%" then
					self:settext("0.00%")
				end
			end;
		},
		LoadFont("Common Normal")..{
			Name="W2 Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94+24;horizalign,left;vertalign,top;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment2Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_1,8)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W2 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment2Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_1,8)))
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(120)
				self:queuecommand("Update")
				
				if self:GetText() == "-1.#J%" then
					self:settext("0.00%")
				end
			end;
		},
		LoadFont("Common Normal")..{
			Name="W3 Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94+24*2;horizalign,left;vertalign,top;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment3Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_1,7)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W3 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*2;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment3Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_1,7)))
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(120)
				self:queuecommand("Update")
				
				if self:GetText() == "-1.#J%" then
					self:settext("0.00%")
				end
			end;
		},
		LoadFont("Common Normal")..{
			Name="W4 Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94+24*3;horizalign,left;vertalign,top;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment4Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_1,6)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W4 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*3;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment4Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_1,6)))
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(120)
				self:queuecommand("Update")
				
				if self:GetText() == "-1.#J%" then
					self:settext("0.00%")
				end
			end;
		},
		LoadFont("Common Normal")..{
			Name="W5 Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94+24*4;horizalign,left;vertalign,top;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment5Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_1,5)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W5 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*4;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment5Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_1,5)))
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(120)
				self:queuecommand("Update")
				
				if self:GetText() == "-1.#J%" then
					self:settext("0.00%")
				end
			end;
		},
		LoadFont("Common Normal")..{
			Name="Miss Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94+24*5;horizalign,left;vertalign,top;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment6Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_1,4)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_1,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="Miss Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*5;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1Judgment6Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_1,4)))
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(120)
				self:queuecommand("Update")
				
				if self:GetText() == "-1.#J%" then
					self:settext("0.00%")
				end
			end;
		},
	}
end

-- Bottom Section
-- Alive Time
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-194;visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="Alive Time:";
			BeginCommand=cmd(x,Right()-242;y,Top()+86+20*9;horizalign,left;vertalign,top;;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,170);
			InitCommand=function(self)
				TabP1AliveTime=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="AliveTime";
			BeginCommand=cmd(x,Right()-146;y,Top()+86+20*9;horizalign,left;vertalign,top;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1AliveTimeValue=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				self:settext(SecondsToMSSMsMs(STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetAliveSeconds()))
				self:sleep(0.01)
				self:zoom(0.5)
				self:maxwidth(180)
				self:queuecommand("Update")
			end;
		},
	}
end

-- Bottom Section
-- Best #1 Judgments Labels
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-194;y,198;visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="RIDICULOUS:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestFantastic=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTIC:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*2;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestExcellent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENT:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*3;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestGreat=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="GREAT:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*4;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestDecent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENT:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*5;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestWayOff=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="MISS:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*6;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestMiss=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

-- Bottom Section
-- Best #1 Judgment Value
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-208;y,198;visible,StatsP1);
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17;vertalign,top;zoom,0.4;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestFantasticNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_1,1,9)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*2;vertalign,top;zoom,0.4;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestExcellentNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_1,1,8)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*3;vertalign,top;zoom,0.4;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestGreatNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_1,1,7)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*4;vertalign,top;zoom,0.4;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestDecentNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_1,1,6)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*5;vertalign,top;zoom,0.4;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestWayOffNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_1,1,5)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*6;vertalign,top;zoom,0.4;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP1BestMissNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_1,1,4)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

-- Bottom Section
-- Current Max Combo / Grade
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="Max Combo";
			BeginCommand=cmd(x,Right()-240;y,Top()+86+20*9;horizalign,left;vertalign,top;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,170);
			InitCommand=function(self)
				TabP1MaxCombo=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="Current Grade:";
			BeginCommand=cmd(x,Right()-240;y,Top()+86+20*10;horizalign,left;vertalign,top;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,170);
			InitCommand=function(self)
				TabP1CurrentGrade=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Max Combo";
			BeginCommand=cmd(x,Right()-80;y,Top()+86+20*9;horizalign,right;vertalign,top;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1MaxComboNumber=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				local StageStats = STATSMAN:GetCurStageStats()
				local PlayerStats = StageStats:GetPlayerStageStats(PLAYER_1)
				local Combo = PlayerStats:MaxCombo()
			
				self:settext( string.format("%05.0f", Combo))
				self:sleep(0.01)
				self:zoom(0.5)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForMaxCombo(PLAYER_1); Diffuse = ColorDarkTone(White()) } )
			
			end;
		},
		LoadFont("Common Normal")..{
			Name="Current Grade";
			BeginCommand=cmd(x,Right()-80;y,Top()+86+20*10;horizalign,right;vertalign,top;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1CurrentGradeValue=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				self:settext(RenamedGrade(PLAYER_1))
				self:sleep(0.01)
				self:zoom(0.5)
				self:maxwidth(180)
				self:queuecommand("Update")
			end;
		},
	}
end

-- Bottom Section
-- Best #1 Score / Grade
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="Personal Record #1 Stats";
			BeginCommand=cmd(x,Right()-287;y,Top()+86+20*10;horizalign,right;vertalign,top;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,300);
			InitCommand=function(self)
				TabP1Best1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(y,CenterY()+95;zoom,1;horizalign,left;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1BestScore=self
				self:visible(true)
				self:settext(FormatPercentScore(GetSavedScore(PLAYER_1,1)))
				
				if self:GetText() <= " 9.99%" then
					self:x(Right()-248)
				elseif self:GetText() >= "10.00%" then
					self:x(Right()-240)
				end
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-240;y,CenterY()+140;zoom,1;horizalign,left;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP1BestGrade=self
				self:visible(true)
				self:settext(GetSavedGrade(PLAYER_1,1))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

return t