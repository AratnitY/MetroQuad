local t = Def.ActorFrame{};
local StatsP2 = GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsStatsVisible(PLAYER_2) and GAMESTATE:GetNumPlayersEnabled() == 1 and not GAMESTATE:IsDemonstration()

local TabP2Title1
local TabP2Judgment1, TabP2Judgment2, TabP2Judgment3, TabP2Judgment4, TabP2Judgment5, TabP2Judgment6, TabP2MaxCombo, TabP2CurrentGrade, TabP2AliveTime
local TabP2Judgment1Number, TabP2Judgment2Number, TabP2Judgment3Number, TabP2Judgment4Number, TabP2Judgment5Number, TabP2Judgment6Number, TabP2MaxComboNumber, TabP2CurrentGradeValue, TabP2AliveTimeValue
local TabP2Judgment1Percent, TabP2Judgment2Percent, TabP2Judgment3Percent, TabP2Judgment4Percent, TabP2Judgment5Percent, TabP2Judgment6Percent
local TabP2Best1, TabP2BestFantastic, TabP2BestExcellent, TabP2BestGreat, TabP2BestDecent, TabP2BestWayOff, TabP2BestMiss
local TabP2BestFantasticNumber, TabP2BestExcellentNumber, TabP2BestGreatNumber, TabP2BestDecentNumber, TabP2BestWayOffNumber, TabP2BestMissNumber, TabP2BestScore, TabP2BestGrade

local function TabP2Page1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		TabP2Title1:visible(true)
		TabP2Judgment1:visible(true)
		TabP2Judgment2:visible(true)
		TabP2Judgment3:visible(true)
		TabP2Judgment4:visible(true)
		TabP2Judgment5:visible(true)
		TabP2Judgment6:visible(true)
		TabP2Judgment1Number:visible(true)
		TabP2Judgment2Number:visible(true)
		TabP2Judgment3Number:visible(true)
		TabP2Judgment4Number:visible(true)
		TabP2Judgment5Number:visible(true)
		TabP2Judgment6Number:visible(true)
		TabP2Judgment1Percent:visible(true)
		TabP2Judgment2Percent:visible(true)
		TabP2Judgment3Percent:visible(true)
		TabP2Judgment4Percent:visible(true)
		TabP2Judgment5Percent:visible(true)
		TabP2Judgment6Percent:visible(true)
		TabP2MaxCombo:visible(true)
		TabP2MaxComboNumber:visible(true)
		TabP2Best1:visible(true)
		TabP2BestFantastic:visible(true)
		TabP2BestExcellent:visible(true)
		TabP2BestGreat:visible(true)
		TabP2BestDecent:visible(true)
		TabP2BestWayOff:visible(true)
		TabP2BestMiss:visible(true)
		TabP2BestFantasticNumber:visible(true)
		TabP2BestExcellentNumber:visible(true)
		TabP2BestGreatNumber:visible(true)
		TabP2BestDecentNumber:visible(true)
		TabP2BestWayOffNumber:visible(true)
		TabP2BestMissNumber:visible(true)
		TabP2BestScore:visible(true)
		TabP2BestGrade:visible(true)
		TabP2CurrentGrade:visible(true)
		TabP2CurrentGradeValue:visible(true)
		TabP2AliveTime:visible(true)
		TabP2AliveTimeValue:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		TabP2Title1:visible(false)
		TabP2Judgment1:visible(false)
		TabP2Judgment2:visible(false)
		TabP2Judgment3:visible(false)
		TabP2Judgment4:visible(false)
		TabP2Judgment5:visible(false)
		TabP2Judgment6:visible(false)
		TabP2Judgment1Number:visible(false)
		TabP2Judgment2Number:visible(false)
		TabP2Judgment3Number:visible(false)
		TabP2Judgment4Number:visible(false)
		TabP2Judgment5Number:visible(false)
		TabP2Judgment6Number:visible(false)
		TabP2Judgment1Percent:visible(false)
		TabP2Judgment2Percent:visible(false)
		TabP2Judgment3Percent:visible(false)
		TabP2Judgment4Percent:visible(false)
		TabP2Judgment5Percent:visible(false)
		TabP2Judgment6Percent:visible(false)
		TabP2MaxCombo:visible(false)
		TabP2MaxComboNumber:visible(false)
		TabP2Best1:visible(false)
		TabP2BestFantastic:visible(false)
		TabP2BestExcellent:visible(false)
		TabP2BestGreat:visible(false)
		TabP2BestDecent:visible(false)
		TabP2BestWayOff:visible(false)
		TabP2BestMiss:visible(false)
		TabP2BestFantasticNumber:visible(false)
		TabP2BestExcellentNumber:visible(false)
		TabP2BestGreatNumber:visible(false)
		TabP2BestDecentNumber:visible(false)
		TabP2BestWayOffNumber:visible(false)
		TabP2BestMissNumber:visible(false)
		TabP2BestScore:visible(false)
		TabP2BestGrade:visible(false)
		TabP2CurrentGrade:visible(false)
		TabP2CurrentGradeValue:visible(false)
		TabP2AliveTime:visible(false)
		TabP2AliveTimeValue:visible(false)
	end
end

-- Title
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="JUDGMENTS & SCORE";
			BeginCommand=cmd(x,Right()-151;y,Top()+74;zoom,0.5;diffuse,color(LightColorForScore());shadowlength,1);
			InitCommand=function(self)
				TabP2Title1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
	}
end

-- Top Section
-- Judgments Labels
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-8;y,6;visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="RIDICULOUS";
			BeginCommand=cmd(x,Right()-392;y,Top()+94;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTIC";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENT";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*2;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment3=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="GREAT";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*3;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment4=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENT";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*4;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment5=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="MISS";
			BeginCommand=cmd(x,Right()-392;y,Top()+94+24*5;horizalign,left;vertalign,top;zoom,0.7;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment6=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
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
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6;visible,StatsP2);
		LoadFont("Common Normal")..{
			Name="W1 Score";
			BeginCommand=cmd(x,Right()-240;y,Top()+94;horizalign,left;vertalign,top;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment1Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_2,9)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W1 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment1Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_2,9)))
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
				TabP2Judgment2Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_2,8)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W2 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment2Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_2,8)))
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
				TabP2Judgment3Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_2,7)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W3 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*2;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment3Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_2,7)))
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
				TabP2Judgment4Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_2,6)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W4 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*3;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment4Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_2,6)))
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
				TabP2Judgment5Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_2,5)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="W5 Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*4;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment5Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_2,5)))
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
				TabP2Judgment6Number=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)

				self:settext( string.format("%04.0f", TapNoteScore(PLAYER_2,4)) )
				self:sleep(0.01)
				self:zoom(0.7)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFourZeros(PLAYER_2,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end;
		},
		LoadFont("Common Normal")..{
			Name="Miss Percent";
			BeginCommand=cmd(x,Right()-74;y,Top()+94+24*5;vertalign,top;horizalign,right;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2Judgment6Percent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				
				self:settext(FormatPercentScore(TapPercentNoteScore(PLAYER_2,4)))
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
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-194;visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="Alive Time:";
			BeginCommand=cmd(x,Right()-242;y,Top()+86+20*9;horizalign,left;vertalign,top;;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,170);
			InitCommand=function(self)
				TabP2AliveTime=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="AliveTime";
			BeginCommand=cmd(x,Right()-146;y,Top()+86+20*9;horizalign,left;vertalign,top;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2AliveTimeValue=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				self:settext(SecondsToMSSMsMs(STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetAliveSeconds()))
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
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-194;y,198;visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="RIDICULOUS:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestFantastic=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTIC:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*2;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestExcellent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENT:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*3;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestGreat=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="GREAT:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*4;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestDecent=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENT:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*5;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestWayOff=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="MISS:";
			BeginCommand=cmd(x,Right()-242;y,Top()+95+17*6;horizalign,left;vertalign,top;zoom,0.4;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestMiss=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
	}
end

-- Bottom Section
-- Best #1 Judgment Value
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-208;y,198;visible,StatsP2);
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17;vertalign,top;zoom,0.4;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestFantasticNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_2,1,9)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_2,1,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*2;vertalign,top;zoom,0.4;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestExcellentNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_2,1,8)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_2,1,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*3;vertalign,top;zoom,0.4;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestGreatNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_2,1,7)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_2,1,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*4;vertalign,top;zoom,0.4;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestDecentNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_2,1,6)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_2,1,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*5;vertalign,top;zoom,0.4;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestWayOffNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_2,1,5)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_2,1,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-133+40;y,Top()+95+17*6;vertalign,top;zoom,0.4;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				TabP2BestMissNumber=self
				self:visible(true)
				self:settext( string.format("%04.0f", GetSavedTNS(PLAYER_2,1,4)))
				self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_2,1,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
	}
end

-- Bottom Section
-- Current Max Combo / Grade
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="Max Combo";
			BeginCommand=cmd(x,Right()-240;y,Top()+86+20*9;horizalign,left;vertalign,top;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,170);
			InitCommand=function(self)
				TabP2MaxCombo=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text="Current Grade:";
			BeginCommand=cmd(x,Right()-240;y,Top()+86+20*10;horizalign,left;vertalign,top;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,170);
			InitCommand=function(self)
				TabP2CurrentGrade=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Max Combo";
			BeginCommand=cmd(x,Right()-80;y,Top()+86+20*9;horizalign,right;vertalign,top;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2MaxComboNumber=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				local StageStats = STATSMAN:GetCurStageStats()
				local PlayerStats = StageStats:GetPlayerStageStats(PLAYER_2)
				local Combo = PlayerStats:MaxCombo()
			
				self:settext( string.format("%05.0f", Combo))
				self:sleep(0.01)
				self:zoom(0.5)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForMaxCombo(PLAYER_2); Diffuse = ColorDarkTone(White()) } )
			
			end;
		},
		LoadFont("Common Normal")..{
			Name="Current Grade";
			BeginCommand=cmd(x,Right()-80;y,Top()+86+20*10;horizalign,right;vertalign,top;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2CurrentGradeValue=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end,
			UpdateCommand=function(self)
				self:settext(RenamedGrade(PLAYER_2))
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
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="Personal Record #1 Stats";
			BeginCommand=cmd(x,Right()-287;y,Top()+86+20*10;horizalign,right;vertalign,top;zoom,0.5;diffuse,color("#FFFFFF");shadowlength,1;maxwidth,300);
			InitCommand=function(self)
				TabP2Best1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(y,CenterY()+95;zoom,1;horizalign,left;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2BestScore=self
				self:visible(true)
				self:settext(FormatPercentScore(GetSavedScore(PLAYER_2,1)))
				
				if self:GetText() <= " 9.99%" then
					self:x(Right()-248)
				elseif self:GetText() >= "10.00%" then
					self:x(Right()-240)
				end
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
		LoadFont("Common Normal")..{
			Text=" ";
			BeginCommand=cmd(x,Right()-240;y,CenterY()+140;zoom,1;horizalign,left;diffuse,color("#FFFFFF");shadowlength,1);
			InitCommand=function(self)
				TabP2BestGrade=self
				self:visible(true)
				self:settext(GetSavedGrade(PLAYER_2,1))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP2Page1) end,
		},
	}
end

return t