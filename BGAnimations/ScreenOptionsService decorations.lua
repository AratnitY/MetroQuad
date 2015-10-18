local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="MAIN MENU";
		InitCommand=cmd(x,SCREEN_LEFT+12;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;);
	};
};

return t