local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_LEFT+5;y,SCREEN_TOP+20;zoomto,148,32;diffuse,color("#000000");diffusealpha,0.5;horizalign,left);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_RIGHT-5;y,SCREEN_TOP+20;zoomto,148,32;diffuse,color("#000000");diffusealpha,0.5;horizalign,right);
};

--

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_LEFT+5;y,SCREEN_CENTER_Y+24;zoomto,148,424;diffuse,color("#000000");diffusealpha,0.5;horizalign,left);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_RIGHT-5;y,SCREEN_CENTER_Y+24;zoomto,148,424;diffuse,color("#000000");diffusealpha,0.5;horizalign,right);
};

--

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+26;zoomto,500,1024;diffuse,color("#000000");diffusealpha,0.6);
};

return t