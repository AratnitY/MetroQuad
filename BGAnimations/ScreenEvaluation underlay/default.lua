local t = Def.ActorFrame {};

if IsPlayerEnabled(PLAYER_1) then t[#t+1] = LoadActor("Result_P1") end
if IsPlayerEnabled(PLAYER_2) then t[#t+1] = LoadActor("Result_P2") end
t[#t+1] = LoadActor("Tabs")..{ InitCommand=cmd(y,4;draworder,100); }

--------------------------------------------------------------------------------------------------------------

t[#t+1] = Def.ActorFrame {
	-- Header
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,Top()+20;zoomto,845,32;diffuse,color("#000000");diffusealpha,0.5);
	};
	-- Secondary Line
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,Top()+52;zoomto,845,24;diffuse,color( LightBaseColor() );diffusealpha,0.5);
	};
	-- Main Background
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,Top()+68;vertalign,top;zoomto,845,372;diffuse,color("#000000");diffusealpha,0.3);
	};
};

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(y,6);
	-- Center Background
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,Top()+88;vertalign,top;zoomto,820/3,340;diffuse,color("#FFFFFF");diffusealpha,0.2);
	};
	-- Song Title
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,CenterY()-44;zoomto,820/3,20;diffuse,color("#000000");diffusealpha,0.5);
	};
	-- Song Subtitle
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,CenterY()-24;zoomto,820/3,14;diffuse,color("#000000");diffusealpha,0.5);
	};
	-- Song Artist
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,CenterY()-6;zoomto,820/3,14;diffuse,color("#000000");diffusealpha,0.5);
	};
};

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(y,6);
	-- Center Secondary Results
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,CenterY()+34;zoomto,266,58;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- Bottom Song Options BG
	Def.Quad {
		InitCommand=cmd(x,CenterX();y,CenterY()+172;zoomto,820/3,24;diffuse,color("#000000");diffusealpha,0.5);
	};
};

------------------------------------------------------------------------------------------------------------------------

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Left()+69;y,Bottom()-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Left()+69;y,Bottom()-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,CenterX();y,Bottom()-20;zoomto,580,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,CenterX();y,Bottom()-20;zoomto,572,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Right()-69;y,Bottom()-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Right()-69;y,Bottom()-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

return t