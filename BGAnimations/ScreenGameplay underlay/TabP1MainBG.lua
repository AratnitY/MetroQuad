local StatsP1 = GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsStatsVisible(PLAYER_1) and GAMESTATE:GetNumPlayersEnabled() == 1 and not GAMESTATE:IsDemonstration()
local TabP1Page1, TabP1Page2, TabP1Page3, TabP1Page4, TabP1Page5, TabP1Page6

local function TabPlayer1BG(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		TabP1Page1:diffusealpha(0.7)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.3)
		TabP1Page4:diffusealpha(0.3)
		TabP1Page5:diffusealpha(0.3)
		TabP1Page6:diffusealpha(0.3)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.7)
		TabP1Page3:diffusealpha(0.3)
		TabP1Page4:diffusealpha(0.3)
		TabP1Page5:diffusealpha(0.3)
		TabP1Page6:diffusealpha(0.3)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.7)
		TabP1Page4:diffusealpha(0.3)
		TabP1Page5:diffusealpha(0.3)
		TabP1Page6:diffusealpha(0.3)
	elseif event.DeviceInput.button == "DeviceButton_4" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.3)
		TabP1Page4:diffusealpha(0.7)
		TabP1Page5:diffusealpha(0.3)
		TabP1Page6:diffusealpha(0.3)
	elseif event.DeviceInput.button == "DeviceButton_5" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.3)
		TabP1Page4:diffusealpha(0.3)
		TabP1Page5:diffusealpha(0.7)
		TabP1Page6:diffusealpha(0.3)
	elseif event.DeviceInput.button == "DeviceButton_6" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.3)
		TabP1Page4:diffusealpha(0.3)
		TabP1Page5:diffusealpha(0.3)
		TabP1Page6:diffusealpha(0.7)
	end
end

local t = Def.ActorFrame{
	BeginCommand=cmd(x,2;draworder,999;visible,StatsP1);
	-- Background
	Def.Quad {
		InitCommand=cmd(x,Right()-24;y,CenterY();horizalign,right;zoomto,Width()/2,Width()/2-70;diffuse,color("#000000");diffusealpha,0.8);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab #1
	Def.Quad {
		BeginCommand=cmd(x,Right()-423;y,Top()+74;horizalign,right;zoomto,24,18;diffuse,color("#FFFFFF");diffusealpha,0.7);
		InitCommand=function(self)
				TabP1Page1=self
				self:diffusealpha(0.7)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabPlayer1BG) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab #2
	Def.Quad {
		BeginCommand=cmd(x,Right()-423+28;y,Top()+74;horizalign,right;zoomto,24,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
		InitCommand=function(self)
				TabP1Page2=self
				self:diffusealpha(0.3)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabPlayer1BG) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab #3
	Def.Quad {
		BeginCommand=cmd(x,Right()-423+28*2;y,Top()+74;horizalign,right;zoomto,24,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
		InitCommand=function(self)
				TabP1Page3=self
				self:diffusealpha(0.3)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabPlayer1BG) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab #4
	Def.Quad {
		BeginCommand=cmd(x,Right()-423+28*3;y,Top()+74;horizalign,right;zoomto,24,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
		InitCommand=function(self)
				TabP1Page4=self
				self:diffusealpha(0.3)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabPlayer1BG) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab #5
	Def.Quad {
		BeginCommand=cmd(x,Right()-423+28*4;y,Top()+74;horizalign,right;zoomto,24,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
		InitCommand=function(self)
				TabP1Page5=self
				self:diffusealpha(0.3)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabPlayer1BG) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab #6
	Def.Quad {
		BeginCommand=cmd(x,Right()-423+28*5;y,Top()+74;horizalign,right;zoomto,24,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
		InitCommand=function(self)
				TabP1Page6=self
				self:diffusealpha(0.3)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabPlayer1BG) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Tab Title
	Def.Quad {
		InitCommand=cmd(x,Right()-28;y,Top()+74;horizalign,right;zoomto,251,18;diffuse,color("#FFFFFF");diffusealpha,0.7);
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
};

t[#t+1] = LoadActor("Tabs/TabP1Page1BG");
t[#t+1] = LoadActor("Tabs/TabP1Page2BG");

return t;