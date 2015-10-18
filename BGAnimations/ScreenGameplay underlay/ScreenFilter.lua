--[[ Screen Filter ]]
local numPlayers = GAMESTATE:GetNumPlayersEnabled()
local center1P = PREFSMAN:GetPreference("Center1Player")

local padding = 20 -- 10px on each side
local arrowWidth = 64 -- until noteskin metrics are implemented...

local filterColor = color("#000000")
local filterAlphas = {
	PlayerNumber_P1 = 1,
	PlayerNumber_P2 = 1,
	Default = 0,
}

local t = Def.ActorFrame{};

local style = GAMESTATE:GetCurrentStyle()
local cols = style:ColumnsPerPlayer()
local styleType = ToEnumShortString(style:GetStyleType())
local filterWidth = (arrowWidth * cols) + padding

if numPlayers == 1 then
	local player = GAMESTATE:GetMasterPlayerNumber()
	local pNum = (player == PLAYER_1) and 1 or 2
	filterAlphas[player] = tonumber(getenv("ScreenFilterP"..pNum));

	local pos;
	-- [ScreenGameplay] PlayerP#Player*Side(s)X
	if center1P then
		pos = SCREEN_CENTER_X
	else
		local metricName = string.format("PlayerFilterP%i%sX",pNum,styleType)
		pos = THEME:GetMetric("ScreenGameplay",metricName)
	end
	t[#t+1] = Def.Quad{
		Name="SinglePlayerFilter";
		InitCommand=cmd(x,pos;CenterY;zoomto,filterWidth,SCREEN_HEIGHT;diffusecolor,filterColor;diffusealpha,filterAlphas[player]);
	};
else
		-- otherwise we need two separate ones. to the pairsmobile!
	for i, player in ipairs(PlayerNumber) do
		local pNum = (player == PLAYER_1) and 1 or 2
		filterAlphas[player] = tonumber(getenv("ScreenFilterP"..pNum));
		local metricName = string.format("PlayerFilterP%i%sX",pNum,styleType)
		local pos = THEME:GetMetric("ScreenGameplay",metricName)
		t[#t+1] = Def.Quad{
			Name="Player"..pNum.."Filter";
			InitCommand=cmd(x,pos;CenterY;zoomto,filterWidth,SCREEN_HEIGHT;diffusecolor,filterColor;diffusealpha,filterAlphas[player]);
		};
	end
end

return t;