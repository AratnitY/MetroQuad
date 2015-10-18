local t = Def.ActorFrame{};

t[#t+1] = Def.Quad {
	InitCommand=cmd(zoomto,40,40;diffuse,Black();diffusealpha,0.3);
};
t[#t+1] = LoadFont("Common","Normal") .. {
	Text="AG";
	InitCommand=cmd(shadowlength,1;zoom,0.7);
};

return t;