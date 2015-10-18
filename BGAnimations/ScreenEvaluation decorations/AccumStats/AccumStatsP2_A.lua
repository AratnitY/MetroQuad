local t = Def.ActorFrame{};

local AccumStatsP2Label
local AccumSS = STATSMAN:GetAccumPlayedStageStats()
local pss = AccumSS:GetPlayerStageStats(PLAYER_2)

local AccumStatsP2Line1, AccumStatsP2Line2, AccumStatsP2Line3, AccumStatsP2Line4, AccumStatsP2Line5, AccumStatsP2Line6
local AccumStatsP2Value1, AccumStatsP2Value2, AccumStatsP2Value3, AccumStatsP2Value4, AccumStatsP2Value5, AccumStatsP2Value6

local function ResultsPage3(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		-- Acummulated P2 Stats Lines
		AccumStatsP2Label:visible(false)
		AccumStatsP2Line1:visible(false)
		AccumStatsP2Line2:visible(false)
		AccumStatsP2Line3:visible(false)
		AccumStatsP2Line4:visible(false)
		AccumStatsP2Line5:visible(false)
		AccumStatsP2Line6:visible(false)
		-- Acummulated P2 Stats Values
		AccumStatsP2Value1:visible(false)
		AccumStatsP2Value2:visible(false)
		AccumStatsP2Value3:visible(false)
		AccumStatsP2Value4:visible(false)
		AccumStatsP2Value5:visible(false)
		AccumStatsP2Value6:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_7" then
		-- Acummulated P2 Stats Lines
		AccumStatsP2Label:visible(false)
		AccumStatsP2Line1:visible(false)
		AccumStatsP2Line2:visible(false)
		AccumStatsP2Line3:visible(false)
		AccumStatsP2Line4:visible(false)
		AccumStatsP2Line5:visible(false)
		AccumStatsP2Line6:visible(false)
		-- Acummulated P2 Stats Values
		AccumStatsP2Value1:visible(false)
		AccumStatsP2Value2:visible(false)
		AccumStatsP2Value3:visible(false)
		AccumStatsP2Value4:visible(false)
		AccumStatsP2Value5:visible(false)
		AccumStatsP2Value6:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		-- Acummulated P2 Stats Lines
		AccumStatsP2Label:visible(true)
		AccumStatsP2Line1:visible(true)
		AccumStatsP2Line2:visible(true)
		AccumStatsP2Line3:visible(true)
		AccumStatsP2Line4:visible(true)
		AccumStatsP2Line5:visible(true)
		AccumStatsP2Line6:visible(true)
		-- Acummulated P2 Stats Values
		AccumStatsP2Value1:visible(true)
		AccumStatsP2Value2:visible(true)
		AccumStatsP2Value3:visible(true)
		AccumStatsP2Value4:visible(true)
		AccumStatsP2Value5:visible(true)
		AccumStatsP2Value6:visible(true)
	end
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
		LoadFont("Common Normal")..{
			Text="CURRENT SESSION TOTAL P2 STATS:";
			BeginCommand=cmd(x,Right()-32;y,CenterY()-132;zoom,0.6;horizalign,right;maxwidth,350);
			InitCommand=function(self)
				AccumStatsP2Label=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="FANTASTICS:";
			BeginCommand=cmd(x,Right()-272;y,CenterY()-126+30;zoom,0.7;horizalign,left;diffuse,color(jColors[1]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP2Line1=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="EXCELLENTS:";
			BeginCommand=cmd(x,Right()-272;y,CenterY()-126+30*2;zoom,0.7;horizalign,left;diffuse,color(jColors[2]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP2Line2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="GREATS:";
			BeginCommand=cmd(x,Right()-272;y,CenterY()-126+30*3;zoom,0.7;horizalign,left;diffuse,color(jColors[3]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP2Line3=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="DECENTS:";
			BeginCommand=cmd(x,Right()-272;y,CenterY()-126+30*4;zoom,0.7;horizalign,left;diffuse,color(jColors[4]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP2Line4=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="WAY OFFS:";
			BeginCommand=cmd(x,Right()-272;y,CenterY()-126+30*5;zoom,0.7;horizalign,left;diffuse,color(jColors[5]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP2Line5=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			Text="MISSES:";
			BeginCommand=cmd(x,Right()-272;y,CenterY()-126+30*6;zoom,0.7;horizalign,left;diffuse,color(jColors[6]);shadowlength,1);
			InitCommand=function(self)
				AccumStatsP2Line6=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Right()-18;y,CenterY()-126+30;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[1]));
			InitCommand=function(self)
				AccumStatsP2Value1=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[1])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_2,9); Diffuse = ColorDarkTone(color(jColors[1])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Right()-18;y,CenterY()-126+30*2;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[2]));
			InitCommand=function(self)
				AccumStatsP2Value2=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[2])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_2,8); Diffuse = ColorDarkTone(color(jColors[2])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Right()-18;y,CenterY()-126+30*3;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[3]));
			InitCommand=function(self)
				AccumStatsP2Value3=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[3])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_2,7); Diffuse = ColorDarkTone(color(jColors[3])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Right()-18;y,CenterY()-126+30*4;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[4]));
			InitCommand=function(self)
				AccumStatsP2Value4=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[4])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_2,6); Diffuse = ColorDarkTone(color(jColors[4])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Right()-18;y,CenterY()-126+30*5;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[5]));
			InitCommand=function(self)
				AccumStatsP2Value5=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[5])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_2,5); Diffuse = ColorDarkTone(color(jColors[5])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
		LoadFont("Common Normal")..{
			BeginCommand=cmd(x,Right()-18;y,CenterY()-126+30*6;zoom,0.7;horizalign,right;shadowlength,1;diffuse,color(jColors[6]));
			InitCommand=function(self)
				AccumStatsP2Value6=self
				self:visible(false)
				self:settext(string.format("%05.f", pss:GetTapNoteScores(gNoteScores.tNoteScore[6])):gsub(""," "))
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForAccumStats(PLAYER_2,4); Diffuse = ColorDarkTone(color(jColors[6])) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
		},
	}
end

return t