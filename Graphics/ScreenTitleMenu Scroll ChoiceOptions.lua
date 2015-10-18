local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,-30;zoomto,28,28;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,52;zoomto,128,28;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,-30;zoomto,20,20;diffuse,color( ThemePrefs.Get("MQBaseColor") );diffusealpha,0.5);
	GainFocusCommand=cmd(glowshift;effectcolor2,color( ThemePrefs.Get("MQBaseColor") );diffusealpha,1);
	LoseFocusCommand=cmd(stopeffect;diffuse,color( ThemePrefs.Get("MQBaseColor") );diffusealpha,0.5);
};

t[#t+1] = Def.ActorFrame {
	LoadFont("Common Normal") .. {
	Text="Main Settings";
		InitCommand=cmd(zoom,0.45;horizalign,left);
		OnCommand=cmd(diffusealpha,1;);
		OffCommand=cmd(smooth,0.2;zoom,0;diffusealpha,0;);
		GainFocusCommand=cmd(decelerate,0.1;zoom,0.45);
		LoseFocusCommand=cmd(decelerate,0.1;zoom,0.4);
	};
};

return t;