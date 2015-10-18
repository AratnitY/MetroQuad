return Def.ActorFrame {

	LoadFont("Common Normal") .. {
		Text="StepMania";
		InitCommand=cmd(zoom,0.4);
		OnCommand=cmd(shadowlength,1);
	};
	LoadFont("Common Normal") .. {
		Text=ProductVersion() .. " (".. VersionDate() ..")";
		InitCommand=cmd(y,10;zoom,0.3);
		OnCommand=cmd(shadowlength,1;);
	};
};