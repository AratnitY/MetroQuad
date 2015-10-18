local t = Def.ActorFrame{
	LoadActor("_EditMenu Arrow")..{
		BeginCommand=cmd(zoomy,0.15;zoomx,-0.15);
	};
};

return t;