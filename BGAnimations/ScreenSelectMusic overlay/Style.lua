local t = Def.ActorFrame{
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+276,Top()+58;zoom,0.3;uppercase,true);
		OnCommand=function(self)
			local nStyle = GetCurrentStyle():GetName()
			self:settext(nStyle)
		end
	};
};

return t