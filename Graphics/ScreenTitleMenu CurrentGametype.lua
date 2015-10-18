local curGameName = GAMESTATE:GetCurrentGame():GetName();

local t = Def.ActorFrame{
	LoadFont("Common Normal") .. {
		InitCommand=cmd(zoom,0.5;);
		BeginCommand=function(self)
			self:settext( "Current GameType: "..curGameName );
		end;
	};
};
return t;