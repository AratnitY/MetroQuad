local StatsP1 = GAMESTATE:IsPlayerEnabled(PLAYER_1) and IsStatsVisible(PLAYER_1) and GAMESTATE:GetNumPlayersEnabled() == 1 and not GAMESTATE:IsDemonstration()
local TopBG, BottomBG

local function TabP1Page1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_1" then
		TopBG:visible(true)
		BottomBG:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_2" then
		TopBG:visible(false)
		BottomBG:visible(false)
	end
end

local t = Def.ActorFrame{
	BeginCommand=cmd(x,4;visible,StatsP1);
	-- Top Background
	Def.Quad {
		BeginCommand=cmd(x,Right()-32;y,Top()+88;horizalign,right;vertalign,top;zoomto,Width()/2-8,164;diffuse,color("#0B2F3A");diffusealpha,1);
		InitCommand=function(self)
			TopBG=self
			self:visible(true)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
	-- Bottom Background
	Def.Quad {
		BeginCommand=cmd(x,Right()-451;y,Top()+96+20*8;horizalign,left;vertalign,top;zoomto,418,158;diffuse,color("#0B2F3A");diffusealpha,1);
		InitCommand=function(self)
			BottomBG=self
			self:visible(true)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(TabP1Page1) end,
		OffCommand=cmd(diffusealpha,1;decelerate,3;diffusealpha,0);
	};
};

return t;