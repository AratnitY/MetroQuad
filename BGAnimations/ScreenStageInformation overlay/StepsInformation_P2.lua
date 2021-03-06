local t = Def.ActorFrame{};

local StepsP2 = GAMESTATE:GetCurrentSteps(PLAYER_2)

RadarValues = {
	'RadarCategory_Stream', -- 1
	'RadarCategory_Voltage', -- 2
	'RadarCategory_Air', -- 3
	'RadarCategory_Freeze', -- 4
	'RadarCategory_Chaos', -- 5
	'RadarCategory_TapsAndHolds', -- 6
	'RadarCategory_Jumps', -- 7
	'RadarCategory_Holds', -- 8
	'RadarCategory_Mines', -- 9
	'RadarCategory_Hands', -- 10
	'RadarCategory_Rolls', -- 11
	'RadarCategory_Lifts', -- 12
	'RadarCategory_Fakes' -- 13
};

t[#t+1] = Def.ActorFrame {
	LoadFont("Common Normal")..{
		Text="TAPS:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125;zoom,0.5;horizalign,left);
	};
	
	LoadFont("Common Normal")..{
		Text="JUMPS:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20;zoom,0.5;horizalign,left);
	};
	
	LoadFont("Common Normal")..{
		Text="HOLDS:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20*2;zoom,0.5;horizalign,left);
	};
	
	LoadFont("Common Normal")..{
		Text="MINES:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20*3;zoom,0.5;horizalign,left);
	};
	
	LoadFont("Common Normal")..{
		Text="HANDS:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20*4;zoom,0.5;horizalign,left);
	};
	
	LoadFont("Common Normal")..{
		Text="ROLLS:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20*5;zoom,0.5;horizalign,left);
	};
	
	LoadFont("Common Normal")..{
		Text="CURRENT SCORE:";
		InitCommand=cmd(x,CenterX()+244;y,CenterY()-125+20.1*7;zoom,0.5;horizalign,left;maxwidth,170);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadFont("Common Normal")..{
		InitCommand=cmd(x,CenterX()+400;y,CenterY()-125;zoom,0.5;horizalign,right);
		OnCommand=function(self)
			local rValues = StepsP2:GetRadarValues(PLAYER_2)
			local gValue = rValues:GetValue( RadarValues[6] )
			self:settext(gValue)
		end
	};
	
	LoadFont("Common Normal")..{
		InitCommand=cmd(x,CenterX()+400;y,CenterY()-125+20;zoom,0.5;horizalign,right);
		OnCommand=function(self)
			local rValues = StepsP2:GetRadarValues(PLAYER_2)
			local gValue = rValues:GetValue( RadarValues[7] )
			self:settext(gValue)
		end
	};
	
	LoadFont("Common Normal")..{
		InitCommand=cmd(x,CenterX()+400;y,CenterY()-125+20*2;zoom,0.5;horizalign,right);
		OnCommand=function(self)
			local rValues = StepsP2:GetRadarValues(PLAYER_2)
			local gValue = rValues:GetValue( RadarValues[8] )
			self:settext(gValue)
		end
	};
	
	LoadFont("Common Normal")..{
		InitCommand=cmd(x,CenterX()+400;y,CenterY()-125+20*3;zoom,0.5;horizalign,right);
		OnCommand=function(self)
			local rValues = StepsP2:GetRadarValues(PLAYER_2)
			local gValue = rValues:GetValue( RadarValues[9] )
			self:settext(gValue)
		end
	};
	
	LoadFont("Common Normal")..{
		InitCommand=cmd(x,CenterX()+400;y,CenterY()-125+20*4;zoom,0.5;horizalign,right);
		OnCommand=function(self)
			local rValues = StepsP2:GetRadarValues(PLAYER_2)
			local gValue = rValues:GetValue( RadarValues[10] )
			self:settext(gValue)
		end
	};
	
	LoadFont("Common Normal")..{
		InitCommand=cmd(x,CenterX()+400;y,CenterY()-125+20*5;zoom,0.5;horizalign,right);
		OnCommand=function(self)
			local rValues = StepsP2:GetRadarValues(PLAYER_2)
			local gValue = rValues:GetValue( RadarValues[11] )
			self:settext(gValue)
		end
	};
};

return t