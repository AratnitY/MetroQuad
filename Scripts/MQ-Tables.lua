-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- Global Tables Values for METRO QUAD
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- cColors: Base Theme Colors.
-------------------------------------------------------------------------------------------------------------------
cColors = {
	"#062b62", -- Dark Blue
	"#620606", -- Dark Red
	"#066206", -- Dark Green
	"#625F06", -- Dark Yellow
	"#5f0662", -- Dark Purple
	"#624306", -- Dark Orange
}

-------------------------------------------------------------------------------------------------------------------
-- jColors: Judgments Colors.
-------------------------------------------------------------------------------------------------------------------
jColors = {
	"#CFDBDB", -- Ridiculous
	"#00FFFF", -- Fantastic
	"#FFFF00", -- Excellent
	"#00FF00", -- Great
	"#FF00FF", -- Decent
	"#FF0000", -- Miss
}

-------------------------------------------------------------------------------------------------------------------
-- gNoteScores: Tap Note Scores & Hold Notes Scores
-------------------------------------------------------------------------------------------------------------------
gNoteScores = {
	hNoteScore = {
		'HoldNoteScore_Held',
		'HoldNoteScore_LetGo',
		'HoldNoteScore_None',
		'HoldNoteScore_MissedHold',
	},
	tNoteScore = {
		'TapNoteScore_W1',
		'TapNoteScore_W2',
		'TapNoteScore_W3',
		'TapNoteScore_W4',
		'TapNoteScore_W5',
		'TapNoteScore_Miss',
		'TapNoteScore_None',
		'TapNoteScore_HitMine',
		'TapNoteScore_AvoidMine',
		'TapNoteScore_CheckpointMiss',
		'TapNoteScore_CheckpointHit',
	},
}

-------------------------------------------------------------------------------------------------------------------
-- tGrades: Grades.
-------------------------------------------------------------------------------------------------------------------
tGrades = {
	"Grade_Tier01", -- (****) Quad
	"Grade_Tier02", -- (***) Triple
	"Grade_Tier03", -- (**) Double
	"Grade_Tier04", -- (*) Single
	"Grade_Tier05", -- S+
	"Grade_Tier06", -- S
	"Grade_Tier07", -- S-
	"Grade_Tier08", -- A+
	"Grade_Tier09", -- A
	"Grade_Tier10", -- A-
	"Grade_Tier11", -- B+
	"Grade_Tier12", -- B
	"Grade_Tier13", -- B-
	"Grade_Tier14", -- C+
	"Grade_Tier15", -- C
	"Grade_Tier16", -- C-
	"Grade_Tier17", -- D
	"Grade_Failed", -- F
}

-------------------------------------------------------------------------------------------------------------------
-- RadarValues: Radar Values
-------------------------------------------------------------------------------------------------------------------
RadarValues = {
	'RadarCategory_Stream', 
	'RadarCategory_Voltage', 
	'RadarCategory_Air',
	'RadarCategory_Freeze', 
	'RadarCategory_Chaos',
	'RadarCategory_TapsAndHolds',
	'RadarCategory_Jumps',
	'RadarCategory_Holds',
	'RadarCategory_Mines',
	'RadarCategory_Hands',
	'RadarCategory_Rolls',
	'RadarCategory_Lifts',
	'RadarCategory_Fakes'
}
