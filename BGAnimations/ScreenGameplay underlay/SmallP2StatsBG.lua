local StatsP2 = GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsStatsVisible(PLAYER_2) and GAMESTATE:GetNumPlayersEnabled() == 2 and not GAMESTATE:IsDemonstration()

local t = Def.ActorFrame{
	BeginCommand=cmd(x,-2;visible,StatsP2);
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-4;CenterY;horizalign,right;zoomto,92,390;diffuse,color("#000000");diffusealpha,0.8);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="Current Grade";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="Time Alive";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*2;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*2;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*3;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="RIDICULOUS";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*4;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*4;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*5;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="FANTASTIC";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*6;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*6;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*7;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="EXCELLENT";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*8;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*8;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*9;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="GREAT";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*10;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*10;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*11;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="DECENT";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*12;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*12;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*13;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="MISS";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*14;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*14;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*15;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	LoadFont("Common Normal")..{
		Text="Personal Record #1";
		InitCommand=cmd(x,SCREEN_CENTER_X+377;y,SCREEN_TOP+58+20*16;maxwidth,190;zoom,0.4);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*16;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.5);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*17;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	
	Def.Quad {
		InitCommand=cmd(x,SCREEN_RIGHT-8;y,SCREEN_TOP+58+20*18;horizalign,right;zoomto,84,16;diffuse,color("#FFFFFF");diffusealpha,0.25);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
};

return t;