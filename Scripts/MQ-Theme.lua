-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- Theme Metrics moved to LUA for METRO QUAD
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- THEME VERSION
-------------------------------------------------------------------------------------------------------------------
function ThemeVersion() return "VERSION: 5.0.4 / REVISION: 6.8.2" end

-------------------------------------------------------------------------------------------------------------------
-- COMMON (Miscelaneous Scripts uses in multiples parts).
-------------------------------------------------------------------------------------------------------------------
function IsPlayerEnabled(pn) return GAMESTATE:IsPlayerEnabled(pn) end
function IsHumanPlayer(pn) return GAMESTATE:IsHumanPlayer(pn) end
function GetCurrentCourse() return GAMESTATE:GetCurrentCourse() end
function GetCurrentSong() return GAMESTATE:GetCurrentSong() end
function GetCurrentSteps(pn) return GAMESTATE:GetCurrentSteps(pn) end
function GetCurrentTrail(pn) return GAMESTATE:GetCurrentTrail(pn) end
function GetCurrentStyle() return GAMESTATE:GetCurrentStyle() end
function IsDemonstration() return GAMESTATE:IsDemonstration() end

function CenterX() return SCREEN_CENTER_X end
function CenterY() return SCREEN_CENTER_Y end
function Left() return SCREEN_LEFT end
function Right() return SCREEN_RIGHT end
function Top() return SCREEN_TOP end
function Bottom() return SCREEN_BOTTOM end
function Width() return SCREEN_WIDTH end
function Height() return SCREEN_HEIGHT end

function Black() return Color("Black") end
function White() return Color("White") end
function Red() return Color("Red") end
function Blue() return Color("Blue") end
function Green() return Color("Green") end
function Yellow() return Color("Yellow") end
function Orange() return Color("Orange") end
function Purple() return Color("Purple") end

-------------------------------------------------------------------------------------------------------------------
-- SCREEN SELECT MUSIC (SongOptions).
-------------------------------------------------------------------------------------------------------------------
function SongOptionsShow(self)
	local OptionsDisabled = ThemePrefs.Get("OptionsDisable") == true
	
	if not OptionsDisabled then
		self:visible(true)
		self:uppercase(true)
		self:zoom(0.5)
		self:settext("Press &START; to Enter Options")
	else
		self:visible(false)
	end
end

function SongOptionsEnter(self)
	local OptionsDisabled = ThemePrefs.Get("OptionsDisable") == true
	
	if not OptionsDisabled then
		self:uppercase(true)
		self:settext("Entering Options...")
		self:sleep(0.5)
		self:linear(0.2)
		self:zoomy(0)
	else
		self:visible(false)
	end
end

-------------------------------------------------------------------------------------------------------------------
-- SCREEN GAMEPLAY (SurroundLife).
-------------------------------------------------------------------------------------------------------------------
SurroundLife = { Player1 = { X = CenterX()-186, }, Player2 = { X = CenterX()+186 }, }

function SurroundLifeY() return CenterY()-4.5 end

function SurroundLifeP1OnCommand(self)
	local Style = GAMESTATE:GetCurrentStyle():GetStyleType()
	if Style == 'StyleType_OnePlayerTwoSides' then
		self:visible( LifeVisible(PLAYER_1) )
		self:diffuse( LifeColor(PLAYER_1) )
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(2.05)
	elseif Style == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
		self:visible( LifeVisible(PLAYER_1) )
		self:diffuse( LifeColor(PLAYER_1) )
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(1.05)
	end
end

function SurroundLifeP2OnCommand(self)
	local Style = GAMESTATE:GetCurrentStyle():GetStyleType()
	if Style == 'StyleType_OnePlayerTwoSides' then
		self:visible( LifeVisible(PLAYER_2) )
		self:diffuse( LifeColor(PLAYER_2) )
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(2.05)
	elseif Style == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
		self:visible( LifeVisible(PLAYER_2) )
		self:diffuse( LifeColor(PLAYER_2) )
		self:draworder(-1)
		self:rotationz(-90)
		self:zoomy(1.05)
	end
end

function SurroundLifeP1X()
	local Style = GAMESTATE:GetCurrentStyle():GetStyleType()
	local pos

	if Style == 'StyleType_OnePlayerTwoSides' then
		pos = CenterX()
	elseif Style == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
		pos = SurroundLife.Player1["X"]
	end
	return pos
end

function SurroundLifeP2X()
	local Style = GAMESTATE:GetCurrentStyle():GetStyleType()
	local pos

	if Style == 'StyleType_OnePlayerTwoSides' then
		pos = CenterX()
	elseif Style == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
		pos = SurroundLife.Player2["X"]
	end
	return pos
end

-------------------------------------------------------------------------------------------------------------------
-- SCREEN SELECT STYLE (IconChoice).
-------------------------------------------------------------------------------------------------------------------
IconChoice = { Single = { X = CenterX()-250, }, Double = { X = CenterX(), }, Versus = { X = CenterX()+250, },	}

function IconSingleX() return IconChoice.Single["X"] end
function IconDoubleX() return IconChoice.Double["X"] end
function IconVersusX() return IconChoice.Versus["X"] end
function IconChoiceOnCommand(self) self:zoom(0.7) end
function IconChoiceOffCommand(self)	self:linear(0.1175) self:zoomx(0) end

-------------------------------------------------------------------------------------------------------------------
-- NETWORK GAMEPLAY (ModIcons).
-------------------------------------------------------------------------------------------------------------------
ModIcons = { Position = { X = Left()+172, Y = CenterY()+157,	}, }

function ModIconsX() return ModIcons.Position["X"] end
function ModIconsY() return ModIcons.Position["Y"] end
function ModIconsOnCommand(self) self:zoomx(0.8) self:zoomy(0.6) end

-------------------------------------------------------------------------------------------------------------------
-- NETWORK GAMEPLAY (Text and Description).
-------------------------------------------------------------------------------------------------------------------
RoomWheelItem = { Text = { X = -160, Y = -6, },	Description = {	Y = 6, }, }

function RW_TextX()	return RoomWheelItem.Text["X"] end
function RW_TextY()	return RoomWheelItem.Text["Y"] end
function RW_DescriptionY() return RoomWheelItem.Description["Y"] end