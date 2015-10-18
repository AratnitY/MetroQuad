-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- OptionsRow Library for METRO QUAD
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- ScreenFilter OptionRow.
-------------------------------------------------------------------------------------------------------------------
function OptionRowScreenFilter()
	local t = {
		Name="ScreenFilter",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { THEME:GetString('OptionNames','Off'), '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1.0', },
		LoadSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local filterValue = getenv("ScreenFilter"..pName)
			if filterValue ~= nil then
				local val = scale(tonumber(filterValue),0,1,1,#list )
				list[val] = true
			else
				setenv("ScreenFilter"..pName,0)
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = scale(i,1,#list,0,1)
						setenv("ScreenFilter"..pName,val)
						found = true
					end
				end
			end
		end,
	};
	setmetatable(t, t)
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- From Simply Love Port Theme (Thanks dbk2)
-- OptionRow: First ScreenPlayerOptions
-------------------------------------------------------------------------------------------------------------------
function ForwardOrBackward()
	local t = {
		Name = "Forward",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { '<- Select Music', 'Modifiers Page #2', 'Modifiers Page #3', 'Gameplay ->' },
		LoadSelections = function(self, list, pn)
			list[4] = true
		end,
		SaveSelections = function(self, list, pn)
			if list[1] then MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenSelectMusic" end
			if list[2] then MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenPlayerOptions2" end
			if list[3] then MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenPlayerOptions3" end
			if list[4] and ThemePrefs.Get("ShowStageInformation") == true then 
				MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenStageInformation"
			elseif list[4] and ThemePrefs.Get("ShowStageInformation") == false then
				MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenGameplay"
			end
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- From Simply Love Port Theme (Thanks dbk2)
-- OptionRow: Second ScreenPlayerOptions
-------------------------------------------------------------------------------------------------------------------
function ForwardOrBackward2()
	local t = {
		Name = "Forward2",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { '<- Select Music', 'Modifiers Page #1', 'Modifiers Page #3', 'Gameplay ->' },
		LoadSelections = function(self, list, pn)
			list[4] = true
		end,
		SaveSelections = function(self, list, pn)
			if list[1] then MetroQuad.Global.ScreenAfter.PlayerOptions2 = "ScreenSelectMusic" end
			if list[2] then MetroQuad.Global.ScreenAfter.PlayerOptions2 = "ScreenPlayerOptions" end
			if list[3] then MetroQuad.Global.ScreenAfter.PlayerOptions2 = "ScreenPlayerOptions3" end
			if list[4] and ThemePrefs.Get("ShowStageInformation") == true then 
				MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenStageInformation"
			elseif list[4] and ThemePrefs.Get("ShowStageInformation") == false then
				MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenGameplay"
			end
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- From Simply Love Port Theme (Thanks dbk2)
-- OptionRow: Third ScreenPlayerOptions
-------------------------------------------------------------------------------------------------------------------
function ForwardOrBackward3()
	local t = {
		Name = "Forward3",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { '<- Select Music', 'Modifiers Page #1', 'Modifiers Page #2', 'Gameplay ->' },
		LoadSelections = function(self, list, pn)
			list[4] = true
		end,
		SaveSelections = function(self, list, pn)
			if list[1] then MetroQuad.Global.ScreenAfter.PlayerOptions3 = "ScreenSelectMusic" end
			if list[2] then MetroQuad.Global.ScreenAfter.PlayerOptions3 = "ScreenPlayerOptions" end
			if list[3] then MetroQuad.Global.ScreenAfter.PlayerOptions3 = "ScreenPlayerOptions2" end
			if list[4] and ThemePrefs.Get("ShowStageInformation") == true then 
				MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenStageInformation"
			elseif list[4] and ThemePrefs.Get("ShowStageInformation") == false then
				MetroQuad.Global.ScreenAfter.PlayerOptions = "ScreenGameplay"
			end
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- OptionRow: ScreenJukeboxMenu
-------------------------------------------------------------------------------------------------------------------
function JukeboxCancelOrPlay()
	local t = {
		Name = "JukeboxCancelOrPlay",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { '<- Exit', 'Continue ->' },
		LoadSelections = function(self, list, pn)
			list[2] = true
		end,
		SaveSelections = function(self, list, pn)
			if list[1] then MetroQuad.Global.ScreenAfter.JukeboxMenu = "ScreenTitleMenu" end
			if list[2] then MetroQuad.Global.ScreenAfter.JukeboxMenu = "ScreenJukebox" end
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Visible Surround Life OptionRow
-------------------------------------------------------------------------------------------------------------------
function SurroundLifeVisible()
	local visible = { 'On','Off' }
	local t = {
		Name = "LifeVisible",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = visible,
		LoadSelections = function(self, list, pn)
			local userLifeVisible = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.LifeVisible
			local i = FindInTable(userLifeVisible, visible) or 1
			list[i] = true
		end,
		SaveSelections = function(self, list, pn)
			local sSave

			for i=1,#visible do
				if list[i] then
					sSave = visible[i]	
				end
			end

			MetroQuad[ToEnumShortString(pn)].ActiveModifiers.LifeVisible = sSave
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Colored Surround Life OptionRow.
-------------------------------------------------------------------------------------------------------------------
function SurroundLifeColor()
	local colors = { 'Normal', 'Blue', 'Red', 'Green', 'Yellow', 'Purple', 'Orange' }
	local t = {
		Name = "LifeColor",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = colors,
		LoadSelections = function(self, list, pn)
			local userLifeColor = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.LifeColor
			local i = FindInTable(userLifeColor, colors) or 1
			list[i] = true
		end,
		SaveSelections = function(self, list, pn)
			local sSave

			for i=1,#colors do
				if list[i] then
					sSave = colors[i]	
				end
			end

			MetroQuad[ToEnumShortString(pn)].ActiveModifiers.LifeColor = sSave
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Visible Player Stats.
-------------------------------------------------------------------------------------------------------------------
function VisiblePlayerStats()
	local visible = { 'On','Off' }
	local t = {
		Name = "PlayerStats",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = visible,
		LoadSelections = function(self, list, pn)
			local userPlayerStats = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.PlayerStats
			local i = FindInTable(userPlayerStats, visible) or 1
			list[i] = true
		end,
		SaveSelections = function(self, list, pn)
			local sSave

			for i=1,#visible do
				if list[i] then
					sSave = visible[i]	
				end
			end

			MetroQuad[ToEnumShortString(pn)].ActiveModifiers.PlayerStats = sSave
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Visible Remaining Life.
-------------------------------------------------------------------------------------------------------------------
function VisibleRemainingLife()
	local visible = { 'On','Off' }
	local t = {
		Name = "RemainingLife",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = visible,
		LoadSelections = function(self, list, pn)
			local userRemainingLife = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.RemainingLife
			local i = FindInTable(userRemainingLife, visible) or 1
			list[i] = true
		end,
		SaveSelections = function(self, list, pn)
			local sSave

			for i=1,#visible do
				if list[i] then
					sSave = visible[i]	
				end
			end

			MetroQuad[ToEnumShortString(pn)].ActiveModifiers.RemainingLife = sSave
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Visible Negative Percent Score.
-------------------------------------------------------------------------------------------------------------------
function VisibleNegativePercentScore()
	local visible = { 'On','Off' }
	local t = {
		Name = "NegativeScore",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = visible,
		LoadSelections = function(self, list, pn)
			local userNegativeScore = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.NegativeScore
			local i = FindInTable(userNegativeScore, visible) or 1
			list[i] = true
		end,
		SaveSelections = function(self, list, pn)
			local sSave

			for i=1,#visible do
				if list[i] then
					sSave = visible[i]	
				end
			end

			MetroQuad[ToEnumShortString(pn)].ActiveModifiers.NegativeScore = sSave
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Vocalize OptionRow from Simply Love.
-------------------------------------------------------------------------------------------------------------------
function OptionRowVocalize()
	
	-- Allow users to artbitrarily add new vocalizations to ./Simply Love/Vocalize/
	-- and have those vocalizations be automatically detected
	local files = FILEMAN:GetDirListing(GetVocalizeDir() , true, false)
	local vocalizations = { "None" }
	
	for k,dir in ipairs(files) do
		-- Dynamically fill the table.
		vocalizations[#vocalizations+1] = dir
	end
	
	if #vocalizations > 1 then
		vocalizations[#vocalizations+1] = "Random"
		vocalizations[#vocalizations+1] = "Blender"
	end
	
	local t = {
		Name = "UserScoreVocalization",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = vocalizations,
		LoadSelections = function(self, list, pn)
			local userVocal = MetroQuad[ToEnumShortString(pn)].ActiveModifiers.Vocalization
			local i = FindInTable(userVocal, vocalizations) or 1
			list[i] = true
		end,
		SaveSelections = function(self, list, pn)
			local sSave
			
			for i=1,#list do
				if list[i] then
					sSave=vocalizations[i]
				end
			end
			
			MetroQuad[ToEnumShortString(pn)].ActiveModifiers.Vocalization = sSave
		end
	}
	return t
end

-------------------------------------------------------------------------------------------------------------------
-- Enable or Disable "Auto Restart With Button".
-------------------------------------------------------------------------------------------------------------------
function EnableAutoRestartWithButton()
	local t = {
		Name = "AutoRestartWithButton",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'On', 'Off' },
		LoadSelections = function(self, list, pn)
			list[2] = true
		end,
		SaveSelections = function(self, list, pn)
			if list[1] then MetroQuad.Global.MiscOptions.AutoRestartWithButton = "On" end
			if list[2] then MetroQuad.Global.MiscOptions.AutoRestartWithButton = "Off" end
		end
	}
	return t
end