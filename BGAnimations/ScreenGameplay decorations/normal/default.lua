local t = Def.ActorFrame{
	BeginCommand=cmd(y,SCREEN_BOTTOM-23;draworder,999);
	Def.ActorFrame{
		InitCommand=cmd(CenterX);

		Def.SongMeterDisplay{
			InitCommand=cmd(SetStreamWidth,572;zoomy,1.4;y,3);
			Stream=LoadActor("meter stream")..{
				OnCommand=cmd(diffuse,color(LightBaseColor()));
			};
			Tip=LoadActor("tip")..{
				OnCommand=cmd(zoom,0;sleep,1.8;zoom,1;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,.5");effectclock,"beat";effectperiod,4;);
			};
		};
	};

	Def.ActorFrame{
		OnCommand=cmd();

		LoadFont("Common Normal")..{
			InitCommand=cmd(CenterX;y,2;maxwidth,950;diffusebottomedge,color("#dedede"));
			OnCommand=cmd(zoom,.5;shadowlength,2;zoomy,0;sleep,2;decelerate,0.3;zoomy,.45;animate,0;playcommand,"Update");
			CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
			UpdateCommand=function(self)
				local text = ""
				local song = GAMESTATE:GetCurrentSong()
				local course = GAMESTATE:GetCurrentCourse()
				if song then
					text = song:GetDisplayFullTitle()
				end
				if course then
					text = course:GetDisplayFullTitle() .. " - " .. text;
				end
				self:settext(text);
			end;
		};
	};

	-- difficulty
	Def.ActorFrame{
		OnCommand=cmd(draworder,1;sleep,0.5;queuecommand,"TweenOn");
		OffCommand=cmd(queuecommand,"Hide");
		ShowGameplayTopFrameMessageCommand=cmd(playcommand,"TweenOn");
		HideGameplayTopFrameMessageCommand=cmd(queuecommand,"Hide");
		HideCommand=function(self)
			--if AnyPlayerFullComboed() then self:sleep(3) end
			self:queuecommand('TweenOff')
		end;

		Def.ActorFrame{
			Name="Player1";
			OnCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-300;y,SCREEN_TOP+23;addx,-SCREEN_WIDTH/3);
			TweenOnCommand=cmd(sleep,1.5;decelerate,0.5;addx,SCREEN_WIDTH/3);
			TweenOffCommand=cmd(accelerate,0.8;addx,-SCREEN_WIDTH/3);

		};

		Def.ActorFrame{
			Name="Player2";
			OnCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+300;y,SCREEN_TOP+23;addx,SCREEN_WIDTH/3);
			TweenOnCommand=cmd(sleep,1.5;decelerate,0.5;addx,-SCREEN_WIDTH/3);
			TweenOffCommand=cmd(accelerate,0.8;addx,SCREEN_WIDTH/3);

		};
	};
};

return t;