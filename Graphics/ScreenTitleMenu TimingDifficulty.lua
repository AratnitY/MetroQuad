return Def.ActorFrame {

	Def.Quad {
		InitCommand=cmd(x,-24;zoomto,64,24;diffuse,color( LightBaseColor() );diffusealpha,0.8);
	};
	
	LoadFont("Common Normal") .. {
		Text="Timing Diff:";
		InitCommand=cmd(x,-24;y,-4;zoom,0.3);
	};
	
	LoadFont("Common Normal") .. {
		Text=GetTimingDifficulty();
		InitCommand=cmd(x,-24;y,6);
		OnCommand=function(self)
			(cmd(zoom,0.4))(self);
			
			if GetTimingDifficulty() == 1 then
				self:settext("•");
			end
			
			if GetTimingDifficulty() == 2 then
				self:settext("••");
			end
			
			if GetTimingDifficulty() == 3 then
				self:settext("•••");
			end
			
			if GetTimingDifficulty() == 4 then
				self:settext("••••");
			end
			
			if GetTimingDifficulty() == 5 then
				self:settext("•••••");
			end
			
			if GetTimingDifficulty() == 6 then
				self:settext("••••••");
			end
			
			if GetTimingDifficulty() == 7 then
				self:settext("•••••••");
			end
			
			if GetTimingDifficulty() == 8 then
				self:settext("••••••••");
			end
			
			if GetTimingDifficulty() == 9 then
				self:settext("•••••••••");
			end
			
		end;
	};
};