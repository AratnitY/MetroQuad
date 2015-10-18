local t = Def.ActorFrame{
	LoadActor("dead");
	LoadActor("SmallP1StatsBG");
	LoadActor("SmallP2StatsBG");
	LoadActor("TabP1MainBG");
	LoadActor("TabP2MainBG");
	
	Def.Quad {
		InitCommand=cmd(CenterX;y,SCREEN_TOP;vertalign,top;zoomto,SCREEN_WIDTH,40;diffuse,color("#000000");diffusealpha,1);
	};
	
	Def.Quad {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM;vertalign,bottom;zoomto,SCREEN_WIDTH,40;diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,1);
	};
};

if not IsDemonstration() then t[#t+1] = LoadActor("ScreenFilter")..{ InitCommand=cmd(draworder,-1); }; end
t[#t+1] = LoadActor("danger")..{ InitCommand=cmd(draworder,-2); };

return t;