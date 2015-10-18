local t = Def.ActorFrame {};

local function UpdateTime(self)
	local c = self:GetChildren();
	for pn in ivalues(PlayerNumber) do
		local vStats = STATSMAN:GetCurStageStats():GetPlayerStageStats( pn );
		local vTime;
		local obj = self:GetChild( string.format("RemainingTime" .. PlayerNumberToString(pn) ) );
		if vStats and obj then
			vTime = vStats:GetLifeRemainingSeconds()
			obj:settext( SecondsToMMSSMsMs( vTime ) );
		end;
	end;
end

if GAMESTATE:GetCurrentCourse() then
	if GAMESTATE:GetCurrentCourse():GetCourseType() == "CourseType_Survival" then
		-- RemainingTime
		for pn in ivalues(PlayerNumber) do
			local MetricsName = "RemainingTime" .. PlayerNumberToString(pn);
			t[#t+1] = LoadActor( THEME:GetPathG( Var "LoadingScreen", "RemainingTime"), pn ) .. {
				InitCommand=function(self) 
					self:player(pn); 
					self:name(MetricsName); 
					self:zoom(4);
					ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
				end;
			};
		end
		
		for pn in ivalues(PlayerNumber) do
			local MetricsName = "DeltaSeconds" .. PlayerNumberToString(pn);
			t[#t+1] = LoadActor( THEME:GetPathG( Var "LoadingScreen", "DeltaSeconds"), pn ) .. {
				InitCommand=function(self) 
					self:player(pn); 
					self:name(MetricsName); 
					ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen"); 
				end;
			};
		end
	end;
end;

t.InitCommand=cmd(SetUpdateFunction,UpdateTime);

if IsAutoRestartEnabled() then
	t[#t+1] = LoadActor("AutoRestart")
end

t[#t+1] = LoadActor("RemainingLife")
t[#t+1] = LoadActor("NegativeScore")
if GetCurrentStyle():GetName() ~= "double" then
	t[#t+1] = LoadActor("Tabs/TabP1Numbers")
	t[#t+1] = LoadActor("Tabs/TabP2Numbers")
	t[#t+1] = LoadActor("Tabs/TabP1Page1")
	t[#t+1] = LoadActor("Tabs/TabP1Page2")
	t[#t+1] = LoadActor("Tabs/TabP2Page1")..{ InitCommand=cmd(x,-380) };
	t[#t+1] = LoadActor("Tabs/TabP2Page2")..{ InitCommand=cmd(x,-380) };
end

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_LEFT+69;y,SCREEN_BOTTOM-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_LEFT+69;y,SCREEN_BOTTOM-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-20;zoomto,580,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-20;zoomto,572,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

t[#t+1] = Def.Quad {
	InitCommand=cmd(x,SCREEN_RIGHT-69;y,SCREEN_BOTTOM-20;zoomto,128,32;diffuse,color("#000000");diffusealpha,0.3);
};

t[#t+1] = Def.Quad {
	BeginCommand=cmd(draworder,1);
	InitCommand=cmd(x,SCREEN_RIGHT-69;y,SCREEN_BOTTOM-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

return t