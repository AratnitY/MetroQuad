local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadFont("Common Normal")..{
		Text="Personal #1";
		InitCommand=cmd(xy,Left()+36,CenterY()+6;zoom,0.35;diffuse,GameColor.PlayerColors.PLAYER_1;maxwidth,120;visible,IsPlayerEnabled(PLAYER_1));
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24;zoom,0.6;diffuse,color(jColors[1]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,1,9) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22;zoom,0.6;diffuse,color(jColors[2]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,1,8) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*2;zoom,0.6;diffuse,color(jColors[3]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,1,7) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*3;zoom,0.6;diffuse,color(jColors[4]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,1,6) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*4;zoom,0.6;diffuse,color(jColors[5]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,1,5) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*5;zoom,0.6;diffuse,color(jColors[6]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,1,4) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,1,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
		end
	};
}

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(x,60);
	LoadFont("Common Normal")..{
		Text="Personal #2";
		InitCommand=cmd(xy,Left()+36,CenterY()+6;zoom,0.35;diffuse,GameColor.PlayerColors.PLAYER_1;maxwidth,120;visible,IsPlayerEnabled(PLAYER_1));
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24;zoom,0.6;diffuse,color(jColors[1]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,2,9) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,2,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22;zoom,0.6;diffuse,color(jColors[2]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,2,8) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,2,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*2;zoom,0.6;diffuse,color(jColors[3]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,2,7) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,2,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*3;zoom,0.6;diffuse,color(jColors[4]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,2,6) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,2,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*4;zoom,0.6;diffuse,color(jColors[5]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,2,5) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,2,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*5;zoom,0.6;diffuse,color(jColors[6]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,2,4) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,2,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
		end
	};
}

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(x,60*2);
	LoadFont("Common Normal")..{
		Text="Personal #3";
		InitCommand=cmd(xy,Left()+36,CenterY()+6;zoom,0.35;diffuse,GameColor.PlayerColors.PLAYER_1;maxwidth,120;visible,IsPlayerEnabled(PLAYER_1));
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24;zoom,0.6;diffuse,color(jColors[1]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,3,9) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,3,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22;zoom,0.6;diffuse,color(jColors[2]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,3,8) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,3,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*2;zoom,0.6;diffuse,color(jColors[3]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,3,7) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,3,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*3;zoom,0.6;diffuse,color(jColors[4]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,3,6) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,3,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*4;zoom,0.6;diffuse,color(jColors[5]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,3,5) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,3,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
		end
	};
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(xy,Left()+36,CenterY()+24+22*5;zoom,0.6;diffuse,color(jColors[6]);shadowlength,1);
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end,
		UpdateCommand=function(self)
			self:settext(string.format("%04.0f",GetFixedSavedTNS(PLAYER_1,3,4) or "0"))
			self:sleep(0.01)
			self:maxwidth(180)
			self:queuecommand("Update")
			self:AddAttribute( 0, { Length = LeadingToFourZerosForSavedTNS(PLAYER_1,3,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
		end
	};
}

return t