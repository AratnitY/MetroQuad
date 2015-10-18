local function DisplayBPM()
	local bpm
	local display = ""
	
	if GAMESTATE:GetCurrentSong() == nil then
		return "0"
	else
		bpm = GAMESTATE:GetCurrentSong():GetDisplayBpms()
	end
	
	if bpm[1] == bpm[2] then
		display = round(bpm[1])
		
	-- if we have a range of bpms
	else
		display = round(bpm[1]) .. " - " .. round(bpm[2])
	end

	return display;
end

local t = Def.ActorFrame{
	LoadFont("Common Normal")..{
		Name="DummySpeedModTitle";
		Text="";
		InitCommand=cmd(maxwidth,180;zoom,0.5;align,0,0);
		CurrentSongChangedMessageCommand=cmd(playcommand,"On");
		OnCommand=function(self)
			self:xy(CenterX()-230,Top()+120);
			self:settext( DisplayBPM() );
		end;
	};
	
};

return t