local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadFont("Common Normal")..{
		Text="CURRENT SCORE:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20.1*7;zoom,0.5;horizalign,left;maxwidth,170);
	};
};

return t