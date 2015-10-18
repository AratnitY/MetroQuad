local t = Def.ActorFrame{};

-- This Refresh the current screen to show some informations stats that requires the screen to be refreshed.
t[#t+1] = Def.Actor {
	PlayerJoinedMessageCommand=function(self, params)
		if params.Player == PLAYER_1 or PLAYER_2 then 
			self:playcommand("Load");
		end
	end,
	LoadCommand=function() local TopScreen = SCREENMAN:GetTopScreen() TopScreen:SetNextScreenName("ScreenSelectMusic") TopScreen:StartTransitioningScreen("SM_GoToNextScreen") end;
};

t[#t+1] = StandardDecorationFromFileOptional("LifeDifficulty","LifeDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("TimingDifficulty","TimingDifficulty");
t[#t+1] = LoadActor("Banner")..{ InitCommand=cmd(draworder,-1); }
t[#t+1] = LoadActor("Style")
t[#t+1] = LoadActor("BPMDisplayP1")..{ InitCommand=cmd(visible,IsPlayerEnabled(PLAYER_1)); };
t[#t+1] = LoadActor("BPMDisplayP2")..{ InitCommand=cmd(visible,IsPlayerEnabled(PLAYER_2)); };
t[#t+1] = LoadActor("Game")
t[#t+1] = LoadActor("LevelSystem")
t[#t+1] = LoadActor("CustomDiffListP1")..{ InitCommand=cmd(visible,IsPlayerEnabled(PLAYER_1)); };
t[#t+1] = LoadActor("CustomDiffListP2")..{ InitCommand=cmd(visible,IsPlayerEnabled(PLAYER_2)); };
t[#t+1] = LoadActor("DiffListP1")..{ InitCommand=cmd(xy,Left()+140+52,Top()+92;zoom,1;visible,IsPlayerEnabled(PLAYER_1)); };
t[#t+1] = LoadActor("DiffListP2")..{ InitCommand=cmd(xy,Right()-146,Top()+92;zoom,1;visible,IsPlayerEnabled(PLAYER_2)); };
t[#t+1] = LoadActor("Stats_P1")
t[#t+1] = LoadActor("Stats_P2")
t[#t+1] = LoadActor("SavedRC_P1")..{ InitCommand=cmd(xy,142,-116;zoom,0.95); };
t[#t+1] = LoadActor("SavedRC_P2")..{ InitCommand=cmd(xy,138*4+2,-116;zoom,0.95); };

t[#t+1] = Def.Quad {
	-- Song Artist/Subtitle Background
	BeginCommand=cmd(draworder,100);
	InitCommand=cmd(x,CenterX();y,Top()+149;zoomto,263,16;vertalign,top;diffuse,color("#000000");diffusealpha,0.8);
};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_LEFT+16);
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,0.7);
	};
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48+4;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,0.7);
	};
	Def.Quad {
		InitCommand=cmd(y,SCREEN_TOP+48+8;zoomto,10,2;diffuse,color("#ffffff");diffusealpha,0.7);
	};
};

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(draworder,105);
	LoadFont("Common Normal") .. {
		Text="ARTIST:";
		InitCommand=cmd(x,CenterX()-104;y,Top()+152;zoom,0.45;valign,0;diffuse,color("#A4A4A4"));
	};
};

t[#t+1] = Def.ActorFrame {
	-- P1
	BeginCommand=cmd(visible,IsPlayerEnabled(PLAYER_1));
	LoadFont("Common Normal") .. {
		Text="LENGTH:";
		InitCommand=cmd(x,Left()+12;y,Top()+120;zoom,0.5;align,0,0;diffuse,color("#A4A4A4"));
	};
	LoadFont("Common Normal") .. {
		Text="BPM:";
		InitCommand=cmd(x,Left()+156;y,Top()+120;zoom,0.5;align,0,0;diffuse,color("#A4A4A4"));
	};
	LoadFont("Common Normal") .. {
		Text="CHART INFORMATION";
		InitCommand=cmd(x,Left()+12;y,Top()+120+24;zoom,0.5;align,0,0;diffuse,color("#A4A4A4");maxwidth,264);
	};
	LoadFont("Common Normal") .. {
		Text="RECORD #1 CHART INFO";
		InitCommand=cmd(x,Left()+156;y,Top()+120+24;zoom,0.5;align,0,0;diffuse,color("#A4A4A4");maxwidth,260);
	};
	LoadFont("Common Normal") .. {
		Text="BEST P1";
		InitCommand=cmd(x,Left()+144;y,Bottom()-15;zoomx,0.5;zoomy,0.7;align,0,1);
	};
};

t[#t+1] = Def.ActorFrame {
	-- P2
	BeginCommand=cmd(visible,IsPlayerEnabled(PLAYER_2));
	LoadFont("Common Normal") .. {
		Text="LENGTH:";
		InitCommand=cmd(x,Right()-222;y,Top()+120;zoom,0.5;align,1,0;diffuse,color("#A4A4A4"));
	};
	LoadFont("Common Normal") .. {
		Text="BPM:";
		InitCommand=cmd(x,Right()-108;y,Top()+120;zoom,0.5;align,1,0;diffuse,color("#A4A4A4"));
	};
	LoadFont("Common Normal") .. {
		Text="CHART INFORMATION";
		InitCommand=cmd(x,Right()-156;y,Top()+120+24;zoom,0.5;align,1,0;diffuse,color("#A4A4A4");maxwidth,264);
	};
	LoadFont("Common Normal") .. {
		Text="RECORD #1 CHART INFO";
		InitCommand=cmd(x,Right()-14;y,Top()+120+24;zoom,0.5;align,1,0;diffuse,color("#A4A4A4");maxwidth,260);
	};
	LoadFont("Common Normal") .. {
		Text="BEST P2";
		InitCommand=cmd(x,Right()-228;y,Bottom()-15;zoomx,0.5;zoomy,0.7;align,1,1);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="SELECT MUSIC";
		InitCommand=cmd(x,SCREEN_LEFT+12;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;playcommand,"IsCourse");
		IsCourseCommand=function(self)
			local Screen = SCREENMAN:GetTopScreen():GetName()
			local Header
			
			if Screen == "ScreenSelectCourse" then
				Header = "SELECT COURSE"
			elseif Screen == "ScreenSelectMusic" then
				Header = "SELECT MUSIC"
			end
			
			self:settext(Header)
			
		end
	};
};

return t;