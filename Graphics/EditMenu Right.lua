local t = Def.ActorFrame{
	LoadActor("_EditMenu Arrow")..{
		BeginCommand=cmd(zoom,0.15);
	};
};

return t;