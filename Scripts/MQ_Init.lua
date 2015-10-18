-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- Tweaked LUA Script used from SIMPLY LOVE PORT.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- SIMPLY LOVE FUNCTION (Thanks dbk2).
-------------------------------------------------------------------------------------------------------------------
function FindInTable(needle, haystack)
	for i = 1, #haystack do
		if needle == haystack[i] then
			return i
		end
	end
	return nil
end

local PlayerDefaults = {
	__index = {
		initialize = function(self)
			self.ActiveModifiers = {
				LifeVisible = "On",
				LifeColor = "Normal",
				PlayerStats = "On",
				RemainingLife = "On",
				NegativeScore = "On",
				Vocalization = "None"
			}
			self.HighScores = {
				EnteringName = false,
				Name = nil
			}
			self.Stages = {
				Stats = {}
			}
			self.CurrentPlayerOptions = 
			{
				String = nil
			}
		end
	}
}

local GlobalDefaults = {
	__index = {
		initialize = function(self)
			self.ScreenAfter = {
				PlayerOptions = "ScreenGameplay",
				PlayerOptions2 = "ScreenGameplay",
				PlayerOptions3 = "ScreenGameplay",
				JukeboxMenu = "ScreenJukebox"
			}
			self.MiscOptions = {
				AutoRestartWithButton = "Off"
			}
		end
	}
}

MetroQuad = {
	P1 = setmetatable( {}, PlayerDefaults),
	P2 = setmetatable( {}, PlayerDefaults),
	Global = setmetatable( {}, GlobalDefaults),
}

function InitializeMetroQuad()
	MetroQuad.P1:initialize()
	MetroQuad.P2:initialize()
	MetroQuad.Global:initialize()
end

InitializeMetroQuad()