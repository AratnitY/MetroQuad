return Def.ActorFrame {

	Def.Quad {
		InitCommand=cmd(x,-24;zoomto,64,24;diffuse,color( LightBaseColor() );diffusealpha,0.8);
	};
	
	LoadFont("Common Normal") .. {
		Text="Life Diff:";
		InitCommand=cmd(x,-24;y,-4;zoom,0.3);
	};
	
	LoadFont("Common Normal") .. {
		Text=GetLifeDifficulty();
		InitCommand=cmd(x,-24;y,6);
		OnCommand=function(self)
			(cmd(zoom,0.4))(self);
			
			if GetLifeDifficulty() == 1 then
				self:settext("•");
			end
			
			if GetLifeDifficulty() == 2 then
				self:settext("••");
			end
			
			if GetLifeDifficulty() == 3 then
				self:settext("•••");
			end
			
			if GetLifeDifficulty() == 4 then
				self:settext("••••");
			end
			
			if GetLifeDifficulty() == 5 then
				self:settext("•••••");
			end
			
			if GetLifeDifficulty() == 6 then
				self:settext("••••••");
			end
			
			if GetLifeDifficulty() == 7 then
				self:settext("•••••••");
			end
			
		end;
	};
};