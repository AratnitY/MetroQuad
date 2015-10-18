local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
	BeginCommand=cmd(Fullscreen);
	InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color( ThemePrefs.Get("MQBaseColor") ));
};

return t;