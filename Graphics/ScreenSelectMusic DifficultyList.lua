return Def.ActorFrame {
	CurrentSongChangedMessageCommand=function(self)
		local song = GAMESTATE:GetCurrentSong(); 
		if song then
-- 			self:setaux(0);
			self:finishtweening();
			self:playcommand("TweenOn");
		elseif not song and self:GetZoomX() == 1 then
-- 			self:setaux(1);
			self:finishtweening();
			self:playcommand("TweenOff");
		end;
	end;

	Def.StepsDisplayList {
		Name="StepsDisplayListRow";

		CursorP1 = Def.ActorFrame {
			InitCommand=cmd(x,-128+16;player,PLAYER_1);
			PlayerJoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_1 then
					self:visible(true);
					(cmd(zoom,0;bounceend,0.3;zoom,1))(self);
				end;
			end;
			PlayerUnjoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_1 then
					self:visible(true);
					(cmd(bouncebegin,0.3;zoom,0))(self);
				end;
			end;

			Def.ActorFrame {
				Def.Quad {
					InitCommand=cmd(x,2;zoomto,10,14;diffuse,color("#000000");diffusealpha,0.3);
				};
				
				Def.Quad {
					InitCommand=cmd(x,2;zoomto,6,8;diffuse,color("#ff5454");diffusealpha,0.5);
					OnCommand=cmd(glowshift;effectcolor2,color("#df4949");diffusealpha,1;);
				};
			};
			
		};
		CursorP2 = Def.ActorFrame {
			InitCommand=cmd(x,128-16;player,PLAYER_2);
			PlayerJoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_2 then
					self:visible(true);
					(cmd(zoom,0;bounceend,0.3;zoom,1))(self);
				end;
			end;
			PlayerUnjoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_2 then
					self:visible(true);
					(cmd(bouncebegin,0.3;zoom,0))(self);
				end;
			end;
			
			Def.ActorFrame {
				Def.Quad {
					InitCommand=cmd(x,-2;zoomto,10,14;diffuse,color("#000000");diffusealpha,0.3);
				};
				
				Def.Quad {
					InitCommand=cmd(x,-2;zoomto,6,8;diffuse,color("#54a1ff");diffusealpha,0.5);
					OnCommand=cmd(glowshift;effectcolor2,color("#498cdf");diffusealpha,1;);
				};
				
			};
			
		};
		CursorP1Frame = Def.Actor{
			ChangeCommand=cmd(stoptweening;decelerate,0.125);
		};
		CursorP2Frame = Def.Actor{
			ChangeCommand=cmd(stoptweening;decelerate,0.125);
		};
	};
};