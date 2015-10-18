local posP1
local posP2
local posP1Label
local posP2Label
local GameStyle = GetCurrentStyle():GetStyleType()
local Solo = GetCurrentStyle():GetName() == "solo"

if GameStyle == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
	posP1 = CenterX()-65
	posP2 = CenterX()+308
	posP1Label = CenterX()-310
	posP2Label = CenterX()+65
end

if GameStyle == 'StyleType_OnePlayerTwoSides' or Solo then
	posP1 = CenterX()+150
	posP2 = CenterX()+150
	posP1Label = CenterX()-150
	posP2Label = CenterX()-150
end

local t = Def.ActorFrame{

	LoadFont("Common Normal")..{
		Name="P1Label";
		Text="";
		InitCommand=cmd(CenterY;x,posP1Label;zoom,0.7;halign,0;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_1));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end;
		
		UpdateCommand=function(self)
			local CurCombo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentCombo()
			local CurMisses = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentMissCombo()

			local ShowCombo
			local ComboColor
			
			if CurCombo >= 0 or CurCombo <= 3 then
				ShowLabel = ""
				ComboColor = "#FFFFFF"
			end
			
			if CurCombo >= 4 then
				ShowLabel = "COMBO"
				ComboColor = "#FFFFFF"
			end
			
			if CurMisses >= 4 then
				ShowLabel = "MISSES"
				ComboColor = "#FF0000"
			end
			
			self:settext(ShowLabel)
			self:sleep(0.01)
			self:diffuse(color(ComboColor))
			self:zoom(0.7)
			self:queuecommand("Update")
		end;
	};

	LoadFont("Common Normal")..{
		Name="P1Combo";
		Text="";
		InitCommand=cmd(CenterY;x,posP1;zoom,0.7;halign,1;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_1));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end;
		
		UpdateCommand=function(self)
			local CurCombo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentCombo()
			local CurMisses = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentMissCombo()
			
			local ShowCombo
			local ComboColor
	
			if CurCombo >= 0 or CurCombo <= 3 then
				ShowCombo = ""
				ComboColor = "#FFFFFF"
			end
			
			if CurCombo >= 4 then
				ShowCombo = CurCombo
				ComboColor = "#FFFFFF"
			end
			
			if CurMisses >= 4 then
				ShowCombo = CurMisses
				ComboColor = "#FF0000"
			end
			
			self:settext(ShowCombo)
			self:sleep(0.01)
			self:diffuse(color(ComboColor))
			self:zoom(0.7)
			self:queuecommand("Update")
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="P2Label";
		Text="";
		InitCommand=cmd(CenterY;x,posP2Label;zoom,0.7;halign,0;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		
		UpdateCommand=function(self)
			local CurCombo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentCombo()
			local CurMisses = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentMissCombo()
			
			local ShowCombo
			local ComboColor
			
			if CurCombo >= 0 or CurCombo <= 3 then
				ShowLabel = ""
				ComboColor = "#FFFFFF"
			end
			
			if CurCombo >= 4 then
				ShowLabel = "COMBO"
				ComboColor = "#FFFFFF"
			end
			
			if CurMisses >= 4 then
				ShowLabel = "MISSES"
				ComboColor = "#FF0000"
			end
			
			self:settext(ShowLabel)
			self:sleep(0.01)
			self:diffuse(color(ComboColor))
			self:zoom(0.7)
			self:queuecommand("Update")
		end;
	};
	
	LoadFont("Common Normal")..{
		Name="P2Combo";
		Text="";
		InitCommand=cmd(CenterY;x,posP2;zoom,0.7;halign,1;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2));
		OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
		
		UpdateCommand=function(self)
			local CurCombo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentCombo()
			local CurMisses = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentMissCombo()
			
			local ShowCombo
			local ComboColor
			
			if CurCombo >= 0 or CurCombo <= 3 then
				ShowCombo = ""
				ComboColor = "#FFFFFF"
			end
			
			if CurCombo >= 4 then
				ShowCombo = CurCombo
				ComboColor = "#FFFFFF"
			end
			
			if CurMisses >= 4 then
				ShowCombo = CurMisses
				ComboColor = "#FF0000"
			end
			
			self:settext(ShowCombo)
			self:sleep(0.01)
			self:diffuse(color(ComboColor))
			self:zoom(0.7)
			self:queuecommand("Update")
		end;
	};
}

return t