return Def.ActorFrame {

	Def.Quad {
		InitCommand=cmd(x,-30;zoomto,128,28;diffuse,color("#000000");diffusealpha,0.4);
	};

	Def.Quad {
		InitCommand=cmd(x,-30;zoomto,120,20;diffuse,color( LightBaseColor() );diffusealpha,0.5);
		GainFocusCommand=cmd(glowshift;effectcolor2,color( LightBaseColor() );diffusealpha,1);
		LoseFocusCommand=cmd(stopeffect;diffuse,color( LightBaseColor() );diffusealpha,0.5);
	};
	
	Def.Quad {
		InitCommand=cmd(x,370;zoomto,659,28;diffuse,color("#000000");diffusealpha,0.4);
	};
};