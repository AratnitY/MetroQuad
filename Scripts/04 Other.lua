function SongMeterDisplayX(pn)
	if Center1Player() then
		return SCREEN_CENTER_X
	else
		return pn == PLAYER_1 and SCREEN_LEFT+16 or SCREEN_RIGHT-16
	end
end

function SongMeterDisplayY(pn)
	return Center1Player() and SCREEN_TOP+50 or SCREEN_CENTER_Y
end

function SongMeterDisplayCommand(pn)
	if Center1Player() then
		return cmd(draworder,50;zoom,0;y,SCREEN_TOP-24;sleep,1.5;decelerate,0.5;zoom,1;y,SCREEN_TOP+50)
	else
		local xAdd = (pn == PLAYER_1) and -24 or 24
		return cmd(draworder,5;rotationz,-90;zoom,0;addx,xAdd;sleep,1.5;decelerate,0.5;zoom,1;addx,xAdd*-1)
	end
end

function TextBannerAfterSet(self,param) 
	local Title=self:GetChild("Title") 
	local Subtitle=self:GetChild("Subtitle") 

	if Subtitle:GetText() == "" then 
		Title:maxwidth(570)
		Title:y(-1)
		Title:zoomx(0.5)
		Title:zoomy(0.75)
		Title:uppercase(true)

		Subtitle:visible(false)
	else
		Title:maxwidth(570)
		Title:y(-1)
		Title:zoomx(0.5)
		Title:zoomy(0.75)
		Title:uppercase(true)

		Subtitle:visible(false)
	end
end