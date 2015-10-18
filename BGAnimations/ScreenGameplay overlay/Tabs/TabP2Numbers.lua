local t = Def.ActorFrame{};
local StatsP2 = GAMESTATE:IsPlayerEnabled(PLAYER_2) and IsStatsVisible(PLAYER_2) and GAMESTATE:GetNumPlayersEnabled() == 1 and not GAMESTATE:IsDemonstration()

local Tab1Color_P2, Tab2Color_P2, Tab3Color_P2, Tab4Color_P2, Tab5Color_P2, Tab6Color_P2
local Tab1Alpha_P2, Tab2Alpha_P2, Tab3Alpha_P2, Tab4Alpha_P2, Tab5Alpha_P2, Tab6Alpha_P2

local function TabsP2Numbers(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		Tab1Color_P2:diffuse( color( LightColorForScore() ) )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab4Color_P2:diffuse( color("#FFFFFF") )
		Tab5Color_P2:diffuse( color("#FFFFFF") )
		Tab6Color_P2:diffuse( color("#FFFFFF") )
		Tab1Alpha_P2:diffusealpha(1)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(0.5)
		Tab4Alpha_P2:diffusealpha(0.5)
		Tab5Alpha_P2:diffusealpha(0.5)
		Tab6Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color( LightColorForScore() ) )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab4Color_P2:diffuse( color("#FFFFFF") )
		Tab5Color_P2:diffuse( color("#FFFFFF") )
		Tab6Color_P2:diffuse( color("#FFFFFF") )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(1)
		Tab3Alpha_P2:diffusealpha(0.5)
		Tab4Alpha_P2:diffusealpha(0.5)
		Tab5Alpha_P2:diffusealpha(0.5)
		Tab6Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color( LightColorForScore() ) )
		Tab4Color_P2:diffuse( color("#FFFFFF") )
		Tab5Color_P2:diffuse( color("#FFFFFF") )
		Tab6Color_P2:diffuse( color("#FFFFFF") )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(1)
		Tab4Alpha_P2:diffusealpha(0.5)
		Tab5Alpha_P2:diffusealpha(0.5)
		Tab6Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_4" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab4Color_P2:diffuse( color( LightColorForScore() ) )
		Tab5Color_P2:diffuse( color( "#FFFFFF" ) )
		Tab6Color_P2:diffuse( color( "#FFFFFF" ) )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(0.5)
		Tab4Alpha_P2:diffusealpha(1)
		Tab5Alpha_P2:diffusealpha(0.5)
		Tab6Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_5" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab4Color_P2:diffuse( color("#FFFFFF") )
		Tab5Color_P2:diffuse( color( LightColorForScore() ) )
		Tab6Color_P2:diffuse( color( "#FFFFFF" ) )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(0.5)
		Tab4Alpha_P2:diffusealpha(0.5)
		Tab5Alpha_P2:diffusealpha(1)
		Tab6Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_6" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab4Color_P2:diffuse( color("#FFFFFF") )
		Tab5Color_P2:diffuse( color("#FFFFFF") )
		Tab6Color_P2:diffuse( color( LightColorForScore() ) )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(0.5)
		Tab4Alpha_P2:diffusealpha(0.5)
		Tab5Alpha_P2:diffusealpha(0.5)
		Tab6Alpha_P2:diffusealpha(1)
	end
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(x,-388;visible,StatsP2);
		LoadFont("Common Normal")..{
			Text="1";
			BeginCommand=cmd(x,Right()-423;y,Top()+74;zoom,0.5;horizalign,right;diffuse,color(LightColorForScore());diffusealpha,1;shadowlength,1);
			InitCommand=function(self)
				Tab1Color_P2=self
				Tab1Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2Numbers) end,
		},
		LoadFont("Common Normal")..{
			Text="2";
			BeginCommand=cmd(x,Right()-423+28;y,Top()+74;zoom,0.5;horizalign,right;diffuse,color("#FFFFFF");diffusealpha,0.5;shadowlength,1);
			InitCommand=function(self)
				Tab2Color_P2=self
				Tab2Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2Numbers) end,
		},
		LoadFont("Common Normal")..{
			Text="3";
			BeginCommand=cmd(x,Right()-423+28*2;y,Top()+74;zoom,0.5;horizalign,right;diffuse,color("#FFFFFF");diffusealpha,0.5;shadowlength,1);
			InitCommand=function(self)
				Tab3Color_P2=self
				Tab3Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2Numbers) end,
		},
		LoadFont("Common Normal")..{
			Text="4";
			BeginCommand=cmd(x,Right()-423+28*3;y,Top()+74;zoom,0.5;horizalign,right;diffuse,color("#FFFFFF");diffusealpha,0.5;shadowlength,1);
			InitCommand=function(self)
				Tab4Color_P2=self
				Tab4Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2Numbers) end,
		},
		LoadFont("Common Normal")..{
			Text="5";
			BeginCommand=cmd(x,Right()-423+28*4;y,Top()+74;zoom,0.5;horizalign,right;diffuse,color("#FFFFFF");diffusealpha,0.5;shadowlength,1);
			InitCommand=function(self)
				Tab5Color_P2=self
				Tab5Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2Numbers) end,
		},
		LoadFont("Common Normal")..{
			Text="6";
			BeginCommand=cmd(x,Right()-423+28*5;y,Top()+74;zoom,0.5;horizalign,right;diffuse,color("#FFFFFF");diffusealpha,0.5;shadowlength,1);
			InitCommand=function(self)
				Tab6Color_P2=self
				Tab6Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2Numbers) end,
		},
	}
end

return t