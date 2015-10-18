-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- Special Features for METRO QUAD
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return a light color depending of which Theme Color is chosen.
-------------------------------------------------------------------------------------------------------------------
function LightBaseColor()
	local cColor = ThemePrefs.Get("MQBaseColor")
	local lColor = " "
	
	if cColor == cColors[1] then
		lColor = "#0b53bf"
	elseif cColor == cColors[2] then
		lColor = "#bf0b0b"
	elseif cColor == cColors[3] then
		lColor = "#0bbf0b"
	elseif cColor == cColors[4] then
		lColor = "#bfb90b"
	elseif cColor == cColors[5] then
		lColor = "#b90bbf"
	elseif cColor == cColors[6] then
		lColor = "#bf830b"
	end

	return lColor
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return a light color depending of which Theme Color is chosen.
-------------------------------------------------------------------------------------------------------------------
function LightColorForScore()
	local cColor = ThemePrefs.Get("MQBaseColor")
	local lColor = " "
	
	if cColor == cColors[1] then
		lColor = "#3385ff"
	elseif cColor == cColors[2] then
		lColor = "#ff3333"
	elseif cColor == cColors[3] then
		lColor = "#33ff33"
	elseif cColor == cColors[4] then
		lColor = "#fff833"
	elseif cColor == cColors[5] then
		lColor = "#f833ff"
	elseif cColor == cColors[6] then
		lColor = "#ffbb33"
	end
	return lColor
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: Commify Function (Thanks Kyzentun).
-------------------------------------------------------------------------------------------------------------------
function commify(n, sep)
	n= tostring(n)
	local subs= {}
	local sub_count= math.ceil(#n / 3)
	local curr_sub= sub_count
	for i= #n, 0, -3 do
		local start= math.max(1, i-2)
		subs[curr_sub]= n:sub(start, i)
		curr_sub= curr_sub - 1
	end
	return table.concat(subs, sep)
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Current Judgment.
-------------------------------------------------------------------------------------------------------------------
function LeadingToFourZeros(pn,tns)
	local StageStats = STATSMAN:GetCurStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local Judgment = PlayerStats:GetTapNoteScores(tns)
	local i
	
	if Judgment < 10 then
		i = 3
	elseif Judgment < 100 then
		i = 2
	elseif Judgment < 1000 then
		i = 1
	elseif Judgment < 1001 then
		i = 0
	end
	return i
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Current Max Combo
-------------------------------------------------------------------------------------------------------------------
function LeadingToFiveZerosForMaxCombo(pn)
	local StageStats = STATSMAN:GetCurStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local MaxCombo = PlayerStats:MaxCombo()
	local i
	
	if MaxCombo < 10 then
		i = 4
	elseif MaxCombo < 100 then
		i = 3
	elseif MaxCombo < 1000 then
		i = 2
	elseif MaxCombo < 10000 then
		i = 1
	elseif MaxCombo < 10001 then
		i = 0
	end
	return i
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the HighScore.
-------------------------------------------------------------------------------------------------------------------
function LeadingToFourZerosForSavedTNS(pn,i,tns)
	local Song
	local l = 3
	
	if GetCurrentSong() == nil then
		return l
	else
		Song = GetCurrentSong()
	end
	
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(Song,GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Score = HighScores[i]
	
	if Score == nil then
		Score = 0
	else
		Score = HighScores[i]:GetTapNoteScore(tns)
	end
	
	local l
	
	if Score < 10 then
		l = 3
	elseif Score < 100 then
		l = 2
	elseif Score < 1000 then
		l = 1
	elseif Score < 1001 then
		l = 0
	end
	return l
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Accumulated Judgments [ScreenEvaluation]..
-------------------------------------------------------------------------------------------------------------------
function LeadingToFiveZerosForAccumStats(pn,tns)
	local StageStats = STATSMAN:GetAccumPlayedStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local Judgment = PlayerStats:GetTapNoteScores(tns)
	local i
	
	if Judgment < 10 then
		i = 9
	elseif Judgment < 100 then
		i = 7
	elseif Judgment < 1000 then
		i = 5
	elseif Judgment < 10000 then
		i = 3
	elseif Judgment < 100000 then
		i = 1
	end
	return i
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Current Holds Judgment [ScreenEvaluation].
-------------------------------------------------------------------------------------------------------------------
function LeadingToSixZerosForHNS(pn,hns)
	local StageStats = STATSMAN:GetCurStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local Judgment = PlayerStats:GetHoldNoteScores(hns)
	local i
	
	if Judgment < 10 then
		i = 11
	elseif Judgment < 100 then
		i = 9
	elseif Judgment < 1000 then
		i = 7
	elseif Judgment < 10000 then
		i = 5
	elseif Judgment < 100000 then
		i = 3
	end
	return i
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Current Max Combo for [ScreenEvaluation].
-------------------------------------------------------------------------------------------------------------------
function LeadingToSixZerosForMaxCombo(pn)
	local StageStats = STATSMAN:GetCurStageStats()
	local PlayerStats = StageStats:GetPlayerStageStats(pn)
	local MaxCombo = PlayerStats:MaxCombo()
	local i
	
	if MaxCombo < 10 then
		i = 11
	elseif MaxCombo < 100 then
		i = 9
	elseif MaxCombo < 1000 then
		i = 7
	elseif MaxCombo < 10000 then
		i = 5
	elseif MaxCombo < 100000 then
		i = 3
	end
	return i
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Saved Radar Value.
-------------------------------------------------------------------------------------------------------------------
function LeadingToFourZerosForSavedRadarValue(pn,i,rc)
	local Song
	local l
	
	if GetCurrentSong() == nil then
		return 3
	else
		Song = GetCurrentSong()
	end
	
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(Song,GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Score = HighScores[i]
	
	if Score == nil then
		Score = 0
	else
		Score = HighScores[i]:GetRadarValues():GetValue(rc)
	end
	
	if Score < 10 then
		l = 3
	elseif Score < 100 then
		l = 2
	elseif Score < 1000 then
		l = 1
	elseif Score < 1001 then
		l = 0
	end	
	return l
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: It will return the (i) value depending of the digits of the Radar Value.
-------------------------------------------------------------------------------------------------------------------
function LeadingToFiveZerosForRadarValue(pn,rc)
	local RadarValue = GetCurrentSteps(pn):GetRadarValues(pn):GetValue(rc)
	local l
	
	if RadarValue < 10 then
		l = 4
	elseif RadarValue < 100 then
		l = 3
	elseif RadarValue < 1000 then
		l = 2
	elseif RadarValue < 10000 then
		l = 1
	elseif RadarValue < 10001 then
		l = 0
	end	
	return l
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return depending of Song or Course if value is Steps or Trail.
-------------------------------------------------------------------------------------------------------------------
function GetCurrentStepsOrTrail(pn)
	local value
	
	if GAMESTATE:IsCourseMode() then
		value = GAMESTATE:GetCurrentTrail(pn)
	else
		value = GetCurrentSteps(pn)
	end
	return value
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return a Saved TapNoteScore (tns) depending from Song and StepOrTrail from HighScore (i).
-------------------------------------------------------------------------------------------------------------------
function GetSavedTNS(pn,i,tns)
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(GetCurrentSong(),GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Score = HighScores[i]
	
	if Score == nil then
		Score = 0
	else
		Score = HighScores[i]:GetTapNoteScore(tns)
	end
	
	return Score
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return a Saved TapNoteScore (tns) but return nil if there's not song (fixed on settext) from HighScore (i).
-------------------------------------------------------------------------------------------------------------------
function GetFixedSavedTNS(pn,i,tns)
	local Song
	
	if GetCurrentSong() == nil then
		return nil
	else
		Song = GetCurrentSong()
	end
	
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(Song,GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Score = HighScores[i]
	
	if Score == nil then
		Score = 0
	else
		Score = HighScores[i]:GetTapNoteScore(tns)
	end
	
	return Score
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return a Saved RadarValue (RadarCategory rc) but return nil if there's not song (fixed on settext) from HighScore (i).
-------------------------------------------------------------------------------------------------------------------
function GetFixedSavedRadarValue(pn,i,rc)
	local Song
	
	if GetCurrentSong() == nil then
		return nil
	else
		Song = GetCurrentSong()
	end
	
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(Song,GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Score = HighScores[i]
	
	if Score == nil then
		Score = 0
	else
		Score = HighScores[i]:GetRadarValues():GetValue(rc)
	end
	
	return Score
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return a Saved Score of a different player (pn) and from a determinate HighScore (i).
-------------------------------------------------------------------------------------------------------------------
function GetSavedScore(pn,i)
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(GetCurrentSong(),GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Score = HighScores[i]
	
	if Score == nil then
		Score = 0
	else
		Score = HighScores[i]:GetPercentDP()
	end
	
	return Score
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return a Saved Grade of a different player (pn) and from a determinate HighScore (i).
-------------------------------------------------------------------------------------------------------------------
function GetSavedGrade(pn,i)
	local Profile = PROFILEMAN:GetProfile(pn):GetHighScoreList(GetCurrentSong(),GetCurrentStepsOrTrail(pn))
	local HighScores = Profile:GetHighScores()
	local Grade = HighScores[i]
	
	if Grade == nil then
		Grade = "N/A"
	else
		Grade = HighScores[i]:GetGrade()
	end
	
	if Grade == 'Grade_Failed' then
		Grade = "F"
	elseif Grade == 'Grade_Tier17' then
		Grade = "D"
	elseif Grade == 'Grade_Tier16' then
		Grade = "C-"
	elseif Grade == 'Grade_Tier15' then
		Grade = "C"
	elseif Grade == 'Grade_Tier14' then
		Grade = "C+"
	elseif Grade == 'Grade_Tier13' then
		Grade = "B-"
	elseif Grade == 'Grade_Tier12' then
		Grade = "B"
	elseif Grade == 'Grade_Tier11' then
		Grade = "B+"
	elseif Grade == 'Grade_Tier10' then
		Grade = "A-"
	elseif Grade == 'Grade_Tier09' then
		Grade = "A"
	elseif Grade == 'Grade_Tier08' then
		Grade = "A+"
	elseif Grade == 'Grade_Tier07' then
		Grade = "S-"
	elseif Grade == 'Grade_Tier06' then
		Grade = "S"
	elseif Grade == 'Grade_Tier05' then
		Grade = "S+"
	elseif Grade == 'Grade_Tier04' then
		Grade = "STAR"
	elseif Grade == 'Grade_Tier03' then
		Grade = "DOUBLE"
	elseif Grade == 'Grade_Tier02' then
		Grade = "TRIPLE"
	elseif Grade == 'Grade_Tier01' then
		Grade = "QUAD"
	end
	
	return Grade
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return the Current Grade as Texture (located on Graphics folder).
-------------------------------------------------------------------------------------------------------------------
function GetGrade(pn)
	local CurrentStats = STATSMAN:GetCurStageStats()
	local StageStats = CurrentStats:GetPlayerStageStats(pn);
	local GetGrade = StageStats:GetGrade()
	local Grade
	
	if GetGrade == "Grade_Tier17" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier17")
	elseif GetGrade == "Grade_Tier16" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier16")
	elseif GetGrade == "Grade_Tier15" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier15")
	elseif GetGrade == "Grade_Tier14" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier14")
	elseif GetGrade == "Grade_Tier13" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier13")
	elseif GetGrade == "Grade_Tier12" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier12")
	elseif GetGrade == "Grade_Tier11" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier11")
	elseif GetGrade == "Grade_Tier10" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier10")
	elseif GetGrade == "Grade_Tier09" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier09")
	elseif GetGrade == "Grade_Tier08" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier08")
	elseif GetGrade == "Grade_Tier07" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier07")
	elseif GetGrade == "Grade_Tier06" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier06")
	elseif GetGrade == "Grade_Tier05" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier05")
	elseif GetGrade == "Grade_Tier04" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier04")
	elseif GetGrade == "Grade_Tier03" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier03")
	elseif GetGrade == "Grade_Tier02" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier02")
	elseif GetGrade == "Grade_Tier01" then
		Grade = THEME:GetPathG("GradeDisplayEval","Tier01")
	elseif GetGrade == "Grade_Failed" then
		Grade = THEME:GetPathG("GradeDisplayEval","Failed")
	end

	return Grade
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return the current Grade renamed (as a string) for each player (pn).
-------------------------------------------------------------------------------------------------------------------
function RenamedGrade(pn)
	local CurGrade = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn):GetGrade()
	local GradeRenamed = ""

	if CurGrade == 'Grade_Failed' then
		GradeRenamed = "F"
	elseif CurGrade == 'Grade_Tier17' then
		GradeRenamed = "D"
	elseif CurGrade == 'Grade_Tier16' then
		GradeRenamed = "C-"
	elseif CurGrade == 'Grade_Tier15' then
		GradeRenamed = "C"
	elseif CurGrade == 'Grade_Tier14' then
		GradeRenamed = "C+"
	elseif CurGrade == 'Grade_Tier13' then
		GradeRenamed = "B-"
	elseif CurGrade == 'Grade_Tier12' then
		GradeRenamed = "B"
	elseif CurGrade == 'Grade_Tier11' then
		GradeRenamed = "B+"
	elseif CurGrade == 'Grade_Tier10' then
		GradeRenamed = "A-"
	elseif CurGrade == 'Grade_Tier09' then
		GradeRenamed = "A"
	elseif CurGrade == 'Grade_Tier08' then
		GradeRenamed = "A+"
	elseif CurGrade == 'Grade_Tier07' then
		GradeRenamed = "S-"
	elseif CurGrade == 'Grade_Tier06' then
		GradeRenamed = "S"
	elseif CurGrade == 'Grade_Tier05' then
		GradeRenamed = "S+"
	elseif CurGrade == 'Grade_Tier04' then
		GradeRenamed = "STAR"
	elseif CurGrade == 'Grade_Tier03' then
		GradeRenamed = "DOUBLE"
	elseif CurGrade == 'Grade_Tier02' then
		GradeRenamed = "TRIPLE"
	elseif CurGrade == 'Grade_Tier01' then
		GradeRenamed = "QUAD"
	end
	
	return GradeRenamed
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTION: This will return the next possible Grade (as a string) for each player (pn).
-------------------------------------------------------------------------------------------------------------------
function NextGrade(pn)
	local nGrade
	local sGrade = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn)
	local cGrade = sGrade:GetGrade()
	
	if cGrade == 'Grade_Tier01' then
		nGrade = "---"
	elseif cGrade == 'Grade_Tier02' then	
		nGrade = "4x STARS"
	elseif cGrade == 'Grade_Tier03' then	
		nGrade = "3x STARS"
	elseif cGrade == 'Grade_Tier04' then	
		nGrade = "2x STARS"
	elseif cGrade == 'Grade_Tier05' then	
		nGrade = "STAR"
	elseif cGrade == 'Grade_Tier06' then	
		nGrade = "S+"
	elseif cGrade == 'Grade_Tier07' then	
		nGrade = "S"
	elseif cGrade == 'Grade_Tier08' then	
		nGrade = "S-"
	elseif cGrade == 'Grade_Tier09' then	
		nGrade = "A+"
	elseif cGrade == 'Grade_Tier10' then	
		nGrade = "A"
	elseif cGrade == 'Grade_Tier11' then	
		nGrade = "A-"
	elseif cGrade == 'Grade_Tier12' then	
		nGrade = "B+"
	elseif cGrade == 'Grade_Tier13' then	
		nGrade = "B"
	elseif cGrade == 'Grade_Tier14' then	
		nGrade = "B-"
	elseif cGrade == 'Grade_Tier15' then	
		nGrade = "C+"
	elseif cGrade == 'Grade_Tier16' then	
		nGrade = "C"
	elseif cGrade == 'Grade_Tier17' then	
		nGrade = "C-"
	elseif cGrade == 'Grade_Failed' then	
		nGrade = "D"
	end
	
	return nGrade
end

-------------------------------------------------------------------------------------------------------------------
-- BANNERCOLOR: This will return a Banner depending of the Theme Color selected.
-------------------------------------------------------------------------------------------------------------------
function GetBannerColor()
	local cColor = ThemePrefs.Get("MQBaseColor")
	local nBanner
	
	if cColor == "#062b62" then
		nBanner = 1
	elseif cColor == "#620606" then
		nBanner = 2
	elseif cColor == "#066206" then
		nBanner = 3
	elseif cColor == "#625F06" then
		nBanner = 4
	elseif cColor == "#5f0662" then
		nBanner = 5 
	elseif cColor == "#624306" then
		nBanner = 6
	end
	return nBanner
end

-------------------------------------------------------------------------------------------------------------------
-- STEPSDISPLAY: This will change the X Position depending of which option is selected.
-------------------------------------------------------------------------------------------------------------------
function MeterXPosition()
	local PosX = ""
	local NumTicks = ThemePrefs.Get("SDNumTicks")
	
	if NumTicks == 25 then
		PosX = 96
	elseif NumTicks == 20 then
		PosX = 96-30
	elseif NumTicks == 15 then
		PosX = 96-30*2
	elseif NumTicks == 10 then
		PosX = 96-30*3
	elseif NumTicks == 5 then
		PosX = 96-30*4
	end
	return PosX
end

-------------------------------------------------------------------------------------------------------------------
-- SURROUNDLIFE: This will return a different boolean value for each Player.
-------------------------------------------------------------------------------------------------------------------
function LifeVisible(pn)
	local value = ""
	local option = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.LifeVisible
	
	if option == "On" then
		value = true
	else
		value = false
	end
	return value
end

-------------------------------------------------------------------------------------------------------------------
-- SURROUNDLIFE: This will return a different color vale for each Player.
-------------------------------------------------------------------------------------------------------------------
function LifeColor(pn)
	local lcolor = ""
	local option = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.LifeColor
	
	if option == "Normal" then
		lcolor = color("#FFFFFF")
	elseif option == "Blue" then
		lcolor = color("#0000FF")
	elseif option == "Red" then
		lcolor = color("#FF0000")
	elseif option == "Green" then
		lcolor = color("#00FF00")
	elseif option == "Yellow" then
		lcolor = color("#FFFF00")
	elseif option == "Purple" then
		lcolor = color("#FF00FF")
	elseif option == "Orange" then
		lcolor =  color("#FF7F00")
	end
	return lcolor
end

-------------------------------------------------------------------------------------------------------------------
-- PLAYERSTATS: This will return a different boolean value for each Player.
-------------------------------------------------------------------------------------------------------------------
function IsStatsVisible(pn)
	local IsVisible = ""
	local option = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.PlayerStats
	
	if option == "On" then
		IsVisible = true
	else
		IsVisible = false
	end
	return IsVisible
end

-------------------------------------------------------------------------------------------------------------------
-- REMAININGLIFE: This will return a different boolean value for each Player.
-------------------------------------------------------------------------------------------------------------------
function IsRemainingLifeVisible(pn)
	local IsVisible = ""
	local option = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.RemainingLife
	
	if option == "On" then
		IsVisible = true
	else
		IsVisible = false
	end
	return IsVisible
end

-------------------------------------------------------------------------------------------------------------------
-- NEGATIVESCORE: This will return a different boolean value for each Player.
-------------------------------------------------------------------------------------------------------------------
function IsNegativeScoreVisible(pn)
	local IsVisible = ""
	local option = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.NegativeScore
	
	if option == "On" then
		IsVisible = true
	else
		IsVisible = false
	end
	return IsVisible
end

-------------------------------------------------------------------------------------------------------------------
-- AUTORESTARTWITHBUTTON: This will return a different boolean value for both players.
-------------------------------------------------------------------------------------------------------------------
function IsAutoRestartEnabled()
	local IsEnabled
	local option = MetroQuad.Global.MiscOptions.AutoRestartWithButton
	
	if option == "On" then
		IsEnabled = true
	else
		IsEnabled = false
	end
	return IsEnabled
end

-------------------------------------------------------------------------------------------------------------------
-- PLAYERFIELD: This will return a determinate position depending of the current gametype or style.
-------------------------------------------------------------------------------------------------------------------
function PlayFieldPosition(pn)
	local Style = GAMESTATE:GetCurrentStyle():GetName()
	local Gametype = GAMESTATE:GetCurrentGame():GetName()
	local Pos

	if pn == PLAYER_1 then
		if Gametype == "dance" then
			if Style == "single" or "versus" or "threepanel" and not "solo" then
				Pos = math.floor(scale((0.85/3),0,1,SCREEN_LEFT,SCREEN_RIGHT))
			else
				Pos = CenterX()
			end
		end
	end
	
	if pn == PLAYER_2 then
		if Gametype == "dance" then
			if Style == "single" or "versus" or "threepanel" and not "solo" then
				Pos = math.floor(scale((2.15/3),0,1,SCREEN_LEFT,SCREEN_RIGHT))
			else
				Pos = CenterX()
			end
		end
	end
	
	return Pos
end