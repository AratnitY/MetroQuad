local t = Def.ActorFrame{};
local StatsP1 = GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsStatsVisible(PLAYER_1) and GAMESTATE:GetNumPlayersEnabled() == 1 and not GAMESTATE:IsDemonstration()

local TabP1Title2
local SongTitle, SongTitleHeader, SongArtist, SongArtistHeader, SongGroup, SongGroupHeader, SongDir, SongDirHeader, SongBanner
local ChartTapsAndHoldsHeader, ChartTapsAndHolds, ChartJumpsHeader, ChartJumps, ChartHoldsHeader, ChartHolds, ChartMinesHeader, ChartMines
local ChartHandsHeader, ChartHands, ChartRollsHeader, ChartRolls, ChartLiftsHeader, ChartLifts, ChartFakesHeader, ChartFakes

local function TabP1Page1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		TabP1Title2:visible(false)
		SongTitle:visible(false)
		SongTitleHeader:visible(false)
		SongArtist:visible(false)
		SongArtistHeader:visible(false)
		SongGroup:visible(false)
		SongGroupHeader:visible(false)
		SongDir:visible(false)
		SongDirHeader:visible(false)
		SongBanner:visible(false)
		ChartTapsAndHoldsHeader:visible(false)
		ChartTapsAndHolds:visible(false)
		ChartJumpsHeader:visible(false)
		ChartJumps:visible(false)
		ChartHoldsHeader:visible(false)
		ChartHolds:visible(false)
		ChartMinesHeader:visible(false)
		ChartMines:visible(false)
		ChartHandsHeader:visible(false)
		ChartHands:visible(false)
		ChartRollsHeader:visible(false)
		ChartRolls:visible(false)
		ChartLiftsHeader:visible(false)
		ChartLifts:visible(false)
		ChartFakesHeader:visible(false)
		ChartFakes:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		TabP1Title2:visible(true)
		SongTitle:visible(true)
		SongTitleHeader:visible(true)
		SongArtist:visible(true)
		SongArtistHeader:visible(true)
		SongGroup:visible(true)
		SongGroupHeader:visible(true)
		SongDir:visible(true)
		SongDirHeader:visible(true)
		SongBanner:visible(true)
		ChartTapsAndHoldsHeader:visible(true)
		ChartTapsAndHolds:visible(true)
		ChartJumpsHeader:visible(true)
		ChartJumps:visible(true)
		ChartHoldsHeader:visible(true)
		ChartHolds:visible(true)
		ChartMinesHeader:visible(true)
		ChartMines:visible(true)
		ChartHandsHeader:visible(true)
		ChartHands:visible(true)
		ChartRollsHeader:visible(true)
		ChartRolls:visible(true)
		ChartLiftsHeader:visible(true)
		ChartLifts:visible(true)
		ChartFakesHeader:visible(true)
		ChartFakes:visible(true)
	end
end

-- Title
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP1);
		LoadFont("Common Normal")..{
			Text="SONG & CHART INFORMATION";
			BeginCommand=cmd(x,Right()-151;y,Top()+74;zoom,0.5;diffuse,color(LightColorForScore());shadowlength,1);
			InitCommand=function(self)
				TabP1Title2=self
				self:visible(false)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

-- Song Title / Artist / Group
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP1);
		LoadFont("Common Normal")..{
			Name="Song Name Header";
			BeginCommand=cmd(x,CenterX()-10;y,Top()+100;zoom,0.4;horizalign,left;diffuse,ColorDarkTone(White());shadowlength,1);
			InitCommand=function(self)
				SongTitleHeader=self
				self:visible(false)
				self:settext("SONG:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Name";
			BeginCommand=cmd(x,CenterX()+34;y,Top()+100;zoom,0.4;horizalign,left;shadowlength,1;maxwidth,894);
			InitCommand=function(self)
				SongTitle=self
				self:visible(false)
				local SongName = GetCurrentSong():GetDisplayMainTitle()
				local SongSub = GetCurrentSong():GetDisplaySubTitle()
				
				if SongSub == "" then
					SongSub = ""
				else
					SongSub = " (" .. GetCurrentSong():GetDisplaySubTitle() .. ")"
				end
				
				self:settext(SongName .. SongSub)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Arist Header";
			BeginCommand=cmd(x,CenterX()-10;y,Top()+100+16;zoom,0.4;horizalign,left;diffuse,ColorDarkTone(White());shadowlength,1);
			InitCommand=function(self)
				SongArtistHeader=self
				self:visible(false)
				self:settext("ARTIST:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Artist";
			BeginCommand=cmd(x,CenterX()+38;y,Top()+100+16;zoom,0.4;horizalign,left;shadowlength,1;maxwidth,890);
			InitCommand=function(self)
				SongArtist=self
				self:visible(false)
				local SongArtist = GetCurrentSong():GetDisplayArtist()
				self:settext(SongArtist)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Group Header";
			BeginCommand=cmd(x,CenterX()-10;y,Top()+100+16*2;zoom,0.4;horizalign,left;diffuse,ColorDarkTone(White());shadowlength,1);
			InitCommand=function(self)
				SongGroupHeader=self
				self:visible(false)
				self:settext("GROUP:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Group";
			BeginCommand=cmd(x,CenterX()+40;y,Top()+100+16*2;zoom,0.4;horizalign,left;shadowlength,1;maxwidth,888);
			InitCommand=function(self)
				SongGroup=self
				self:visible(false)
				local SongGroup = GetCurrentSong():GetGroupName()
				self:settext(SongGroup)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Dir Header";
			BeginCommand=cmd(x,CenterX()-10;y,Top()+100+16*3;zoom,0.4;horizalign,left;diffuse,ColorDarkTone(White());shadowlength,1);
			InitCommand=function(self)
				SongDirHeader=self
				self:visible(false)
				self:settext("LOCATION:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Song Dir Header";
			BeginCommand=cmd(x,CenterX()+60;y,Top()+100+16*3;zoom,0.4;horizalign,left;shadowlength,1;maxwidth,830);
			InitCommand=function(self)
				SongDir=self
				self:visible(false)
				local SongDir = GetCurrentSong():GetSongDir()
				self:settext(SongDir)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

-- Song Banner
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(visible,StatsP1);
		Def.Sprite{
			Name="Song Banner";
			BeginCommand=cmd(x,CenterX()-10;y,Top()+198;zoomto,200,72;horizalign,left);
			InitCommand=function(self)
				SongBanner=self
				self:visible(false)
				self:LoadFromSongBanner(GetCurrentSong())
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

-- Chart Information
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,-2;visible,StatsP1);
		-- Left Side
		LoadFont("Common Normal")..{
			Name="TapsAndHolds Header";
			BeginCommand=cmd(x,CenterX()+4;y,Top()+272;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartTapsAndHoldsHeader=self
				self:visible(false)
				self:settext("TAPS:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="TapsAndHolds";
			BeginCommand=cmd(x,CenterX()+180;y,Top()+272;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartTapsAndHolds=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(5)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,5); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Jumps Header";
			BeginCommand=cmd(x,CenterX()+4;y,Top()+272+40;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartJumpsHeader=self
				self:visible(false)
				self:settext("JUMPS:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Jumps";
			BeginCommand=cmd(x,CenterX()+180;y,Top()+272+40;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartJumps=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(6)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,6); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Holds Header";
			BeginCommand=cmd(x,CenterX()+4;y,Top()+272+40*2;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartHoldsHeader=self
				self:visible(false)
				self:settext("HOLDS:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Holds";
			BeginCommand=cmd(x,CenterX()+180;y,Top()+272+40*2;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartHolds=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(7)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,7); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Mines Header";
			BeginCommand=cmd(x,CenterX()+4;y,Top()+272+40*3;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartMinesHeader=self
				self:visible(false)
				self:settext("MINES:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Mines";
			BeginCommand=cmd(x,CenterX()+180;y,Top()+272+40*3;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartMines=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(8)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,8); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		-- Right Side
		LoadFont("Common Normal")..{
			Name="Hands Header";
			BeginCommand=cmd(x,CenterX()+206;y,Top()+272;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartHandsHeader=self
				self:visible(false)
				self:settext("HANDS:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Hands";
			BeginCommand=cmd(x,CenterX()+380;y,Top()+272;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartHands=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(9)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,9); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Rolls Header";
			BeginCommand=cmd(x,CenterX()+206;y,Top()+272+40;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartRollsHeader=self
				self:visible(false)
				self:settext("ROLLS:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Rolls";
			BeginCommand=cmd(x,CenterX()+380;y,Top()+272+40;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartRolls=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(10)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,10); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Lifts Header";
			BeginCommand=cmd(x,CenterX()+206;y,Top()+272+40*2;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartLiftsHeader=self
				self:visible(false)
				self:settext("LIFTS:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Lifts";
			BeginCommand=cmd(x,CenterX()+380;y,Top()+272+40*2;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartLifts=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(11)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,11); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Fakes Header";
			BeginCommand=cmd(x,CenterX()+206;y,Top()+272+40*3;zoom,0.8;horizalign,left;shadowlength,1);
			InitCommand=function(self)
				ChartFakesHeader=self
				self:visible(false)
				self:settext("FAKES:")
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
		LoadFont("Common Normal")..{
			Name="Fakes";
			BeginCommand=cmd(x,CenterX()+380;y,Top()+272+40*3;zoom,0.8;horizalign,right;shadowlength,1);
			InitCommand=function(self)
				ChartFakes=self
				self:visible(false)
				local v = GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue(12)
				self:settext(string.format("%05.0f", v))
				self:sleep(0.01)
				self:maxwidth(180)
				self:queuecommand("Update")
				self:AddAttribute( 0, { Length = LeadingToFiveZerosForRadarValue(PLAYER_1,12); Diffuse = ColorDarkTone(White()) } )
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		},
	}
end

return t