local x = Def.ActorFrame{

	LoadFont("Common Normal")..{
		Text="Saving Profile...";
		InitCommand=cmd(Center;diffuse,color("1,1,1,1");shadowlength,1;zoom,0.5);
		OffCommand=cmd(linear,0.15;diffusealpha,0);
	};
};

x[#x+1] = Def.Actor {
	BeginCommand=function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToSave() then self:sleep(0.5); end;
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

return x;