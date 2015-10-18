local t = Def.ActorFrame{};

t[#t+1] = StandardDecorationFromFileOptional("LifeDifficulty","LifeDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("TimingDifficulty","TimingDifficulty");

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_LEFT+16);
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,1);
	};
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48+4;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,1);
	};
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48+8;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,1);
	};
};

return t;