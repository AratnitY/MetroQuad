local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="";
		InitCommand=cmd(x,SCREEN_LEFT+12;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;playcommand,"JukeboxOrNot");
		JukeboxOrNotCommand=function(self)
			local screen = SCREENMAN:GetTopScreen():GetName()
			local text
			if screen == "ScreenJukeboxMenu" then
				text = "SELECT OPTIONS - JUKEBOX"
			else
				text = "SELECT MODIFIERS - PAGE 1"
			end
			self:settext(text)
		end
	};
};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-2);
	Def.Sprite {
		Condition=not GAMESTATE:IsCourseMode();
		OnCommand=function(self)
			if GAMESTATE:GetCurrentSong() then
				local song = GAMESTATE:GetCurrentSong();
				if song:HasBackground() then
					self:LoadBackground(song:GetBackgroundPath());
				end;
				self:scaletoclipped(845,340);
				(cmd(zoom,1;diffusealpha,0.3))(self);
			else
				self:visible(false);
			end
		end;
	};

};

return t