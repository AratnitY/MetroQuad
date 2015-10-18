local t = Def.ActorFrame{};

local Song = GetCurrentSong()
local Best9Label, Best9Label_2
local BestRecordLabel1, BestRecordLabel2, BestRecordLabel3, BestRecordLabel4, BestRecordLabel5, BestRecordLabel6, BestRecordLabel7, BestRecordLabel8, BestRecordLabel9
local BestRecordLabel1_2, BestRecordLabel2_2, BestRecordLabel3_2, BestRecordLabel4_2, BestRecordLabel5_2, BestRecordLabel6_2, BestRecordLabel7_2, BestRecordLabel8_2, BestRecordLabel9_2
local P1Score1, P1Score2, P1Score3, P1Score4, P1Score5, P1Score6, P1Score7, P1Score8, P1Score9
local P2Score1, P2Score2, P2Score3, P2Score4, P2Score5, P2Score6, P2Score7, P2Score8, P2Score9

local function ResultsPage2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_2" then
		Best9Label:visible(true)
		BestRecordLabel1:visible(true)
		BestRecordLabel2:visible(true)
		BestRecordLabel3:visible(true)
		BestRecordLabel4:visible(true)
		BestRecordLabel5:visible(true)
		BestRecordLabel6:visible(true)
		BestRecordLabel7:visible(true)
		BestRecordLabel8:visible(true)
		BestRecordLabel9:visible(true)
		P1Score1:visible(true)
		P1Score2:visible(true)
		P1Score3:visible(true)
		P1Score4:visible(true)
		P1Score5:visible(true)
		P1Score6:visible(true)
		P1Score7:visible(true)
		P1Score8:visible(true)
		P1Score9:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_1" then
		Best9Label:visible(false)
		BestRecordLabel1:visible(false)
		BestRecordLabel2:visible(false)
		BestRecordLabel3:visible(false)
		BestRecordLabel4:visible(false)
		BestRecordLabel5:visible(false)
		BestRecordLabel6:visible(false)
		BestRecordLabel7:visible(false)
		BestRecordLabel8:visible(false)
		BestRecordLabel9:visible(false)
		P1Score1:visible(false)
		P1Score2:visible(false)
		P1Score3:visible(false)
		P1Score4:visible(false)
		P1Score5:visible(false)
		P1Score6:visible(false)
		P1Score7:visible(false)
		P1Score8:visible(false)
		P1Score9:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		Best9Label:visible(false)
		BestRecordLabel1:visible(false)
		BestRecordLabel2:visible(false)
		BestRecordLabel3:visible(false)
		BestRecordLabel4:visible(false)
		BestRecordLabel5:visible(false)
		BestRecordLabel6:visible(false)
		BestRecordLabel7:visible(false)
		BestRecordLabel8:visible(false)
		BestRecordLabel9:visible(false)
		P1Score1:visible(false)
		P1Score2:visible(false)
		P1Score3:visible(false)
		P1Score4:visible(false)
		P1Score5:visible(false)
		P1Score6:visible(false)
		P1Score7:visible(false)
		P1Score8:visible(false)
		P1Score9:visible(false)
	end
end

local function ResultsPage2_2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_7" then
		Best9Label_2:visible(true)
		BestRecordLabel1_2:visible(true)
		BestRecordLabel2_2:visible(true)
		BestRecordLabel3_2:visible(true)
		BestRecordLabel4_2:visible(true)
		BestRecordLabel5_2:visible(true)
		BestRecordLabel6_2:visible(true)
		BestRecordLabel7_2:visible(true)
		BestRecordLabel8_2:visible(true)
		BestRecordLabel9_2:visible(true)
		P2Score1:visible(true)
		P2Score2:visible(true)
		P2Score3:visible(true)
		P2Score4:visible(true)
		P2Score5:visible(true)
		P2Score6:visible(true)
		P2Score7:visible(true)
		P2Score8:visible(true)
		P2Score9:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_6" then
		Best9Label_2:visible(false)
		BestRecordLabel1_2:visible(false)
		BestRecordLabel2_2:visible(false)
		BestRecordLabel3_2:visible(false)
		BestRecordLabel4_2:visible(false)
		BestRecordLabel5_2:visible(false)
		BestRecordLabel6_2:visible(false)
		BestRecordLabel7_2:visible(false)
		BestRecordLabel8_2:visible(false)
		BestRecordLabel9_2:visible(false)
		P2Score1:visible(false)
		P2Score2:visible(false)
		P2Score3:visible(false)
		P2Score4:visible(false)
		P2Score5:visible(false)
		P2Score6:visible(false)
		P2Score7:visible(false)
		P2Score8:visible(false)
		P2Score9:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		Best9Label_2:visible(false)
		BestRecordLabel1_2:visible(false)
		BestRecordLabel2_2:visible(false)
		BestRecordLabel3_2:visible(false)
		BestRecordLabel4_2:visible(false)
		BestRecordLabel5_2:visible(false)
		BestRecordLabel6_2:visible(false)
		BestRecordLabel7_2:visible(false)
		BestRecordLabel8_2:visible(false)
		BestRecordLabel9_2:visible(false)
		P2Score1:visible(false)
		P2Score2:visible(false)
		P2Score3:visible(false)
		P2Score4:visible(false)
		P2Score5:visible(false)
		P2Score6:visible(false)
		P2Score7:visible(false)
		P2Score8:visible(false)
		P2Score9:visible(false)
	end
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,7);
		LoadFont("Common Normal")..{
			Text="TOP 9 BEST PERSONAL RECORDS:";
			BeginCommand=cmd(x,Left()+56;y,CenterY()-132;zoom,0.6;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				Best9Label=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #1";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel1=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #2";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*2;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #3";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*3;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel3=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #4";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*4;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel4=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #5";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*5;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel5=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #6";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*6;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel6=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #7";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*7;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel7=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #8";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*8;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel8=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #9";
			BeginCommand=cmd(x,Left()+32;y,CenterY()-126+20*9;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel9=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(y,8);
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score1=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 1) ) .. " / " .. GetSavedGrade(PLAYER_1, 1))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*2;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score2=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 2) ) .. " / " .. GetSavedGrade(PLAYER_1, 2))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*3;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score3=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 3) ) .. " / " .. GetSavedGrade(PLAYER_1, 3))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*4;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score4=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 4) ) .. " / " .. GetSavedGrade(PLAYER_1, 4))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*5;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score5=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 5) ) .. " / " .. GetSavedGrade(PLAYER_1, 5))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*6;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score6=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 6) ) .. " / " .. GetSavedGrade(PLAYER_1, 6))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*7;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score7=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 7) ) .. " / " .. GetSavedGrade(PLAYER_1, 7))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*8;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score8=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 8) ) .. " / " .. GetSavedGrade(PLAYER_1, 8))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Left()+186;y,CenterY()-127+20*9;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P1Score9=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_1, 9) ) .. " / " .. GetSavedGrade(PLAYER_1, 9))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
		},
	};
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,7);
		LoadFont("Common Normal")..{
			Text="TOP 9 BEST PERSONAL RECORDS:";
			BeginCommand=cmd(x,Right()-32;y,CenterY()-132;zoom,0.6;horizalign,right;maxwidth,350);
			InitCommand=function(self)
				Best9Label_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #1";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel1_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #2";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*2;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel2_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #3";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*3;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel3_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #4";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*4;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel4_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #5";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*5;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel5_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #6";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*6;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel6_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #7";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*7;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel7_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #8";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*8;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel8_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("Common Normal")..{
			Text="Personal Record #9";
			BeginCommand=cmd(x,CenterX()+162;y,CenterY()-126+20*9;zoom,0.4;horizalign,left;maxwidth,350);
			InitCommand=function(self)
				BestRecordLabel9_2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		BeginCommand=cmd(y,8);
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score1=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 1) ) .. " / " .. GetSavedGrade(PLAYER_2, 1))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*2;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score2=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 2) ) .. " / " .. GetSavedGrade(PLAYER_2, 2))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*3;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score3=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 3) ) .. " / " .. GetSavedGrade(PLAYER_2, 3))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*4;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score4=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 4) ) .. " / " .. GetSavedGrade(PLAYER_2, 4))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*5;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score5=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 5) ) .. " / " .. GetSavedGrade(PLAYER_2, 5))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*6;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score6=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 6) ) .. " / " .. GetSavedGrade(PLAYER_2, 6))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*7;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score7=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 7) ) .. " / " .. GetSavedGrade(PLAYER_2, 7))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*8;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score8=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 8) ) .. " / " .. GetSavedGrade(PLAYER_2, 8))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
		LoadFont("SquareFont")..{
			BeginCommand=cmd(x,Right()-110;y,CenterY()-127+20*9;zoom,0.4;shadowlength,1;horizalign,left;maxwidth,220);
			InitCommand=function(self)
				P2Score9=self
				self:visible(false)
				self:settext(FormatPercentScore( GetSavedScore(PLAYER_2, 9) ) .. " / " .. GetSavedGrade(PLAYER_2, 9))
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2_2) end,
		},
	};
end

return t