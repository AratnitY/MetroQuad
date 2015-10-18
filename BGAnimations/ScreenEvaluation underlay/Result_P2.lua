local t = Def.ActorFrame{};
-------------------------------------------------------------------------------------------------------------------
-- Tab #1 Under Elements
-------------------------------------------------------------------------------------------------------------------
local JudgmentsP2, ScoreP2, GradeP2

local function ResultsPage1(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_6" then
		JudgmentsP2:visible(true)
		ScoreP2:visible(true)
		GradeP2:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_7" then
		JudgmentsP2:visible(false)
		ScoreP2:visible(false)
		GradeP2:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		JudgmentsP2:visible(false)
		ScoreP2:visible(false)
		GradeP2:visible(false)
	end
end

-- Right (P2) Background
t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Right()-147.5;y,Top()+94;zoomto,820/3,340;vertalign,top;diffuse,color("#FFFFFF");diffusealpha,0.2);
};

-- Right (P2) ModIcons Line
t[#t+1] = Def.Quad {
	InitCommand=cmd(x,Right()-147.5;y,CenterY()+178;zoomto,820/3,24;diffuse,color("#000000");diffusealpha,0.3);
};

-- Right (P2) Grade / Score / Judgments Background
t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
	Def.Quad{
		BeginCommand=cmd(x,CenterX()+149;y,CenterY()-78;zoomto,261,172;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
		InitCommand=function(self)
			JudgmentsP2=self
			self:visible(true)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
	},
	Def.Quad{
		BeginCommand=cmd(x,Right()-218;y,CenterY()-114;zoomto,120,64;diffuse,color("#000000");diffusealpha,0.3);
		InitCommand=function(self)
			GradeP2=self
			self:visible(true)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
	},
	Def.Quad{
		BeginCommand=cmd(x,Right()-84;y,CenterY()-114;zoomto,134,64;diffuse,color("#000000");diffusealpha,0.3);
		InitCommand=function(self)
			ScoreP2=self
			self:visible(true)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage1) end,
	},
}

-------------------------------------------------------------------------------------------------------------------
-- Tab #2 Under Elements
-------------------------------------------------------------------------------------------------------------------
local StepsDisplayLine2
local BestRecordLabel1

local function ResultsPage2(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_7" then
		StepsDisplayLine2:visible(true)
		-- Best Record Labels
		BestRecordLabel1:visible(true)
	elseif event.DeviceInput.button == "DeviceButton_6" then
		StepsDisplayLine2:visible(false)
		-- Best Record Labels
		BestRecordLabel1:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		StepsDisplayLine2:visible(false)
		-- Best Record Labels
		BestRecordLabel1:visible(false)
	end
end

t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
	Def.Quad{
		BeginCommand=cmd(x,Right()-148;y,CenterY()-132;zoomto,260,28;diffuse,color("#000000");diffusealpha,0.3);
		InitCommand=function(self)
			StepsDisplayLine2=self
			self:visible(false)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
	},
	Def.Quad{
		BeginCommand=cmd(x,Right()-278;y,Top()+126;horizalign,left;vertalign,top;zoomto,261,180;diffuse,color("#000000");diffusealpha,0.3;horizalign,left);
		InitCommand=function(self)
			BestRecordLabel1=self
			self:visible(false)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage2) end,
	},
}

-------------------------------------------------------------------------------------------------------------------
-- Tab #3 Under Elements
-------------------------------------------------------------------------------------------------------------------
local StepsDisplayLine3
local AccumJudgementLine

local function ResultsPage3(event)
	if event.type == "InputEventType_Release" then return false end
	if event.DeviceInput.button == "DeviceButton_7" then
		StepsDisplayLine3:visible(false)
		AccumJudgementLine:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_6" then
		StepsDisplayLine3:visible(false)
		AccumJudgementLine:visible(false)
	elseif event.DeviceInput.button == "DeviceButton_8" then
		StepsDisplayLine3:visible(true)
		AccumJudgementLine:visible(true)
	end
end

t[#t+1] = Def.ActorFrame{
	BeginCommand=cmd(y,6);
	Def.Quad{
		BeginCommand=cmd(x,Right()-148;y,CenterY()-132;zoomto,260,28;diffuse,color("#000000");diffusealpha,0.3);
		InitCommand=function(self)
			StepsDisplayLine3=self
			self:visible(false)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
	},
	Def.Quad{
		BeginCommand=cmd(x,Right()-278;y,Top()+126;zoomto,260,186;horizalign,left;vertalign,top;diffuse,color("#000000");diffusealpha,0.3);
		InitCommand=function(self)
			AccumJudgementLine=self
			self:visible(false)
		end,
		OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(ResultsPage3) end,
	},
}

return t