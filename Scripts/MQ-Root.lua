-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- Root LUA Library for METRO QUAD
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- THEMEPREFS SCRIPT
-------------------------------------------------------------------------------------------------------------------
local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	-- MQ OPTIONSROW.
	MQBaseColor =
	{
		Default = "#062b62",
		Choices = { "Normal", "Red", "Green", "Yellow", "Purple", "Orange" },
		Values = { "#062b62", "#620606", "#066206", "#625F06", "#5f0662", "#624306" }
	},
	MQThemeInterface =
	{
		Default = "Normal",
		Choices = { "Metro Quad", "6-Panels" },
		Values = { "Normal", "6-Panels" }
	},
	OptionsDisable =
	{
		Default = false,
		Choices = { "On", "Off" },
		Values = { true, false }
	},
	ShowStageInformation =
	{
		Default = true,
		Choices = { "Show", "Hide" },
		Values = { true, false }
	},
	-- ROOT OPTIONSROW BELOW
	ShowCombo =
	{
		Default = true,
		Choices = { "On", "Off" },
		Values = { true, false }
	},
	MWNumItems =
	{
		Default = 13,
		Choices = { "13", "11", "9", "7", "5", "3" },
		Values = { 13, 11, 9, 7, 5, 3 }
	},
	ShowRoulette =
	{
		Default = true,
		Choices = { "On", "Off" },
		Values = { true, false }
	},
	ShowRandom =
	{
		Default = true,
		Choices = { "On", "Off" },
		Values = { true, false }
	},
	SDNumItems =
	{
		Default = 5,
		Choices = { "5", "4", "3", "2", "1" },
		Values = { 5, 4, 3, 2, 1 }
	},
	SDNumTicks =
	{
		Default = 25,
		Choices = { "25", "20", "15", "10", "5" },
		Values = { 25, 20, 15, 10, 5 }
	},
	SDShowTicks =
	{
		Default = true,
		Choices = { "On", "Off" },
		Values = { true, false }
	},
	SDShowMeter =
	{
		Default = true,
		Choices = { "On", "Off" },
		Values = { true, false }
	},
}

------------------------------------------------------------------------------------------

ThemePrefs.InitAll(Prefs)

------------------------------------------------------------------------------------------

function InitUserPrefs()
	local Prefs = {
		UserPrefScoringMode = 'MIGS',
        UserPrefSoundPack   = 'default',
		UserPrefProtimingP1 = false,
		UserPrefProtimingP2 = false,
	}
	for k, v in pairs(Prefs) do
		-- kind of xxx
		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
		if GetPref(k) == nil then
			SetUserPref(k, v)
		end
	end

	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

function GetProTiming(pn)
	local pname = ToEnumShortString(pn)
	if GetUserPref("ProTiming"..pname) then
		return GetUserPrefB("ProTiming"..pname)
	else
		SetUserPref("ProTiming"..pname,false)
		return false
	end
end