-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- Branches Library for METRO QUAD.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- Branches for ScreenTitleMenu.
-------------------------------------------------------------------------------------------------------------------
ScreenTitle = {
	StartGame = function()
		local NextScreen
		
		if SONGMAN:GetNumSongs() == 0 and SONGMAN:GetNumAdditionalSongs() == 0 then
			return "ScreenHowToInstallSongs"
		else
			NextScreen = "ScreenSelectProfile"
		end
	
		return NextScreen
	end
}

-------------------------------------------------------------------------------------------------------------------
-- Branches for ScreenSelectProfile.
-------------------------------------------------------------------------------------------------------------------
ScreenProfile = {
	NextScreen = function()
		local NextScreen
		local iTheme = ThemePrefs.Get("MQThemeInterface")
		
		if iTheme == "Normal" then
			NextScreen = "ScreenSelectStyle"
		end
		
		if iTheme == "6-Panels" then
			NextScreen = "ScreenMQ6PanelsSelectStyle"
		end
	
		return NextScreen
	end
}

-------------------------------------------------------------------------------------------------------------------
-- Branches for ScreenSelectMusic.
-------------------------------------------------------------------------------------------------------------------
ScreenMusic = {
	NextScreen = function()
		local ScreenOptions = "ScreenPlayerOptions"
		local OptionDisabled = ThemePrefs.Get("OptionsDisable") == true
		local ScreenStageI = ThemePrefs.Get("StageInformation") == true
		
		if SCREENMAN:GetTopScreen():GetGoToOptions() and not OptionDisabled then
			return ScreenOptions
		else
			if GAMESTATE:IsCourseMode() and ScreenStageI then
				return "ScreenStageInformationCourse"
			elseif not GAMESTATE:IsCourseMode() and ScreenStageI then
				return "ScreenStageInformation"
			elseif GAMESTATE:IsCourseMode() or not GAMESTATE:IsCourseMode() and not ScreenStageI then
				return "ScreenGameplay"
			end
		end
	end
}