local t = Def.ActorFrame{
	LoadActor("FallbackBanners/banner"..GetBannerColor())..{
		BeginCommand=cmd(draworder,-1;zoomto,263,92);
		Name="FallbackBanner",
		OnCommand=function(self)
			self:xy(CenterX(),CenterY()-122)
		end,
		HideCommand=cmd(visible,false),
		ShowCommand=cmd(visible,true)
	},
	
	Def.ActorProxy{
		Name="BannerProxy",
		BeginCommand=function(self)
			local banner = SCREENMAN:GetTopScreen():GetChild('Banner')
			self:SetTarget(banner)
		end
	}
}

return t