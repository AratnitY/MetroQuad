local t = Def.ActorFrame {};
local function GetEdits( in_Song, in_StepsType )
	if in_Song then
		local sSong = in_Song;
		local sCurrentStyle = GAMESTATE:GetCurrentStyle();
		local sStepsType = in_StepsType;
		local iNumEdits = 0;
		if sSong:HasEdits( sStepsType ) then
			local tAllSteps = sSong:GetAllSteps();
			for i,Step in pairs(tAllSteps) do
				if Step:IsAnEdit() and Step:GetStepsType() == sStepsType then
					iNumEdits = iNumEdits + 1;
				end
			end
			return iNumEdits;
		else
			return iNumEdits;
		end
	else
		return 0;
	end
end;

t[#t+1] = Def.ActorFrame { Def.Quad{ InitCommand=cmd( x,-140;halign,0;zoomto,32,32;diffuse,Purple();diffusealpha,0.5 ); } };
t[#t+1] = Def.ActorFrame { Def.Quad{ InitCommand=cmd( x,-140+32;halign,0;zoomto,32,32;diffuse,Green();diffusealpha,0.5 ); } };
t[#t+1] = Def.ActorFrame { Def.Quad{ InitCommand=cmd( x,-140+32*2;halign,0;zoomto,32,32;diffuse,Yellow();diffusealpha,0.5 ); } };
t[#t+1] = Def.ActorFrame { Def.Quad{ InitCommand=cmd( x,-140+32*3;halign,0;zoomto,32,32;diffuse,Red();diffusealpha,0.5 ); } };
t[#t+1] = Def.ActorFrame { Def.Quad{ InitCommand=cmd( x,-140+32*4;halign,0;zoomto,32,32;diffuse,Blue();diffusealpha,0.5 ); } };
t[#t+1] = Def.ActorFrame { Def.Quad{ InitCommand=cmd( x,-140+32*5;halign,0;zoomto,32*3,32;diffuse,White();diffusealpha,0.5 ); } };
--
for idx,diff in pairs(Difficulty) do
	local sDifficulty = ToEnumShortString( diff );
	local tLocation = {
		Beginner	= -140+15,
		Easy 		= -140+15+32,
		Medium		= -140+15+32*2,
		Hard		= -140+15+32*3,
		Challenge	= -140+15+32*4,
		Edit 		= -140+15+32*6,
	};
	t[#t+1] = Def.ActorFrame {
		SetCommand=function(self)
			local c = self:GetChildren();
-- 			local Bar = self:GetChild("Bar");
-- 			local Meter = self:GetChild("Meter"
			local song = GAMESTATE:GetCurrentSong()
			local bHasStepsTypeAndDifficulty = false;
			local meter = "";
			if song then
				local st = GAMESTATE:GetCurrentStyle():GetStepsType()
				bHasStepsTypeAndDifficulty = song:HasStepsTypeAndDifficulty( st, diff );
				local steps = song:GetOneSteps( st, diff );
				if steps then
					meter = steps:GetMeter();
					append = ""
					--
					if diff == 'Difficulty_Edit' then
						meter = GetEdits( song, st );
						append = ( GetEdits( song, st ) > 1 ) and "Edits" or "Edit"
						meter = meter .. " " .. append
					end
				end
			end
			c.Meter:settext( meter );
			self:playcommand( bHasStepsTypeAndDifficulty and "Show" or "Hide" );
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		--
		LoadFont("StepsDisplay","Meter") .. {
			Name="Meter";
			Text=(sDifficulty == "Edit") and "0 Edits" or "0";
			ShowCommand=cmd(stoptweening;linear,0.1;diffuse,CustomDifficultyToColor( sDifficulty ));
			HideCommand=cmd(stoptweening;decelerate,0.2;diffuse,CustomDifficultyToDarkColor( sDifficulty ));
			InitCommand=cmd(x,tLocation[sDifficulty];shadowlength,1;zoom,0.75;diffuse,CustomDifficultyToColor( sDifficulty ));
		};
	};
end
return t