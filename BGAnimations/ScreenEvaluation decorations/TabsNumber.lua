local t = Def.ActorFrame{};

local Tab1Color_P1, Tab2Color_P1, Tab3Color_P1
local Tab1Alpha_P1, Tab2Alpha_P1, Tab3Alpha_P1
local Tab1Color_P2, Tab2Color_P2, Tab3Color_P2
local Tab1Alpha_P2, Tab2Alpha_P2, Tab3Alpha_P2

local function TabsP1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		Tab1Color_P1:diffuse( color( LightBaseColor() ) )
		Tab2Color_P1:diffuse( color("#FFFFFF") )
		Tab3Color_P1:diffuse( color("#FFFFFF") )
		Tab1Alpha_P1:diffusealpha(1)
		Tab2Alpha_P1:diffusealpha(0.5)
		Tab3Alpha_P1:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		Tab1Color_P1:diffuse( color("#FFFFFF") )
		Tab2Color_P1:diffuse( color( LightBaseColor() ) )
		Tab3Color_P1:diffuse( color("#FFFFFF") )
		Tab1Alpha_P1:diffusealpha(0.5)
		Tab2Alpha_P1:diffusealpha(1)
		Tab3Alpha_P1:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_3" then
		Tab1Color_P1:diffuse( color("#FFFFFF") )
		Tab2Color_P1:diffuse( color("#FFFFFF") )
		Tab3Color_P1:diffuse( color( LightBaseColor() ) )
		Tab1Alpha_P1:diffusealpha(0.5)
		Tab2Alpha_P1:diffusealpha(0.5)
		Tab3Alpha_P1:diffusealpha(1)
	end
end

local function TabsP2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		Tab1Color_P2:diffuse( color( LightBaseColor() ) )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab1Alpha_P2:diffusealpha(1)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_7" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color( LightBaseColor() ) )
		Tab3Color_P2:diffuse( color("#FFFFFF") )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(1)
		Tab3Alpha_P2:diffusealpha(0.5)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		Tab1Color_P2:diffuse( color("#FFFFFF") )
		Tab2Color_P2:diffuse( color("#FFFFFF") )
		Tab3Color_P2:diffuse( color( LightBaseColor() ) )
		Tab1Alpha_P2:diffusealpha(0.5)
		Tab2Alpha_P2:diffusealpha(0.5)
		Tab3Alpha_P2:diffusealpha(1)
	end
end

if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
		LoadFont("Common Normal")..{
			Text="1";
			BeginCommand=cmd(x,Left()+22;y,CenterY()-163;zoom,0.5;diffuse,color( LightBaseColor() ));
			InitCommand=function(self)
				Tab1Color_P1=self
				Tab1Alpha_P1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP1) end,
		},
		
		LoadFont("Common Normal")..{
			Text="2";
			BeginCommand=cmd(x,Left()+22+26;y,CenterY()-163;zoom,0.5;diffusealpha,0.5);
			InitCommand=function(self)
				Tab2Color_P1=self
				Tab2Alpha_P1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP1) end,
		},
		
		LoadFont("Common Normal")..{
			Text="3";
			BeginCommand=cmd(x,Left()+22+26*2;y,CenterY()-163;zoom,0.5;diffusealpha,0.5);
			InitCommand=function(self)
				Tab3Color_P1=self
				Tab3Alpha_P1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP1) end,
		},
	}
end

if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
		
		LoadFont("Common Normal")..{
			Text="6";
			BeginCommand=cmd(x,Right()-274;y,CenterY()-163;zoom,0.5;diffuse,color( LightBaseColor() ));
			InitCommand=function(self)
				Tab1Color_P2=self
				Tab1Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2) end,
		},
		
		LoadFont("Common Normal")..{
			Text="7";
			BeginCommand=cmd(x,Right()-274+26;y,CenterY()-163;zoom,0.5;diffusealpha,0.5);
			InitCommand=function(self)
				Tab2Color_P2=self
				Tab2Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2) end,
		},
		
		LoadFont("Common Normal")..{
			Text="8";
			BeginCommand=cmd(x,Right()-274+26*2;y,CenterY()-163;zoom,0.5;diffusealpha,0.5);
			InitCommand=function(self)
				Tab3Color_P2=self
				Tab3Alpha_P2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabsP2) end,
		},
	}
end

return t