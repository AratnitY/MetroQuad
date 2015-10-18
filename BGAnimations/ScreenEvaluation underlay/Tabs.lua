local t = Def.ActorFrame{};

local TabP1Page1, TabP1Page2, TabP1Page3
local TabP2Page1, TabP2Page2, TabP2Page3
local TabP1Sound, TabP2Sound

local function ResultsPage1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		TabP1Page1:diffusealpha(0.7)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.3)
		TabP1Sound:play()
	elseif event.DeviceInput.button == "DeviceButton_2" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.7)
		TabP1Page3:diffusealpha(0.3)
		TabP1Sound:play()
	elseif event.DeviceInput.button == "DeviceButton_3" then
		TabP1Page1:diffusealpha(0.3)
		TabP1Page2:diffusealpha(0.3)
		TabP1Page3:diffusealpha(0.7)
		TabP1Sound:play()
	end
end

local function ResultsPage1_2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		TabP2Page1:diffusealpha(0.7)
		TabP2Page2:diffusealpha(0.3)
		TabP2Page3:diffusealpha(0.3)
		TabP2Sound:play()
	elseif event.DeviceInput.button == "DeviceButton_7" then
		TabP2Page1:diffusealpha(0.3)
		TabP2Page2:diffusealpha(0.7)
		TabP2Page3:diffusealpha(0.3)
		TabP2Sound:play()
	elseif event.DeviceInput.button == "DeviceButton_8" then
		TabP2Page1:diffusealpha(0.3)
		TabP2Page2:diffusealpha(0.3)
		TabP2Page3:diffusealpha(0.7)
		TabP2Sound:play()
	end
end

-------------------------------------------------------------------------------------------------------------------
-- P1
-------------------------------------------------------------------------------------------------------------------
if IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame{
		Def.Quad{
			BeginCommand=cmd(x,Left()+22;y,CenterY()-163;zoomto,22,18;diffuse,color("#FFFFFF");diffusealpha,0.7);
			InitCommand=function(self)
				TabP1Page1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		
		LoadActor(THEME:GetPathS("","_Tabs")) .. {
			InitCommand=function(self)
				TabP1Sound=self	
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		};
		
		Def.Quad{
			BeginCommand=cmd(x,Left()+22+26;y,CenterY()-163;zoomto,22,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
			InitCommand=function(self)
				TabP1Page2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
		
		Def.Quad{
			BeginCommand=cmd(x,Left()+22+26*2;y,CenterY()-163;zoomto,22,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
			InitCommand=function(self)
				TabP1Page3=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
		},
	}
end

-------------------------------------------------------------------------------------------------------------------
-- P2
-------------------------------------------------------------------------------------------------------------------
if IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame{
		
		Def.Quad{
			BeginCommand=cmd(x,Right()-274;y,CenterY()-163;zoomto,22,18;diffuse,color("#FFFFFF");diffusealpha,0.7);
			InitCommand=function(self)
				TabP2Page1=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		
		LoadActor(THEME:GetPathS("","_Tabs")) .. {
			InitCommand=function(self)
				TabP2Sound=self	
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		};
		
		Def.Quad{
			BeginCommand=cmd(x,Right()-274+26;y,CenterY()-163;zoomto,22,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
			InitCommand=function(self)
				TabP2Page2=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
		
		Def.Quad{
			BeginCommand=cmd(x,Right()-274+26*2;y,CenterY()-163;zoomto,22,18;diffuse,color("#FFFFFF");diffusealpha,0.3);
			InitCommand=function(self)
				TabP2Page3=self
				self:visible(true)
			end,
			OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1_2) end,
		},
	}
end

return t