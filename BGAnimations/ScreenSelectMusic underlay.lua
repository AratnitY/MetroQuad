local t = Def.ActorFrame {};

-----------------------------------------------------------------------------
-- Black Background Header
t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,Top()+20;zoomto,845,32;diffuse,color("#000000");diffusealpha,0.5);
};
-- Colored Over Header
t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,Top()+52;zoomto,845,24;diffuse,color( LightBaseColor() );diffusealpha,0.5);
};
-- Black Background
t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,Top()+68;zoomto,846,372;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
};
-- Black Tail Background
t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,Bottom()-4;zoomto,582,36;vertalign,bottom;diffuse,color("#000000");diffusealpha,0.3);
};

-----------------------------------------------------------------------------
-- PLAYER 1 STUFFS:
-- P1 DiffList Background
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8;y,Top()+72;zoomto,282,40;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Top Line (Length / BPM)
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8;y,Top()+116;zoomto,282,20;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Chart Line
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8;y,Top()+116+24;zoomto,139,20;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Chart Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8;y,Top()+116+24+24;zoomto,139,68;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Best Line
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+151;y,Top()+116+24;zoomto,139,20;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Best Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+151;y,Top()+116+24+24;zoomto,139,68;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Best #1 Judgments Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8;y,Top()+236;zoomto,56,152;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Best #2 Judgments Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8+56+4;y,Top()+236;zoomto,56,152;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Best #3 Judgments Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8+56*2+4*2;y,Top()+236;zoomto,56,152;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Total Stats Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8+56*3+4*3;y,Top()+236;zoomto,102,152;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Difficulty Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+8;y,Bottom()-44;zoomto,282,44;horizalign,left;vertalign,bottom;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P1 Score Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Left()+140;y,Bottom()-8;zoomto,150,32;horizalign,left;vertalign,bottom;diffuse,color("#000000");diffusealpha,0.3);
	};
end

-----------------------------------------------------------------------------
-- PLAYER 2 STUFFS:
-- P2 DiffList Background
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-8;y,Top()+72;zoomto,282,40;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Top Line (Length / BPM)
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-8;y,Top()+116;zoomto,282,20;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Chart Line
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-8;y,Top()+116+24;zoomto,139,20;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Chart Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-8;y,Top()+116+24+24;zoomto,139,68;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Best Line
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-151;y,Top()+116+24;zoomto,139,20;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Best Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-151;y,Top()+116+24+24;zoomto,139,68;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Best #1 Judgments Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-234;y,Top()+236;zoomto,56,152;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Best #2 Judgments Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-234+56+4;y,Top()+236;zoomto,56,152;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Best #3 Judgments Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-234+56*2+4*2;y,Top()+236;zoomto,56,152;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Total Stats Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-8;y,Top()+236;zoomto,102,152;horizalign,right;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Difficulty Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-8;y,Bottom()-44;zoomto,282,44;horizalign,right;vertalign,bottom;diffuse,color("#000000");diffusealpha,0.3);
	};
	-- P2 Score Background
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,Right()-140;y,Bottom()-8;zoomto,150,32;horizalign,right;vertalign,bottom;diffuse,color("#000000");diffusealpha,0.3);
	};
end

-----------------------------------------------------------------------------
-- Left Profile Black
t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Left()+68;y,Bottom()-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};
-- Left Profile Colored
t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Left()+68;y,Bottom()-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};
-- Right Profile Black
t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Right()-68;y,Bottom()-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};
-- Right Profile Colored
t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Right()-68;y,Bottom()-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

return t