local bg = Def.ActorFrame{
	InitCommand=cmd(draworder,1000);
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("0,0,0,0"));
		OnCommand=cmd(linear,0.2;diffusealpha,1);
	};

};

return bg