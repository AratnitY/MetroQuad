local t = Def.ActorFrame {};

EXP = {
	-- EXP NEEDED FOR LEVELS 1 TO 10. (Start of 100 multiplied by 1.5x).
	100, -- LV 1
	150, -- LV 2
	225, -- LV 3
	338, -- LV 4
	506, -- LV 5
	759, -- LV 6
	1130, -- LV 7
	1700, -- LV 8
	2560, -- LV 9
	3840, -- LV 10
	-- EXP NEEDED FOR LEVELS 11 TO 20. (Start of 5.000 multiplied by 1.25x).
	5000, -- LV 11
	6250, -- LV 12
	7810, -- LV 13
	9760, -- LV 14
	12200, -- LV 15
	15250, -- LV 16
	19070, -- LV 17
	23840, -- LV 18
	29800, -- LV 19
	37250, -- LV 20
	-- EXP NEEDED FOR LEVELS 21 TO 30. (Start of 50.000 added by 10.000 per Level).
	50000, -- LV 21
	60000, -- LV 22
	70000, -- LV 23
	80000, -- LV 24
	90000, -- LV 25
	100000, -- LV 26
	110000, -- LV 27
	120000, -- LV 28
	130000, -- LV 29
	140000, -- LV 30
	-- EXP NEEDED FOR LEVELS 31 TO 40. (Start of 150.000 added by 12.500 per Level).
	150000, -- LV 31
	162500, -- LV 32
	175000, -- LV 33
	187500, -- LV 34
	200000, -- LV 35
	212500, -- LV 36
	222500, -- LV 37
	237500, -- LV 38
	250000, -- LV 39
	262500, -- LV 40
	-- EXP NEEDED FOR LEVELS 41 TO 50. (Start of 300.000 added by 20.000 per Level).
	300000, -- LV 41
	320000, -- LV 42
	340000, -- LV 43
	360000, -- LV 44
	380000, -- LV 45
	400000, -- LV 46
	420000, -- LV 47
	440000, -- LV 48
	460000, -- LV 49
	480000, -- LV 50
	-- EXP NEEDED FOR LEVELS 51 TO 60. (Start of 500.000 added by 50.000 per Level).
	500000, -- LV 51
	550000, -- LV 52
	600000, -- LV 53
	650000, -- LV 54
	700000, -- LV 55
	750000, -- LV 56
	800000, -- LV 57
	850000, -- LV 58
	900000, -- LV 59
	950000, -- LV 60
	-- EXP NEEDED FOR LEVELS 61 TO 70. (Start of 1.200.000 added by 150.000 per Level).
	1200000, -- LV 61
	1350000, -- LV 62
	1500000, -- LV 63
	1650000, -- LV 64
	1800000, -- LV 65
	1950000, -- LV 66
	2100000, -- LV 67
	2250000, -- LV 68
	2400000, -- LV 69
	2550000, -- LV 70
	-- EXP NEEDED FOR LEVELS 71 TO 80. (Start of 3.000.000 added by 300.000 per Level).
	3000000, -- LV 71
	3300000, -- LV 72
	3600000, -- LV 73
	3900000, -- LV 74
	4200000, -- LV 75
	4500000, -- LV 76
	4800000, -- LV 77
	5100000, -- LV 78
	5400000, -- LV 79
	5700000, -- LV 80
	-- EXP NEEDED FOR LEVELS 81 TO 90. (Start of 6.000.000 added by 400.000 per Level).
	6000000, -- LV 81
	6400000, -- LV 82
	6800000, -- LV 83
	7200000, -- LV 84
	7600000, -- LV 85
	8000000, -- LV 86
	8400000, -- LV 87
	8800000, -- LV 88
	9200000, -- LV 89
	9600000, -- LV 90
	-- EXP NEEDED FOR LEVELS 91 TO MAX. (Start of 15.000.000 added by 1.000.000 per Level).
	15000000, -- LV 91
	16000000, -- LV 92
	17000000, -- LV 93
	18000000, -- LV 94
	19000000, -- LV 95
	20000000, -- LV 96
	21000000, -- LV 97
	22000000, -- LV 98
	23000000, -- LV 99
	24000000, -- LV MAX	
}

local function LevelSystem(pn)
	-- Get The Profile for pn.
	local Profile = PROFILEMAN:GetProfile(pn)
	
	-- The EXP is used by the Nº of Taps, Holds, Jumps and Hands.
	local TapsAndHolds = Profile:GetTotalTapsAndHolds()
	local Jumps = Profile:GetTotalJumps()
	local Hands = Profile:GetTotalHands()
	
	-- All the values are added.
	local XP = TapsAndHolds + Jumps + Hands
	
	-- The LV that will be obtained in base to XP.
	local LV
	
	-- The Calculation is executed here to determinate the LV.
	-- Levels 0 to 9.
	if XP < EXP[1] then LV = 0 elseif XP < EXP[2] then LV = 1 elseif XP < EXP[3] then LV = 2 elseif XP < EXP[4] then LV = 3	elseif XP < EXP[5] then LV = 4
	elseif XP < EXP[6] then LV = 5 elseif XP < EXP[7] then LV = 6 elseif XP < EXP[8] then LV = 7 elseif XP < EXP[9] then LV = 8	elseif XP < EXP[10] then LV = 9
	
	-- Levels 10 to 19.
	elseif XP < EXP[11] then LV = 10 elseif XP < EXP[12] then LV = 11 elseif XP < EXP[13] then LV = 12 elseif XP < EXP[14] then LV = 13 elseif XP < EXP[15] then LV = 14
	elseif XP < EXP[16] then LV = 15 elseif XP < EXP[17] then LV = 16 elseif XP < EXP[18] then LV = 17 elseif XP < EXP[19] then LV = 18 elseif XP < EXP[20] then LV = 19
	
	-- Levels 20 to 29.
	elseif XP < EXP[21] then LV = 20 elseif XP < EXP[22] then LV = 21 elseif XP < EXP[23] then LV = 22 elseif XP < EXP[24] then LV = 23 elseif XP < EXP[25] then LV = 24
	elseif XP < EXP[26] then LV = 25 elseif XP < EXP[27] then LV = 26 elseif XP < EXP[28] then LV = 27 elseif XP < EXP[29] then LV = 28 elseif XP < EXP[30] then LV = 29
	
	-- Levels 30 to 39.
	elseif XP < EXP[31] then LV = 30 elseif XP < EXP[32] then LV = 31 elseif XP < EXP[33] then LV = 32 elseif XP < EXP[34] then LV = 33 elseif XP < EXP[35] then LV = 34
	elseif XP < EXP[36] then LV = 35 elseif XP < EXP[37] then LV = 36 elseif XP < EXP[38] then LV = 37 elseif XP < EXP[39] then LV = 38 elseif XP < EXP[40] then LV = 39
	
	-- Levels 40 to 49.
	elseif XP < EXP[41] then LV = 40 elseif XP < EXP[42] then LV = 41 elseif XP < EXP[43] then LV = 42 elseif XP < EXP[44] then LV = 43 elseif XP < EXP[45] then LV = 44
	elseif XP < EXP[46] then LV = 45 elseif XP < EXP[47] then LV = 46 elseif XP < EXP[48] then LV = 47 elseif XP < EXP[49] then LV = 48 elseif XP < EXP[50] then LV = 49
	
	-- Levels 50 to 59.
	elseif XP < EXP[51] then LV = 50 elseif XP < EXP[52] then LV = 51 elseif XP < EXP[53] then LV = 52 elseif XP < EXP[54] then LV = 53 elseif XP < EXP[55] then LV = 54
	elseif XP < EXP[56] then LV = 55 elseif XP < EXP[57] then LV = 56 elseif XP < EXP[58] then LV = 57 elseif XP < EXP[59] then LV = 58 elseif XP < EXP[60] then LV = 59
	
	-- Levels 60 to 69.
	elseif XP < EXP[61] then LV = 60 elseif XP < EXP[62] then LV = 61 elseif XP < EXP[63] then LV = 62 elseif XP < EXP[64] then LV = 63 elseif XP < EXP[65] then LV = 64
	elseif XP < EXP[66] then LV = 65 elseif XP < EXP[67] then LV = 66 elseif XP < EXP[68] then LV = 67 elseif XP < EXP[69] then LV = 68 elseif XP < EXP[70] then LV = 69

	-- Levels 70 to 79.
	elseif XP < EXP[71] then LV = 70 elseif XP < EXP[72] then LV = 71 elseif XP < EXP[73] then LV = 72 elseif XP < EXP[74] then LV = 73 elseif XP < EXP[75] then LV = 74
	elseif XP < EXP[76] then LV = 75 elseif XP < EXP[77] then LV = 76 elseif XP < EXP[78] then LV = 77 elseif XP < EXP[79] then LV = 78 elseif XP < EXP[80] then LV = 79
	
	-- Levels 80 to 89.
	elseif XP < EXP[81] then LV = 80 elseif XP < EXP[82] then LV = 81 elseif XP < EXP[83] then LV = 82 elseif XP < EXP[84] then LV = 83 elseif XP < EXP[85] then LV = 84
	elseif XP < EXP[86] then LV = 85 elseif XP < EXP[87] then LV = 86 elseif XP < EXP[88] then LV = 87 elseif XP < EXP[89] then LV = 88 elseif XP < EXP[90] then LV = 89
	
	-- Levels 90 to 99.
	elseif XP < EXP[91] then LV = 90 elseif XP < EXP[92] then LV = 91 elseif XP < EXP[93] then LV = 92 elseif XP < EXP[94] then LV = 93 elseif XP < EXP[95] then LV = 94
	elseif XP < EXP[96] then LV = 95 elseif XP < EXP[97] then LV = 96 elseif XP < EXP[98] then LV = 97 elseif XP < EXP[99] then LV = 98 elseif XP < EXP[100] then LV = 99
	
	-- Level MAX.
	elseif XP <= EXP[100] then LV = "MAX" end
	
	return LV
end

local function GetNextEXP(pn)
	-- Get The Profile for pn.
	local Profile = PROFILEMAN:GetProfile(pn)
	
	-- The EXP is used by the Nº of Taps, Holds, Jumps and Hands.
	local TapsAndHolds = Profile:GetTotalTapsAndHolds()
	local Jumps = Profile:GetTotalJumps()
	local Hands = Profile:GetTotalHands()
	
	-- All the values are added.
	local XP = TapsAndHolds + Jumps + Hands
	local NextEXP
	
	-- The Calculation is executed here to determinate the LV.
	-- Next EXP (1 to 10)
	if XP < EXP[1] then NextEXP = EXP[1] elseif XP < EXP[2] then NextEXP = EXP[2] elseif XP < EXP[3] then NextEXP = EXP[3] elseif XP < EXP[4] then NextEXP = EXP[4] elseif XP < EXP[5] then NextEXP = EXP[5]
	elseif XP < EXP[6] then NextEXP = EXP[6] elseif XP < EXP[7] then NextEXP = EXP[7] elseif XP < EXP[8] then NextEXP = EXP[8] elseif XP < EXP[9] then NextEXP = EXP[9] elseif XP < EXP[10] then NextEXP = EXP[10]
	
	-- Next EXP (11 to 20)
	elseif XP < EXP[11] then NextEXP = EXP[11] elseif XP < EXP[12] then NextEXP = EXP[12] elseif XP < EXP[13] then NextEXP = EXP[13] elseif XP < EXP[14] then NextEXP = EXP[14] elseif XP < EXP[15] then NextEXP = EXP[15]
	elseif XP < EXP[16] then NextEXP = EXP[16] elseif XP < EXP[17] then NextEXP = EXP[17] elseif XP < EXP[18] then NextEXP = EXP[18] elseif XP < EXP[19] then NextEXP = EXP[19] elseif XP < EXP[20] then NextEXP = EXP[20]
	
	-- Next EXP (21 to 30)
	elseif XP < EXP[21] then NextEXP = EXP[21] elseif XP < EXP[22] then NextEXP = EXP[22] elseif XP < EXP[23] then NextEXP = EXP[23] elseif XP < EXP[24] then NextEXP = EXP[24] elseif XP < EXP[25] then NextEXP = EXP[25]
	elseif XP < EXP[26] then NextEXP = EXP[26] elseif XP < EXP[27] then NextEXP = EXP[27] elseif XP < EXP[28] then NextEXP = EXP[28] elseif XP < EXP[29] then NextEXP = EXP[29] elseif XP < EXP[30] then NextEXP = EXP[30]
	
	-- Next EXP (31 to 40)
	elseif XP < EXP[31] then NextEXP = EXP[31] elseif XP < EXP[32] then NextEXP = EXP[32] elseif XP < EXP[33] then NextEXP = EXP[33] elseif XP < EXP[34] then NextEXP = EXP[34] elseif XP < EXP[35] then NextEXP = EXP[35]
	elseif XP < EXP[36] then NextEXP = EXP[36] elseif XP < EXP[37] then NextEXP = EXP[37] elseif XP < EXP[38] then NextEXP = EXP[38] elseif XP < EXP[39] then NextEXP = EXP[39] elseif XP < EXP[40] then NextEXP = EXP[40]
	
	-- Next EXP (41 to 50)
	elseif XP < EXP[41] then NextEXP = EXP[41] elseif XP < EXP[42] then NextEXP = EXP[42] elseif XP < EXP[43] then NextEXP = EXP[43] elseif XP < EXP[44] then NextEXP = EXP[44] elseif XP < EXP[45] then NextEXP = EXP[45]
	elseif XP < EXP[46] then NextEXP = EXP[46] elseif XP < EXP[47] then NextEXP = EXP[47] elseif XP < EXP[48] then NextEXP = EXP[48] elseif XP < EXP[49] then NextEXP = EXP[49] elseif XP < EXP[50] then NextEXP = EXP[50]
	
	-- Next EXP (51 to 60)
	elseif XP < EXP[51] then NextEXP = EXP[51] elseif XP < EXP[52] then NextEXP = EXP[52] elseif XP < EXP[53] then NextEXP = EXP[53] elseif XP < EXP[54] then NextEXP = EXP[54] elseif XP < EXP[55] then NextEXP = EXP[55]
	elseif XP < EXP[56] then NextEXP = EXP[56] elseif XP < EXP[57] then NextEXP = EXP[57] elseif XP < EXP[58] then NextEXP = EXP[58] elseif XP < EXP[59] then NextEXP = EXP[59] elseif XP < EXP[60] then NextEXP = EXP[60]
	
	-- Next EXP (61 to 70)
	elseif XP < EXP[61] then NextEXP = EXP[61] elseif XP < EXP[62] then NextEXP = EXP[62] elseif XP < EXP[63] then NextEXP = EXP[63] elseif XP < EXP[64] then NextEXP = EXP[64] elseif XP < EXP[65] then NextEXP = EXP[65]
	elseif XP < EXP[66] then NextEXP = EXP[66] elseif XP < EXP[67] then NextEXP = EXP[67] elseif XP < EXP[68] then NextEXP = EXP[68] elseif XP < EXP[69] then NextEXP = EXP[69] elseif XP < EXP[70] then NextEXP = EXP[70]
	
	-- Next EXP (71 to 80)
	elseif XP < EXP[71] then NextEXP = EXP[71] elseif XP < EXP[72] then NextEXP = EXP[72] elseif XP < EXP[73] then NextEXP = EXP[73] elseif XP < EXP[74] then NextEXP = EXP[74] elseif XP < EXP[75] then NextEXP = EXP[75]
	elseif XP < EXP[76] then NextEXP = EXP[76] elseif XP < EXP[77] then NextEXP = EXP[77] elseif XP < EXP[78] then NextEXP = EXP[78] elseif XP < EXP[79] then NextEXP = EXP[79] elseif XP < EXP[80] then NextEXP = EXP[80]
	
	-- Next EXP (81 to 90)
	elseif XP < EXP[81] then NextEXP = EXP[81] elseif XP < EXP[82] then NextEXP = EXP[82] elseif XP < EXP[83] then NextEXP = EXP[83] elseif XP < EXP[84] then NextEXP = EXP[84] elseif XP < EXP[85] then NextEXP = EXP[85]
	elseif XP < EXP[86] then NextEXP = EXP[86] elseif XP < EXP[87] then NextEXP = EXP[87] elseif XP < EXP[88] then NextEXP = EXP[88] elseif XP < EXP[89] then NextEXP = EXP[89] elseif XP < EXP[90] then NextEXP = EXP[90]
	
	-- Next EXP (91 to MAX)
	elseif XP < EXP[91] then NextEXP = EXP[91] elseif XP < EXP[92] then NextEXP = EXP[92] elseif XP < EXP[93] then NextEXP = EXP[93] elseif XP < EXP[94] then NextEXP = EXP[94] elseif XP < EXP[95] then NextEXP = EXP[95]
	elseif XP < EXP[96] then NextEXP = EXP[96] elseif XP < EXP[97] then NextEXP = EXP[97] elseif XP < EXP[98] then NextEXP = EXP[98] elseif XP < EXP[99] then NextEXP = EXP[99] elseif XP < EXP[100] then NextEXP = EXP[100] else NextEXP = EXP[100] end
	
	return NextEXP
end

local function EXPObtained(pn)
	local Profile = PROFILEMAN:GetProfile(pn)
	
	local TapsAndHolds = Profile:GetTotalTapsAndHolds()
	local Jumps = Profile:GetTotalJumps()
	local Hands = Profile:GetTotalHands()
	
	local XP = TapsAndHolds + Jumps + Hands
	return XP
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Text="Level P1 Details";
			InitCommand=cmd(xy,CenterX()-188,CenterY()+6;zoom,0.4;diffuse,GameColor.PlayerColors.PLAYER_1);
		};
		LoadFont("Common Normal")..{
			Text="LEVEL";
			InitCommand=cmd(xy,CenterX()-188,CenterY()+22;zoom,0.4);
		};
		LoadFont("Common Normal")..{
			Name="P1 Level";
			Text=LevelSystem(PLAYER_1);
			InitCommand=cmd(xy,CenterX()-188,CenterY()+40;zoom,0.8);
		};
		LoadFont("Common Normal")..{
			Text="Current EXP:";
			InitCommand=cmd(xy,CenterX()-234,CenterY()+32+28;zoom,0.3;halign,0;diffuse,ColorDarkTone(White()));
		};
		LoadFont("Common Normal")..{
			Name="P1 EXP Obtained";
			Text=commify(EXPObtained(PLAYER_1), ",") .. " EXP";
			InitCommand=cmd(xy,CenterX()-234,CenterY()+32+20*2;zoom,0.5;halign,0;maxwidth,184);
		};
		LoadFont("Common Normal")..{
			Text="EXP to next Level:";
			InitCommand=cmd(xy,CenterX()-234,CenterY()+32+28*2;zoom,0.3;halign,0;diffuse,ColorDarkTone(White()));
		};
		LoadFont("Common Normal")..{
			Name="P1 EXP Obtained";
			Text=commify(GetNextEXP(PLAYER_1), ",") .. " EXP";
			InitCommand=cmd(xy,CenterX()-234,CenterY()+32+68;zoom,0.5;halign,0;maxwidth,184);
		};
	};
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Text="Level P2 Details";
			InitCommand=cmd(xy,Right()-60,CenterY()+6;zoom,0.4;diffuse,GameColor.PlayerColors.PLAYER_2);
		};
		LoadFont("Common Normal")..{
			Text="LEVEL";
			InitCommand=cmd(xy,Right()-60,CenterY()+22;zoom,0.4);
		};
		LoadFont("Common Normal")..{
			Name="P2 Level";
			Text=LevelSystem(PLAYER_2);
			InitCommand=cmd(xy,Right()-60,CenterY()+40;zoom,0.8);
		};
		LoadFont("Common Normal")..{
			Text="Current EXP:";
			InitCommand=cmd(xy,Right()-104,CenterY()+32+28;zoom,0.3;halign,0;diffuse,ColorDarkTone(White()));
		};
		LoadFont("Common Normal")..{
			Name="P2 EXP Obtained";
			Text=commify(EXPObtained(PLAYER_2), ",") .. " EXP";
			InitCommand=cmd(xy,Right()-104,CenterY()+32+20*2;zoom,0.5;halign,0;maxwidth,184);
		};
		LoadFont("Common Normal")..{
			Text="EXP to next Level:";
			InitCommand=cmd(xy,Right()-104,CenterY()+32+28*2;zoom,0.3;halign,0;diffuse,ColorDarkTone(White()));
		};
		LoadFont("Common Normal")..{
			Name="P2 EXP Obtained";
			Text=commify(GetNextEXP(PLAYER_2), ",") .. " EXP";
			InitCommand=cmd(xy,Right()-104,CenterY()+32+68;zoom,0.5;halign,0;maxwidth,184);
		};
	};
end

return t