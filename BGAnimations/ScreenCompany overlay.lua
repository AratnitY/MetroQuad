local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	
	LoadActor("Logo") .. {
		InitCommand=cmd(Center);
	};
};

return t