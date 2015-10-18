local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("LifeDifficulty","LifeDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("TimingDifficulty","TimingDifficulty");

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="SELECT PROFILE";
		InitCommand=cmd(x,SCREEN_LEFT+12;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;);
	};
};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_LEFT+16);
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,1);
	};
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48+4;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,1);
	};
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48+8;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,1);
	};
};

local function CreateNewProfile(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_space" then
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenOptionsManageProfilesTemporaly")
		SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
	end
end

t[#t+1] = Def.ActorFrame{
	LoadFont("Common Normal")..{
	Text="Next Screen: SELECT STYLE\nPress [SPACE] to go to Create a new Profile.";
		BeginCommand=cmd(xy,CenterX(),CenterY()+186;diffuse,color("#FFFFFF");shadowlength,1);
		InitCommand=function(self)
			self:zoom(0.4)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(CreateNewProfile) end,
	},
}

return t