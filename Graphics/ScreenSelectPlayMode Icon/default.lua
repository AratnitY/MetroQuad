local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame { 
  GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconGainFocusCommand");
  LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconLoseFocusCommand");

	LoadActor("_background base")..{
		InitCommand=cmd(diffuse,color("#FFFFFF"));
	};

	LoadFont("Common Normal")..{
		InitCommand=cmd(y,-12;zoom,1.5;diffuse,color("#000000");uppercase,true;settext,gc:GetText(););
	};
	LoadFont("Common Normal")..{
		InitCommand=cmd(y,27.5;zoom,0.7;maxwidth,320;uppercase,true;settext,THEME:GetString(Var "LoadingScreen", gc:GetName().."Explanation"));
	};
	LoadActor("_background base") .. {
		DisabledCommand=cmd(diffuse,color("0,0,0,0.5"));
		EnabledCommand=cmd(diffuse,color("1,1,1,0"));
	};

};
return t