local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");
t[#t+1] = StandardDecorationFromFileOptional("DifficultyDisplay","DifficultyDisplay");

t[#t+1] = Def.ActorFrame {
	LoadFont("SquareFont") .. {
	Text="SELECT ONLINE MUSIC";
		InitCommand=cmd(x,SCREEN_LEFT+12;y,SCREEN_TOP+18;zoom,0.7;horizalign,left);
		OnCommand=cmd(diffusealpha,1;);
	};
};

t[#t+1] = Def.Sprite {
	InitCommand=cmd(x,Left()+213.5;y,CenterY()-36;draworder,-1;diffusealpha,0.5);
	CurrentSongChangedMessageCommand=cmd(finishtweening;queuecommand,"Banner");
	BannerCommand=function(self)
		self:stoptweening();
		if GAMESTATE:GetCurrentSong() then
			if GAMESTATE:GetCurrentSong():HasBackground() then
				self:Load( GAMESTATE:GetCurrentSong():GetBackgroundPath() );
				self:scaletoclipped(385,210)
			else
				self:Load( THEME:GetPathG("Common fallback","background") );
				self:scaletoclipped(385,210)
			end;
		end;
	end;
};

return t;