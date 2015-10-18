local t = Def.ActorFrame {};
local IsP1Enabled = GAMESTATE:IsPlayerEnabled(PLAYER_1)
local IsP2Enabled = GAMESTATE:IsPlayerEnabled(PLAYER_2)

Difficulties = {
	'Difficulty_Beginner',
	'Difficulty_Easy',
	'Difficulty_Medium',
	'Difficulty_Hard',
	'Difficulty_Challenge',
	'Difficulty_Edit',
};

t[#t+1] = Def.Quad { InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color( ThemePrefs.Get("MQBaseColor") ) ); };
t[#t+1] = Def.Quad { InitCommand=cmd(CenterX;y,Top()+8;zoomto,SCREEN_WIDTH-16,48;diffuse,Black();diffusealpha,0.5;vertalign,top ) };
t[#t+1] = Def.Quad { InitCommand=cmd(x,Right()-8;y,Top()+64;zoomto,SCREEN_WIDTH/2.1,SCREEN_HEIGHT/2;diffuse,Black();diffusealpha,0.3;vertalign,top;horizalign,right ) };
t[#t+1] = Def.Quad { InitCommand=cmd(CenterX;y,Top()+312;zoomto,SCREEN_WIDTH-16,124;diffuse,Black();diffusealpha,0.3;vertalign,top ) };

t[#t+1] = Def.Quad { InitCommand=cmd(x,CenterX()+18;y,Top()+100;zoomto,180,198;diffuse,Black();diffusealpha,0.5;vertalign,top;horizalign,left ) };
t[#t+1] = Def.Quad { InitCommand=cmd(x,Right()-14;y,Top()+100;zoomto,180,198;diffuse,Black();diffusealpha,0.5;vertalign,top;horizalign,right ) };

t[#t+1] = Def.Sprite {
	InitCommand=cmd(x,Left()+8;y,Top()+64;vertalign,top;horizalign,left );
	BeginCommand=cmd(LoadFromCurrentSongBackground);
	OnCommand=function(self)
		self:scaletoclipped(SCREEN_WIDTH/2,SCREEN_HEIGHT/2)
	end;
};

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(draworder,1);
	LoadFont("Common Normal")..{
		Text="";
		InitCommand=cmd(CenterX;y,Top()+20;zoom,1;vertalign,top;maxwidth,SCREEN_WIDTH/1.05);
		OnCommand=function(self)
		
			local text = GetCurrentCourse():GetDisplayFullTitle()
			
			self:settext(text)
		end;
	};
	
	LoadFont("Common Normal")..{
		Text="P1";
		InitCommand=cmd(x,CenterX()+38;y,Top()+70;zoom,1;vertalign,top);
		OnCommand=function(self)
			if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
				self:diffusealpha(1)
			else
				self:diffusealpha(0.3)
			end
		end;
	};
	
	LoadFont("Common Normal")..{
		Text="P2";
		InitCommand=cmd(x,Right()-16;y,Top()+70;zoom,1;vertalign,top;horizalign,right);
		OnCommand=function(self)
			if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
				self:diffusealpha(1)
			else
				self:diffusealpha(0.3)
			end
		end;
	};
};

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("Common Normal")..{
			Name="P1Steps";
			Text="";
			InitCommand=cmd(x,CenterX()+60;y,Top()+70;zoom,1;vertalign,top;horizalign,left;maxwidth,128);
			OnCommand=function(self)			
				local Steps = GAMESTATE:GetCurrentTrail(PLAYER_1):GetMeter()
				local Diff = GAMESTATE:GetCurrentTrail(PLAYER_1):GetDifficulty(Difficulties)
				local IsEdit
				local DiffRenamed
				
				if Diff == Difficulties[1] then
					DiffRenamed = "NOVICE"
				elseif Diff == Difficulties[2] then
					DiffRenamed = "EASY"
				elseif Diff == Difficulties[3] then
					DiffRenamed = "NORMAL"
				elseif Diff == Difficulties[4] then
					DiffRenamed = "HARD"
				elseif Diff == Difficulties[5] then
					DiffRenamed = "EXPERT"
				elseif Diff == Difficulties[6] then
					DiffRenamed = GAMESTATE:GetCurrentTrail(PLAYER_1):GetChartName()
				end
				
				self:settext(DiffRenamed .. " (" .. Steps .. ")")
				self:diffuse(CustomDifficultyToColor(Diff))
			end;
		};
	};
end

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("Common Normal")..{
			Name="P2Steps";
			Text="";
			InitCommand=cmd(x,Right()-60;y,Top()+70;zoom,1;vertalign,top;horizalign,right;maxwidth,128);
			OnCommand=function(self)			
				local Steps = GAMESTATE:GetCurrentTrail(PLAYER_2):GetMeter()
				local Diff = GAMESTATE:GetCurrentTrail(PLAYER_2):GetDifficulty(Difficulties)
				local IsEdit
				local DiffRenamed
				
				if Diff == Difficulties[1] then
					DiffRenamed = "NOVICE"
				elseif Diff == Difficulties[2] then
					DiffRenamed = "EASY"
				elseif Diff == Difficulties[3] then
					DiffRenamed = "NORMAL"
				elseif Diff == Difficulties[4] then
					DiffRenamed = "HARD"
				elseif Diff == Difficulties[5] then
					DiffRenamed = "EXPERT"
				elseif Diff == Difficulties[6] then
					DiffRenamed = GAMESTATE:GetCurrentTrail(PLAYER_2):GetChartName()
				end
				
				self:settext(DiffRenamed .. " (" .. Steps .. ")")
				self:diffuse(CustomDifficultyToColor(Diff))
			end;
		};
	};
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
	InitCommand=cmd(x,SCREEN_RIGHT-69;y,SCREEN_BOTTOM-20;zoomto,120,24;diffuse,color("#FFFFFF");diffusealpha,0.4;blend,'BlendMode_Add');
};

return t