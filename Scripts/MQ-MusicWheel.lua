-------------------------------------------------------------------------------------------------------------------
-- REVISION 6 LUA Scripts (Ov3rHell3XoduZ)
-- MusicWheel and Stuffs Scripts.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- MUSIC WHEEL TRANSFORM FUNCTION: Linear MusicWheel.
-------------------------------------------------------------------------------------------------------------------
function music_wheel_transform(self,offsetFromCenter,_fake1,_fake2)
	local numItems = THEME:GetMetric("MusicWheel","NumWheelItems")
	self:x( (1-math.cos(offsetFromCenter/math.pi))*0 )
	self:y( offsetFromCenter*46 )
end

-------------------------------------------------------------------------------------------------------------------
-- GLOBAL MUSICWHEEL PARAMETERS: MusicWheel X & Y Position / OnCommand.
-------------------------------------------------------------------------------------------------------------------
function MusicWheelX() local PosX local Online = IsNetConnected() if Online then PosX = CenterX()+200 else PosX = CenterX() end return PosX end
function MusicWheelY() local PosY local Online = IsNetConnected() if Online then PosY = CenterY()-2 else PosY = CenterY()+32 end return PosY end
function MusicWheelOnCommand(self) local Online = IsNetConnected() if Online then self:draworder(-5) self:fov(90) self:zoomx(1) self:zoomy(0.55) else self:draworder(-5) self:fov(90) self:zoomx(0.75) self:zoomy(0.514) end end