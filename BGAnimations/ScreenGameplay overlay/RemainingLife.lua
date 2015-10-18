local t = Def.ActorFrame {};

local GameStyle = GetCurrentStyle():GetStyleType()
local Solo = GetCurrentStyle():GetName() == "solo"
local P1LifePos
local P2LifePos

if GameStyle == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
	P1LifePos = CenterX()-306
	P2LifePos = CenterX()+68
end

if GameStyle == 'StyleType_OnePlayerTwoSides' then
	P1LifePos = CenterX()-250
	P2LifePos = CenterX()-250
end

if Solo then
	P1LifePos = CenterX()-170
	P2LifePos = CenterX()-170
end

if not IsDemonstration() then
	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Name="P1LifeRemaining";
			Text="";
			InitCommand=cmd(y,Top()+150;x,P1LifePos;zoom,0.4;halign,0;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsRemainingLifeVisible(PLAYER_1));
			OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end;
			OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
			
			UpdateCommand=function(self)
				local Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentLife()

				self:settext(FormatPercentScore(Life))
				self:sleep(0.01)
				self:zoom(0.4)
				self:maxwidth(118)
				self:queuecommand("Update")
				
				if Life <= 0.49 then
					( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "#00FF00" );effectcolor2,color( "#FF0000" ) ) )(self);
				elseif Life >= 0.5 then
					( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "#FFFFFF" );effectcolor2,color( "#FFFFFF" ) ) )(self);
				end
			end;
		};
		
		Def.Quad {
			InitCommand=cmd(x,P1LifePos-4; y,Top()+150;halign,0;zoomto,56,16;draworder,-1;diffuse,color("#000000");visible,GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsRemainingLifeVisible(PLAYER_1));
			OnCommand=cmd(diffusealpha,0.7);
		};
	};

	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Name="P2LifeRemaining";
			Text="";
			InitCommand=cmd(y,Top()+150;x,P2LifePos;zoom,0.4;halign,0;shadowlength,1;visible,GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsRemainingLifeVisible(PLAYER_2));
			OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;
			OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
			
			UpdateCommand=function(self)
				local Life = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentLife()

				self:settext(FormatPercentScore(Life))
				self:sleep(0.01)
				self:zoom(0.4)
				self:maxwidth(118)
				self:queuecommand("Update")
				
				if Life <= 0.49 then
					( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "#00FF00" );effectcolor2,color( "#FF0000" ) ) )(self);
				elseif Life >= 0.5 then
					( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "#FFFFFF" );effectcolor2,color( "#FFFFFF" ) ) )(self);
				end
			end;
		};
		
		Def.Quad {
			InitCommand=cmd(x,P2LifePos-4; y,Top()+150;halign,0;zoomto,56,16;draworder,-1;diffuse,color("#000000");visible,GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsRemainingLifeVisible(PLAYER_2));
			OnCommand=cmd(diffusealpha,0.7);
		};
	};
end

return t
