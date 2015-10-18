function GetLocalProfiles()
	local ret = {};

	for p = 0,PROFILEMAN:GetNumLocalProfiles()-1 do
		local profile=PROFILEMAN:GetLocalProfileFromIndex(p);
		local item = Def.ActorFrame {
		
			LoadFont("Common Normal") .. {
				Text="Profile: "..profile:GetDisplayName();
				InitCommand=cmd(diffuse,color("#FF0000");shadowlength,1;y,-136;x,-185;zoom,0.5;halign,0);
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local numSongsPlayed = profile:GetNumTotalSongsPlayed();
					self:settext("Total Songs Played: "..commify(numSongsPlayed,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*2;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalCaloriesBurned();
					self:settext("Burned Calories: "..s);
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*3;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalGameplaySeconds();
					self:settext("Total Gameplay: "..SecondsToHHMMSS(s).." seconds");
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*5;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalTapsAndHolds();
					self:settext("Total Taps & Holds: "..commify(s,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*6;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalHolds();
					self:settext("Total Holds: "..commify(s,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*7;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalJumps();
					self:settext("Total Jumps: "..commify(s,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*8;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalHands();
					self:settext("Total Hands: "..commify(s,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*9;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalMines();
					self:settext("Total Mines: "..commify(s,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*10;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetTotalRolls();
					self:settext("Total Rolls: "..commify(s,","));
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*12;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetLastPlayedSong()
					
					if s == nil then
						s = "---"
					else
						s = s:GetDisplayFullTitle()
					end
					
					self:settext("Last Song Played: "..s);
					self:maxwidth(1030)
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*13;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetLastPlayedSong();
					
					if s == nil then
						s = "---"
					else
						s = s:GetGroupName()
					end
					
					self:settext("Last Song Group: "..s);
				end;
			};
			
			LoadFont("Common Normal") .. {
				InitCommand=cmd(shadowlength,1;y,-135+18*14;x,-185;zoom,0.35;halign,0);
				BeginCommand=function(self)
					local s = profile:GetNumToasties();
					self:settext("Total Toasties: "..commify(s,","));
				end;
			};
			
		};
		table.insert( ret, item );
		
	end;

	return ret;
end;

function LoadCard()
	local t = Def.ActorFrame {
		
		Def.Quad {
			BeginCommand=cmd(zoomto,398,300);
			InitCommand=cmd(diffuse,color("#000000");diffusealpha,0.5);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-135;zoomto,390,16);
			InitCommand=cmd(diffuse,color( LightBaseColor() );diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*2;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*3;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*4;zoomto,390,12);
			InitCommand=cmd(diffuse,color( LightBaseColor() );diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*5;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*6;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*7;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*8;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*9;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*10;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*11;zoomto,390,12);
			InitCommand=cmd(diffuse,color( LightBaseColor() );diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*12;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*13;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*14;zoomto,390,12);
			InitCommand=cmd(diffuse,color(ThemePrefs.Get("MQBaseColor"));diffusealpha,0.8);
		};
		
		Def.Quad {
			BeginCommand=cmd(y,-134+18*15;zoomto,390,12);
			InitCommand=cmd(diffuse,color( LightBaseColor() );diffusealpha,0.8);
		};
	};
	
	return t
end

function LoadPlayerStuff(Player)
	local ret = {};

	local pn = (Player == PLAYER_1) and 1 or 2;

	local t = Def.ActorFrame {
		Name = 'JoinFrame';
		LoadCard(Color('White'));

		LoadFont("Common Normal") .. {
			Text=THEME:GetString("ScreenSelectProfile","PressStart");
			InitCommand=cmd(shadowlength,1);
			OnCommand=cmd(diffuseshift;effectcolor1,Color('White');effectcolor2,color("0.5,0.5,0.5"));
		};
	};
	table.insert( ret, t );
	
	t = Def.ActorFrame {
		Name = 'BigFrame';
		LoadCard(PlayerColor(Player));
	};
	table.insert( ret, t );

	t = Def.ActorFrame {
		Name = 'SmallFrame';

		InitCommand=cmd(y,-2);
		Def.Quad {
			InitCommand=cmd(zoomto,200-10,40+2);
			OnCommand=cmd(diffuse,Color('Black');diffusealpha,0.8);
		};
		Def.Quad {
			InitCommand=cmd(zoomto,200-10,40);
			OnCommand=cmd(diffuse,PlayerColor(Player);fadeleft,0.25;faderight,0.25;glow,color("1,1,1,0.25"));
		};
		Def.Quad {
			InitCommand=cmd(zoomto,200-10,40;y,-40/2+20);
			OnCommand=cmd(diffuse,Color("Black");fadebottom,1;diffusealpha,0.35);
		};
		Def.Quad {
			InitCommand=cmd(zoomto,200-10,1;y,-40/2+1);
			OnCommand=cmd(diffuse,PlayerColor(Player);glow,color("1,1,1,0.25"));
		};	
	};
	table.insert( ret, t );

	t = Def.ActorScroller{
		Name = 'ProfileScroller';
		NumItemsToDraw=1;
		OnCommand=cmd(y,1;SetSecondsPerItem,0.01);
		TransformFunction=function(self, offset, itemIndex, numItems)
			local focus = scale(math.abs(offset),0,2,1,0);
			self:visible(false);
			self:y(math.floor( offset*10 ));

		end;
		children = GetLocalProfiles();
	};
	table.insert( ret, t );
	
	t = Def.ActorFrame {
		Name = "EffectFrame";
	};
	table.insert( ret, t );

	t = LoadFont("Common Normal") .. {
		Name = 'SelectedProfileText';
		InitCommand=cmd(y,160;shadowlength,1;);
	};
	table.insert( ret, t );

	return ret;
end;

function UpdateInternal3(self, Player)
	local pn = (Player == PLAYER_1) and 1 or 2;
	local frame = self:GetChild(string.format('P%uFrame', pn));
	local scroller = frame:GetChild('ProfileScroller');
	local seltext = frame:GetChild('SelectedProfileText');
	local joinframe = frame:GetChild('JoinFrame');
	local smallframe = frame:GetChild('SmallFrame');
	local bigframe = frame:GetChild('BigFrame');

	if GAMESTATE:IsHumanPlayer(Player) then
		frame:visible(true);
		if MEMCARDMAN:GetCardState(Player) == 'MemoryCardState_none' then
			--using profile if any
			joinframe:visible(false);
			smallframe:visible(false);
			bigframe:visible(true);
			seltext:visible(false);
			scroller:visible(true);
			local ind = SCREENMAN:GetTopScreen():GetProfileIndex(Player);
			if ind > 0 then
				scroller:SetDestinationItem(ind-1);
				seltext:settext(PROFILEMAN:GetLocalProfileFromIndex(ind-1):GetDisplayName());
			else
				if SCREENMAN:GetTopScreen():SetProfileIndex(Player, 1) then
					scroller:SetDestinationItem(0);
					self:queuecommand('UpdateInternal2');
				else
					joinframe:visible(true);
					smallframe:visible(false);
					bigframe:visible(false);
					scroller:visible(false);
					seltext:settext('No profile');
				end;
			end;
		else
			--using card
			smallframe:visible(false);
			scroller:visible(false);
			seltext:settext('CARD');
			SCREENMAN:GetTopScreen():SetProfileIndex(Player, 0);
		end;
	else
		joinframe:visible(true);
		scroller:visible(false);
		seltext:visible(false);
		smallframe:visible(false);
		bigframe:visible(false);
	end;
end;

local t = Def.ActorFrame {

	StorageDevicesChangedMessageCommand=function(self, params)
		self:queuecommand('UpdateInternal2');
	end;

	CodeMessageCommand = function(self, params)
		if params.Name == 'Start' or params.Name == 'Center' then
			MESSAGEMAN:Broadcast("StartButton");
			if not GAMESTATE:IsHumanPlayer(params.PlayerNumber) then
				SCREENMAN:GetTopScreen():SetProfileIndex(params.PlayerNumber, -1);
			else
				SCREENMAN:GetTopScreen():Finish();
			end;
		end;
		if params.Name == 'Up' or params.Name == 'Up2' or params.Name == 'DownLeft' then
			if GAMESTATE:IsHumanPlayer(params.PlayerNumber) then
				local ind = SCREENMAN:GetTopScreen():GetProfileIndex(params.PlayerNumber);
				if ind > 1 then
					if SCREENMAN:GetTopScreen():SetProfileIndex(params.PlayerNumber, ind - 1 ) then
						MESSAGEMAN:Broadcast("DirectionButton");
						self:queuecommand('UpdateInternal2');
					end;
				end;
			end;
		end;
		if params.Name == 'Down' or params.Name == 'Down2' or params.Name == 'DownRight' then
			if GAMESTATE:IsHumanPlayer(params.PlayerNumber) then
				local ind = SCREENMAN:GetTopScreen():GetProfileIndex(params.PlayerNumber);
				if ind > 0 then
					if SCREENMAN:GetTopScreen():SetProfileIndex(params.PlayerNumber, ind + 1 ) then
						MESSAGEMAN:Broadcast("DirectionButton");
						self:queuecommand('UpdateInternal2');
					end;
				end;
			end;
		end;
		if params.Name == 'Back' then
			if GAMESTATE:GetNumPlayersEnabled()==0 then
				SCREENMAN:GetTopScreen():Cancel();
			else
				MESSAGEMAN:Broadcast("BackButton");
				SCREENMAN:GetTopScreen():SetProfileIndex(params.PlayerNumber, -2);
			end;
		end;
	end;

	PlayerJoinedMessageCommand=function(self, params)
		self:queuecommand('UpdateInternal2');
	end;

	PlayerUnjoinedMessageCommand=function(self, params)
		self:queuecommand('UpdateInternal2');
	end;

	OnCommand=function(self, params)
		self:queuecommand('UpdateInternal2');
	end;

	UpdateInternal2Command=function(self)
		UpdateInternal3(self, PLAYER_1);
		UpdateInternal3(self, PLAYER_2);
	end;

	children = {
		Def.ActorFrame {
			Name = 'P1Frame';
			InitCommand=cmd(x,SCREEN_CENTER_X-205;y,SCREEN_CENTER_Y-4);
			OnCommand=cmd(zoom,0;decelerate,0.3;zoom,1);
			OffCommand=cmd(bouncebegin,0.35;zoom,0);
			PlayerJoinedMessageCommand=function(self,param)
				if param.Player == PLAYER_1 then
					(cmd(;zoom,1.15;bounceend,0.175;zoom,1.0;))(self);
				end;
			end;
			children = LoadPlayerStuff(PLAYER_1);
		};
		Def.ActorFrame {
			Name = 'P2Frame';
			InitCommand=cmd(x,SCREEN_CENTER_X+205;y,SCREEN_CENTER_Y-4);
			OnCommand=cmd(zoom,0;decelerate,0.3;zoom,1);
			OffCommand=cmd(bouncebegin,0.35;zoom,0);
			PlayerJoinedMessageCommand=function(self,param)
				if param.Player == PLAYER_2 then
					(cmd(zoom,1.15;bounceend,0.175;zoom,1.0;))(self);
				end;
			end;
			children = LoadPlayerStuff(PLAYER_2);
		};
		-- sounds
		LoadActor( THEME:GetPathS("Common","Start") )..{
			StartButtonMessageCommand=cmd(play);
		};
		LoadActor( THEME:GetPathS("Common","Start") )..{
			BackButtonMessageCommand=cmd(play);
		};
		LoadActor( THEME:GetPathS("Common","Start") )..{
			DirectionButtonMessageCommand=cmd(play);
		};
	};
};

return t;