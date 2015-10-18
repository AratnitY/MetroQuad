return Def.ActorFrame {
 	LoadFont("Common Normal") .. {
		Name="TextTitle";
		InitCommand=cmd(y,1;zoomx,0.6;zoomy,0.5;maxwidth,404;);

	};
 	LoadFont("Common Normal") .. {
		Name="TextSubtitle";
		InitCommand=cmd(zoomx,0.4;zoomy,0.3;maxwidth,506);

	};
	LoadFont("Common Normal") .. {
		Name="TextArtist";
		InitCommand=cmd(y,1;zoomx,0.4;zoomy,0.3;maxwidth,506);

	};
};