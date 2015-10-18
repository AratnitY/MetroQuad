local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
	InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color( ThemePrefs.Get("MQBaseColor") ));
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_TOP+20;zoomto,845,32;diffuse,color("#000000");diffusealpha,0.5);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_TOP+52;zoomto,845,24;diffuse,color( LightBaseColor() );diffusealpha,0.5);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-2;zoomto,845,340;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_LEFT+69;y,SCREEN_BOTTOM-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_LEFT+69;y,SCREEN_BOTTOM-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-20;zoomto,580,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-20;zoomto,572,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_RIGHT-69;y,SCREEN_BOTTOM-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_RIGHT-69;y,SCREEN_BOTTOM-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

return t