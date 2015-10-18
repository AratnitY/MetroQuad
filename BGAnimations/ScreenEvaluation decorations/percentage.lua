local pn = ...

local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn)
local percent = stats:GetPercentDancePoints()

return LoadFont("Common Normal")..{
	Text=FormatPercentScore(percent),
	InitCommand=cmd(shadowlength,1)
}
