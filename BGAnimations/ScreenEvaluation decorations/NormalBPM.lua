local t = LoadFallbackB();

local songoptions = GAMESTATE:GetSongOptionsString();
local ratemod = string.match(songoptions, "%d.%d");
if ratemod then
	ratemod = tonumber(ratemod);
else
	ratemod = 1.0
end

local function DisplayBPM()
	local bpm = GAMESTATE:GetCurrentSong():GetDisplayBpms();
	local display = "";
		
	--if a single bpm suffices
	if bpm[1] == bpm[2] then
		display = round(bpm[1])
		
	-- if we have a range of bpms
	else
		display = round(bpm[1]) .. "/" .. round(bpm[2])
	end

	return "" .. display .. "";
end

local t = Def.ActorFrame{
	InitCommand=cmd(xy,SCREEN_CENTER_X,SCREEN_CENTER_Y);
	LoadFont("Common Normal")..{
		Name="DummySpeedModTitle";
		Text="";
		InitCommand=cmd(maxwidth,100;zoom,0.4);
		OnCommand=function(self)
			local x = -60;
			local y = 22;
			self:xy(x, y);		
			self:horizalign(left)
			self:settext( DisplayBPM() );
		end;
	};
	
};

return t