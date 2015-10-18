local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
	InitCommand=cmd(zoomto,128,28;diffuse,color("#FFFFFF");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,-18;zoomto,82,20;diffuse,color("#FFFFFF");diffusealpha,0.6);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,43;zoomto,32,20;diffuse,color("#FFFFFF");diffusealpha,0.6);
};

return t;