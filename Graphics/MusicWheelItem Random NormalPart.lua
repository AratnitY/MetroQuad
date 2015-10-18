return Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomto,350,42;diffuse,color("#FFFFFF");diffusealpha,0.4);
	};
	Def.Quad {
		InitCommand=cmd(zoomto,342,34;diffuse,color( LightBaseColor() );blend,Blend.Add;rainbow;diffusealpha,0.2);
	};
};