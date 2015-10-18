local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="EDIT HELP";
		InitCommand=cmd(x,SCREEN_LEFT+32;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="INFORMATION";
		InitCommand=cmd(x,SCREEN_RIGHT-20;y,SCREEN_TOP+18;zoom,0.7;horizalign,right);
		OnCommand=cmd(diffusealpha,1;);
	};
};

return t