local t = Def.ActorFrame {};

local GameStyle = GetCurrentStyle():GetStyleType()
local Solo = GetCurrentStyle():GetName() == "solo"
local P1ScorePos
local P2ScorePos

if GameStyle == 'StyleType_OnePlayerOneSide' or 'StyleType_TwoPlayersTwoSides' then
	P1ScorePos = CenterX()-114
	P2ScorePos = CenterX()+258
end

if GameStyle == 'StyleType_OnePlayerTwoSides' then
	P1ScorePos = CenterX()+200
	P2ScorePos = CenterX()+200
end

if Solo then
	P1ScorePos = CenterX()+120
	P2ScorePos = CenterX()+120
end

if not IsDemonstration() then
	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Name="P1Score";
			Text="";
			InitCommand=cmd(x,P1ScorePos;y,Top()+150;halign,0;zoom,0.4;diffuse,color( LightColorForScore() );shadowlength,1;maxwidth,118;visible,IsPlayerEnabled(PLAYER_1) and IsNegativeScoreVisible(PLAYER_1));
			OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_1) then self:queuecommand("Update") end end;
			
			UpdateCommand=function(self)
				local percent = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPercentDancePoints()
				local MaxScore = 1
			
				self:settext("-"..FormatPercentScore(MaxScore - percent));
				self:sleep(0.01)
				self:queuecommand("Update")
				
				if percent >= 0.9 then
					( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "#FFFFFF" );effectcolor2,color( LightColorForScore() ) ) )(self);
				end
			end;
		};
		
		Def.Quad {
			InitCommand=cmd(x,P1ScorePos-4;y,Top()+150;halign,0;zoomto,56,16;draworder,-1;diffuse,color("#000000");visible,GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsNegativeScoreVisible(PLAYER_1));
			OnCommand=cmd(diffusealpha,0.7);
		};
	};
	
	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Name="P2Score";
			Text="-100.00%";
			InitCommand=cmd(x,P2ScorePos;y,Top()+150;halign,0;zoom,0.4;diffuse,color(LightColorForScore());shadowlength,1;maxwidth,118;visible,IsPlayerEnabled(PLAYER_2) and IsNegativeScoreVisible(PLAYER_2));
			OnCommand=function(self) if GAMESTATE:IsPlayerEnabled(PLAYER_2) then self:queuecommand("Update") end end;

			UpdateCommand=function(self)
				local percent = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPercentDancePoints()
				local MaxScore = 1
				
				self:settext("-"..FormatPercentScore(MaxScore - percent));
				self:sleep(0.01)
				self:queuecommand("Update")
		
				if percent >= 0.9 then
					( cmd( diffuseshift;effectclock,'beat';effectcolor1,color( "#FFFFFF" );effectcolor2,color( LightColorForScore() ) ) )(self);
				end
			end;
		};
	
		Def.Quad {
			InitCommand=cmd(x,P2ScorePos-4;y,Top()+150;halign,0;zoomto,56,16;draworder,-1;diffuse,color("#000000");visible,GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsNegativeScoreVisible(PLAYER_2));
			OnCommand=cmd(diffusealpha,0.7);
		};
	};
end

return t