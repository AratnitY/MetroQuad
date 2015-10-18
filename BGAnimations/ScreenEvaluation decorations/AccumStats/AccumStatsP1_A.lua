local t = Def.ActorFrame{};

local AccumStatsP1Label
local AccumSS = STATSMAN:GetAccumPlayedStageStats()
local pss = AccumSS:GetPlayerStageStats(PLAYER_1)

local AccumStatsP1Line1, AccumStatsP1Line2, AccumStatsP1Line3, AccumStatsP1Line4, AccumStatsP1Line5, AccumStatsP1Line6
local AccumStatsP1Value1, AccumStatsP1Value2, AccumStatsP1Value3, AccumStatsP1Value4, AccumStatsP1Value5, AccumStatsP1Value6

local function ResultsPage3(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		-- Acummulated P1 Stats Lines
		AccumStatsP1Label:visible(false)
		AccumStatsP1Line1:visible(false)
		AccumStatsP1Line2:visible(false)
		AccumStatsP1Line3:visible(false)
		AccumStatsP1Line4:visible(false)
		AccumStatsP1Line5:visible(false)
		AccumStatsP1Line6:visible(false)
		-- Acummulated P1 Stats Values
		AccumStatsP1Value1:visible(false)
		AccumStatsP1Value2:visible(false)
		AccumStatsP1Value3:visible(false)
		AccumStatsP1Value4:visible(false)
		AccumStatsP1Value5:visible(false)
		AccumStatsP1Value6:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		-- Acummulated P1 Stats Lines
		AccumStatsP1Label:visible(false)
		AccumStatsP1Line1:visible(false)
		AccumStatsP1Line2:visible(false)
		AccumStatsP1Line3:visible(false)
		AccumStatsP1Line4:visible(false)
		AccumStatsP1Line5:visible(false)
		AccumStatsP1Line6:visible(false)
		-- Acummulated P1 Stats Values
		AccumStatsP1Value1:visible(false)
		AccumStatsP1Value2:visible(false)
		AccumStatsP1Value3:visible(false)
		AccumStatsP1Value4:visible(false)
		AccumStatsP1Value5:visible(false)
		AccumStatsP1Value6:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		-- Acummulated P1 Stats Lines
		AccumStatsP1Label:visible(true)
		AccumStatsP1Line1:visible(true)
		AccumStatsP1Line2:visible(true)
		AccumStatsP1Line3:visible(true)
		AccumStatsP1Line4:visible(true)
		AccumStatsP1Line5:visible(true)
		AccumStatsP1Line6:visible(true)
		-- Acummulated P1 Stats Values
		AccumStatsP1Value1:visible(true)
		AccumStatsP1Value2:visible(true)
		AccumStatsP1Value3:visible(true)
		AccumStatsP1Value4:visible(true)
		AccumStatsP1Value5:visible(true)
		AccumStatsP1Value6:visible(true)
	end
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
		LoadFont("Common Normal")..{
			Text="CURRENT SESSION TOTAL P1 STATS:";
			BeginCommand=cmd(x,Left()+56;y,CenterY()-132;zoom,0.6;horizalign,left;maxwidth,350;shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Label=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTICS:";
			BeginCommand=cmd(x,Left()+24;y,CenterY()-126+30;zoom,0.7;horizalign,left;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Line1=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENTS:";
			BeginCommand=cmd(x,Left()+24;y,CenterY()-126+30*2;zoom,0.7;horizalign,left;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Line2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="GREATS:";
			BeginCommand=cmd(x,Left()+24;y,CenterY()-126+30*3;zoom,0.7;horizalign,left;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Line3=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENTS:";
			BeginCommand=cmd(x,Left()+24;y,CenterY()-126+30*4;zoom,0.7;horizalign,left;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Line4=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="WAY OFFS:";
			BeginCommand=cmd(x,Left()+24;y,CenterY()-126+30*5;zoom,0.7;horizalign,left;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Line5=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="MISSES:";
			BeginCommand=cmd(x,Left()+24;y,CenterY()-126+30*6;zoom,0.7;horizalign,left;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP1Line6=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Left()+278;y,CenterY()-126+30;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[1]));
			InitCommand=function(self)
				AccumStatsP1Value1=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[1])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_1,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Left()+278;y,CenterY()-126+30*2;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[2]));
			InitCommand=function(self)
				AccumStatsP1Value2=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[2])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_1,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Left()+278;y,CenterY()-126+30*3;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[3]));
			InitCommand=function(self)
				AccumStatsP1Value3=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[3])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_1,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Left()+278;y,CenterY()-126+30*4;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[4]));
			InitCommand=function(self)
				AccumStatsP1Value4=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[4])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_1,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Left()+278;y,CenterY()-126+30*5;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[5]));
			InitCommand=function(self)
				AccumStatsP1Value5=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[5])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_1,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Left()+278;y,CenterY()-126+30*6;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[6]));
			InitCommand=function(self)
				AccumStatsP1Value6=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[6])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_1,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
	}
end

return t