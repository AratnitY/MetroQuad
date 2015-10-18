local iPN = ...;
assert(iPN,"[Graphics/PaneDisplay text.lua] No PlayerNumber Provided.");

local t = Def.ActorFrame {};
local function GetRadarData( pnPlayer, rcRadarCategory )
	local tRadarValues;
	local StepsOrTrail;
	local fDesiredValue = 0;
	if GAMESTATE:GetCurrentSteps( pnPlayer ) then
		StepsOrTrail = GAMESTATE:GetCurrentSteps( pnPlayer );
		fDesiredValue = StepsOrTrail:GetRadarValues( pnPlayer ):GetValue( rcRadarCategory );
	elseif GAMESTATE:GetCurrentTrail( pnPlayer ) then
		StepsOrTrail = GAMESTATE:GetCurrentTrail( pnPlayer );
		fDesiredValue = StepsOrTrail:GetRadarValues( pnPlayer ):GetValue( rcRadarCategory );
	else
		StepsOrTrail = nil;
	end;
	return fDesiredValue;
end;

local function CreatePaneDisplayItem( _pnPlayer, _sLabel, _rcRadarCategory )
	return Def.ActorFrame {
		LoadFont("Common Normal") .. {
			Text=string.upper( THEME:GetString("PaneDisplay",_sLabel) );
			InitCommand=cmd(horizalign,left);
			OnCommand=cmd(zoom,0.3;diffuse,color("0.9,0.9,0.9");shadowlength,1);
		};
		LoadFont("Common Normal") .. {
			Text="000";
			InitCommand=cmd(x,22+8+8;horizalign,left;diffuse,color("#FFFFFF"));
			OnCommand=cmd(zoom,0.3;shadowlength,1);
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong()
				local course = GAMESTATE:GetCurrentCourse()
				if not song and not course then
					self:settext("0000")
				else
					self:settextf("%04i", GetRadarData( _pnPlayer, _rcRadarCategory ) );
				end
			end;
		};
	};
end;

--[[ Numbers ]]
t[#t+1] = Def.ActorFrame {
	-- Left 
	CreatePaneDisplayItem( iPN, "Taps", 'RadarCategory_TapsAndHolds' ) .. {
		InitCommand=cmd(x,-128+16+8;y,-14);
	};
	CreatePaneDisplayItem( iPN, "Jumps", 'RadarCategory_Jumps' ) .. {
		InitCommand=cmd(x,-128+16+8;y,-14+16);
	};
	CreatePaneDisplayItem( iPN, "Holds", 'RadarCategory_Holds' ) .. {
		InitCommand=cmd(x,-128+16+8;y,-14+16*2);
	};
	CreatePaneDisplayItem( iPN, "Mines", 'RadarCategory_Mines' ) .. {
		InitCommand=cmd(x,-128+16+8;y,-14+16*3);
	};
	-- Center
	CreatePaneDisplayItem( iPN, "Hands", 'RadarCategory_Hands' ) .. {
		InitCommand=cmd(x,-128+16+8+74;y,-14);
	};
	CreatePaneDisplayItem( iPN, "Rolls", 'RadarCategory_Rolls' ) .. {
		InitCommand=cmd(x,-128+16+8+74;y,-14+16);
	};
	CreatePaneDisplayItem( iPN, "Lifts", 'RadarCategory_Lifts' ) .. {
		InitCommand=cmd(x,-128+16+8+74;y,-14+16*2);
	};
	CreatePaneDisplayItem( iPN, "Fakes", 'RadarCategory_Fakes' ) .. {
		InitCommand=cmd(x,-128+16+8+74;y,-14+16*3);
	};

};
return t;