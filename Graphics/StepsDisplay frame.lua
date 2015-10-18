local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
	InitCommand=cmd(zoomto,28,28;diffuse,color("#000000");diffusealpha,0.7);
};

return t;