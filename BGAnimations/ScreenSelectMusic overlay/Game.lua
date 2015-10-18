local t = Def.ActorFrame{
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+348,Top()+58;zoom,0.3;uppercase,true);
		OnCommand=function(self)
			local nGame = GAMESTATE:GetCurrentGame():GetName()
			self:settext(nGame)
		end
	};
};

return t