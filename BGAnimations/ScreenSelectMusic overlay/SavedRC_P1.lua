local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
BeginCommand=cmd(y,16;diffuse,GameColor.PlayerColors.PLAYER_1;visible,IsPlayerEnabled(PLAYER_1));
	LoadFont("Common Normal")..{
		Text="TAPS";
		InitCommand=cmd(xy,Left()+16,CenterY()+50;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+53,CenterY()+50;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,5) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,5); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="JUMPS";
		InitCommand=cmd(xy,Left()+16,CenterY()+50+16;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+53,CenterY()+50+16;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,6) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,6); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="HOLDS";
		InitCommand=cmd(xy,Left()+16,CenterY()+50+16*2;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+53,CenterY()+50+16*2;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,7) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,7); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="MINES";
		InitCommand=cmd(xy,Left()+16,CenterY()+50+16*3;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+53,CenterY()+50+16*3;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,8) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,8); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="HANDS";
		InitCommand=cmd(xy,Left()+88+4,CenterY()+50;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+125+4,CenterY()+50;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,9) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,9); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="ROLLS";
		InitCommand=cmd(xy,Left()+88+4,CenterY()+50+16;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+125+4,CenterY()+50+16;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,10) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,10); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="LIFTS";
		InitCommand=cmd(xy,Left()+88+4,CenterY()+50+16*2;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+125+4,CenterY()+50+16*2;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,11) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,11); Diffuse = ColorDarkTone(White()) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="FAKES";
		InitCommand=cmd(xy,Left()+88+4,CenterY()+50+16*3;zoom,0.3;horizalign,left);
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+125+4,CenterY()+50+16*3;zoom,0.3;horizalign,left);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedRadarValue(PLAYER_1,1,12) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedRadarValue(PLAYER_1,1,12); Diffuse = ColorDarkTone(White()) } )
		end
	};
}

return t