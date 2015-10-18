local netConnected = IsNetConnected();
local loggedOnSMO = IsNetSMOnline();

local t = Def.ActorFrame{
	LoadFont("Common Normal") .. {
		InitCommand=cmd(zoom,0.4;horizalign,center);
		BeginCommand=function(self)

			if netConnected then
				self:diffuse( color("0.95,0.975,1,1") );
				self:diffusebottomedge( color("0.72,0.89,1,1") );
				self:settext( Screen.String("Network OK") );
			else
				self:diffuse( color("0.75,0.75,0.75,1") );
				self:settext( Screen.String("Offline") );
			end;
		end;
	};
};

if netConnected then
	t[#t+1] = LoadFont("Common Normal") .. {
		InitCommand=cmd(y,10;maxwidth,350;horizalign,center;zoom,0.3;diffuse,color("0.72,0.89,1,1"));
		BeginCommand=function(self)
			self:settext( string.format(Screen.String("Connected to %s"), GetServerName()) );
		end;
	};
	else
	t[#t+1] = LoadFont("Common Normal") .. {
		InitCommand=cmd(y,10;horizalign,center;zoom,0.3;diffuse,color("#C4C4C4"));
		BeginCommand=function(self)
			self:settext("Not Connected");
		end;
	};
end;

return t;