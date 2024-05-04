--RageUI Shit Stuff
--Menu Sounds [https://wiki.gtanet.work/index.php?title=FrontEndSoundlist]
Menyo = {}
Menyo.Sounds = {}
Menyo.Sounds.UpDownSound = 'HUD_FRONTEND_DEFAULT_SOUNDSET'
Menyo.Sounds.UpDownSoundRef = 'HIGHLIGHT_NAV_UP_DOWN'
Menyo.Sounds.LeftRightSound = 'HUD_FRONTEND_DEFAULT_SOUNDSET'
Menyo.Sounds.LeftRightSoundRef = 'NAV_LEFT_RIGHT'
Menyo.Sounds.SelectSound = 'HUD_FRONTEND_DEFAULT_SOUNDSET'
Menyo.Sounds.SelectSoundRef = 'WAYPOINT_SET'
Menyo.Sounds.BackSound = 'HUD_FRONTEND_DEFAULT_SOUNDSET'
Menyo.Sounds.BackSoundRef = 'TIMER'
Menyo.Sounds.ErrorSound = 'HUD_FRONTEND_DEFAULT_SOUNDSET'
Menyo.Sounds.ErrorSoundRef = 'ERROR'
--Entire ShitUI in one Lua loool
local txd = CreateRuntimeTxd('Menu_Cock')
local Header = CreateDui('https://cdn.discordapp.com/attachments/951835380984971264/968261693446717440/trtretretre.gif', 416, 115)
local TextureHandle = GetDuiHandle(Header)
local Texture = CreateRuntimeTextureFromDuiHandle(txd, 'MenuHeader_Cock', TextureHandle)
HeaderSprite = 'Menu_Cock'
HeaderTexture = 'MenuHeader_Cock'
HeaderTitle = ''
CS_UI = {}
CS_UI.Colours = {}
CS_UI.Colours.R = 0
CS_UI.Colours.G = 0
CS_UI.Colours.B = 0
CS_UI.Colours.A = 0
RageUI = {};
RageUIMenus = setmetatable({}, RageUIMenus)
RageUIMenus.__call = function()
    return true
end
RageUIMenus.__index = RageUIMenus
RageUI.CurrentMenu = nil
RageUI.NextMenu = nil
RageUI.Options = 0
RageUI.ItemOffset = 0
RageUI.StatisticPanelCount = 0
RageUI.PoolMenus = RageUI.PoolMenus or {
    Timer = 0,
    Name = nil,
};
RageUI.Settings = {
    Debug = false,
    Controls = {
        Up = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 172 },
                { 1, 172 },
                { 2, 172 },
                { 0, 241 },
                { 1, 241 },
                { 2, 241 },
            },
        },
        Down = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 173 },
                { 1, 173 },
                { 2, 173 },
                { 0, 242 },
                { 1, 242 },
                { 2, 242 },
            },
        },
        Left = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 174 },
                { 1, 174 },
                { 2, 174 },
            },
        },
        Right = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 175 },
                { 1, 175 },
                { 2, 175 },
            },
        },
        SliderLeft = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 174 },
                { 1, 174 },
                { 2, 174 },
            },
        },
        SliderRight = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 175 },
                { 1, 175 },
                { 2, 175 },
            },
        },
        Select = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 201 },
                { 1, 201 },
                { 2, 201 },
            },
        },
        Back = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 177 },
                { 1, 177 },
                { 2, 177 },
                { 0, 199 },
                { 1, 199 },
                { 2, 199 },
            },
        },
        Click = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 24 },
            },
        },
        Enabled = {
            Controller = {
                { 0, 2 },
                { 0, 1 }, 
                { 0, 25 }, 
                { 0, 24 },
            },
            Keyboard = {
                { 0, 201 }, 
                { 0, 195 }, 
                { 0, 196 }, 
                { 0, 187 }, 
                { 0, 188 }, 
                { 0, 189 }, 
                { 0, 190 }, 
                { 0, 202 }, 
                { 0, 217 }, 
                { 0, 242 }, 
                { 0, 241 }, 
                { 0, 239 }, 
                { 0, 240 },
                { 0, 31 }, 
                { 0, 30 }, 
                { 0, 21 }, 
                { 0, 22 }, 
                { 0, 23 },
                { 0, 75 }, 
                { 0, 71 },
                { 0, 72 }, 
                { 0, 59 }, 
                { 0, 89 }, 
                { 0, 9 }, 
                { 0, 8 },
                { 0, 90 }, 
                { 0, 76 },
            },
        },
    },
    Audio = {
        Id = nil,
        UpDown = {
            audioName = Menyo.Sounds.UpDownSound,
            audioRef = Menyo.Sounds.UpDownSoundRef,
        },
        LeftRight = {
            audioName = Menyo.Sounds.LeftRightSound,
            audioRef = Menyo.Sounds.LeftRightSoundRef,
        },
        Select = {
            audioName = Menyo.Sounds.SelectSound,
            audioRef = Menyo.Sounds.SelectSoundRef,
        },
        Back = {
            audioName = Menyo.Sounds.BackSound,
            audioRef = Menyo.Sounds.BackSoundRef,
        },
        Error = {
            audioName = Menyo.Sounds.ErrorSound,
            audioRef = Menyo.Sounds.ErrorSoundRef,
        },
        Slider = {
            audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
            audioRef = "CONTINUOUS_SLIDER",
            Id = nil
        },
    },
    Items = {
        Title = {
            Background = { Width = 431, Height = 107 },
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        Subtitle = {
            Background = { Width = 431, Height = 37 },
            Text = { X = 8, Y = 3, Scale = 0.35 },
            PreText = { X = 425, Y = 3, Scale = 0.35 },
        },
        Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 0, Width = 431 },
        Navigation = {
            Rectangle = { Width = 431, Height = 18 },
            Offset = 5,
            Arrows = { Dictionary = "commonmenu", Texture = "shop_arrows_upanddown", X = 190, Y = -6, Width = 50, Height = 50 },
        },
        Description = {
            Bar = { Y = 4, Width = 431, Height = 4 },
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 30 },
            Text = { X = 8, Y = 10, Scale = 0.35 },
        },
    },
    Panels = {
        Grid = {
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 275 },
            Grid = { Dictionary = "pause_menu_pages_char_mom_dad", Texture = "nose_grid", X = 115.5, Y = 47.5, Width = 200, Height = 200 },
            Circle = { Dictionary = "mpinventory", Texture = "in_world_circle", X = 115.5, Y = 47.5, Width = 20, Height = 20 },
            Text = {
                Top = { X = 215.5, Y = 15, Scale = 0.35 },
                Bottom = { X = 215.5, Y = 250, Scale = 0.35 },
                Left = { X = 57.75, Y = 130, Scale = 0.35 },
                Right = { X = 373.25, Y = 130, Scale = 0.35 },
            },
        },
        Percentage = {
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 76 },
            Bar = { X = 9, Y = 50, Width = 413, Height = 10 },
            Text = {
                Left = { X = 25, Y = 15, Scale = 0.35 },
                Middle = { X = 215.5, Y = 15, Scale = 0.35 },
                Right = { X = 398, Y = 15, Scale = 0.35 },
            },
        },
    },
}
function RageUI.GetSafeZoneBounds()
    local SafeSize = GetSafeZoneSize()
    SafeSize = math.round(SafeSize, 2)
    SafeSize = (SafeSize * 100) - 90
    SafeSize = 10 - SafeSize
    local W, H = 1920, 1080
    return { X = math.round(SafeSize * ((W / H) * 5.4)), Y = math.round(SafeSize * 5.4) }
end
function RageUI.Visible(Menu, Value)
    if Menu ~= nil and Menu() then
        if Value == true or Value == false then
            if Value then
                if RageUI.CurrentMenu ~= nil then
                    if RageUI.CurrentMenu.Closed ~= nil then
                        RageUI.CurrentMenu.Closed()
                    end
                    RageUI.CurrentMenu.Open = not Value
                    Menu:UpdateInstructionalButtons(Value);
                end
                RageUI.CurrentMenu = Menu
            else
                RageUI.CurrentMenu = nil
            end
            Menu.Open = Value
            RageUI.Options = 0
            RageUI.ItemOffset = 0
            RageUI.LastControl = false
        else
            return Menu.Open
        end
    end
end
function RageUI.CloseAll()
    if RageUI ~= nil then
        if RageUI.CurrentMenu ~= nil then
            local parent = RageUI.CurrentMenu.Parent
            while parent ~= nil do
                parent.Index = 1
                parent.Pagination.Minimum = 1
                parent.Pagination.Maximum = parent.Pagination.Total
                parent = parent.Parent
            end
            RageUI.CurrentMenu.Index = 1
            RageUI.CurrentMenu.Pagination.Minimum = 1
            RageUI.CurrentMenu.Pagination.Maximum = RageUI.CurrentMenu.Pagination.Total
            RageUI.CurrentMenu.Open = false
            RageUI.CurrentMenu = nil
        end
        RageUI.Options = 0
        RageUI.ItemOffset = 0
        ResetScriptGfxAlign()
    end
end
function RageUI.Subtitle()
    local CurrentMenu = RageUI.CurrentMenu
    if (CurrentMenu.Display.Subtitle) then
        RageUI.ItemsSafeZone(CurrentMenu)
        if CurrentMenu.Subtitle ~= "" then
            --Top&Bottom Black
            --Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + RageUI.ItemOffset, RageUI.Settings.Items.Subtitle.Background.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Subtitle.Background.Height + CurrentMenu.SubtitleHeight, 0, 0, 0, 255)
            Graphics.Sprite('commonmenu', 'gradient_bgd', CurrentMenu.X,  CurrentMenu.Y + RageUI.ItemOffset, RageUI.Settings.Items.Subtitle.Background.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Subtitle.Background.Height + CurrentMenu.SubtitleHeight, 0, 0, 0, 255)
            Graphics.Text(CurrentMenu.PageCounterColour .. CurrentMenu.Subtitle, CurrentMenu.X + RageUI.Settings.Items.Subtitle.Text.X, CurrentMenu.Y + RageUI.Settings.Items.Subtitle.Text.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.Text.Scale, 245, 245, 245, 255, nil, false, false, RageUI.Settings.Items.Subtitle.Background.Width + CurrentMenu.WidthOffset)
            if CurrentMenu.Index > CurrentMenu.Options or CurrentMenu.Index < 0 then
                CurrentMenu.Index = 1
            end
            if (CurrentMenu ~= nil) then
                if (CurrentMenu.Index > CurrentMenu.Pagination.Total) then
                    local offset = CurrentMenu.Index - CurrentMenu.Pagination.Total
                    CurrentMenu.Pagination.Minimum = 1 + offset
                    CurrentMenu.Pagination.Maximum = CurrentMenu.Pagination.Total + offset
                else
                    CurrentMenu.Pagination.Minimum = 1
                    CurrentMenu.Pagination.Maximum = CurrentMenu.Pagination.Total
                end
            end
            if CurrentMenu.Display.PageCounter then
                if CurrentMenu.PageCounter == nil then
                    Graphics.Text(CurrentMenu.PageCounterColour .. CurrentMenu.Index .. " / " .. CurrentMenu.Options, CurrentMenu.X + RageUI.Settings.Items.Subtitle.PreText.X + CurrentMenu.WidthOffset, CurrentMenu.Y + RageUI.Settings.Items.Subtitle.PreText.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.PreText.Scale, 245, 245, 245, 255, 2)
                else
                    Graphics.Text(CurrentMenu.PageCounter, CurrentMenu.X + RageUI.Settings.Items.Subtitle.PreText.X + CurrentMenu.WidthOffset, CurrentMenu.Y + RageUI.Settings.Items.Subtitle.PreText.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.PreText.Scale, 245, 245, 245, 255, 2)
                end
            end
            RageUI.ItemOffset = RageUI.ItemOffset + RageUI.Settings.Items.Subtitle.Background.Height
        end
        --Cock Stripes
        --Graphics.Rectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Bar.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset - 42, RageUI.Settings.Items.Description.Bar.Width + RageUI.CurrentMenu.WidthOffset, 2, 0, 102, 204, 255)
        --Graphics.Rectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Bar.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset - 6, RageUI.Settings.Items.Description.Bar.Width + RageUI.CurrentMenu.WidthOffset, 2, 0, 102, 204, 255)
    end
end
function RageUI.Background()
    local CurrentMenu = RageUI.CurrentMenu;
    if CurrentMenu ~= nil then
        if (CurrentMenu.Display.Background) then
            RageUI.ItemsSafeZone(CurrentMenu)
            SetScriptGfxDrawOrder(0)
            Graphics.Sprite(RageUI.Settings.Items.Background.Dictionary, RageUI.Settings.Items.Background.Texture, CurrentMenu.X, CurrentMenu.Y + RageUI.Settings.Items.Background.Y + CurrentMenu.SubtitleHeight, RageUI.Settings.Items.Background.Width + CurrentMenu.WidthOffset, RageUI.ItemOffset, 0, 0, 0, 0, 255)
            SetScriptGfxDrawOrder(1)
        end
    end
end
function RageUI.Description()
    local CurrentMenu = RageUI.CurrentMenu;
    local Description = RageUI.Settings.Items.Description;
    if CurrentMenu ~= nil then
        if CurrentMenu.Description ~= nil then
            RageUI.ItemsSafeZone(CurrentMenu)
            --Cock Stripes
            --Graphics.Rectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Bar.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset - 4, RageUI.Settings.Items.Description.Bar.Width + RageUI.CurrentMenu.WidthOffset, 2, 0, 0, 0, 175)
            --Graphics.Rectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Bar.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 37.7, RageUI.Settings.Items.Description.Bar.Width + RageUI.CurrentMenu.WidthOffset, 2, 0, 102, 204, 255)
            Graphics.Sprite(Description.Background.Dictionary, Description.Background.Texture, CurrentMenu.X, CurrentMenu.Y + Description.Background.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, Description.Background.Width + CurrentMenu.WidthOffset, CurrentMenu.DescriptionHeight, 0, 0, 0, 255)
            Graphics.Text(CurrentMenu.Description, CurrentMenu.X + Description.Text.X, CurrentMenu.Y + Description.Text.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Description.Text.Scale, 255, 255, 255, 255, nil, false, false, Description.Background.Width + CurrentMenu.WidthOffset - 8.0)
            RageUI.ItemOffset = RageUI.ItemOffset + CurrentMenu.DescriptionHeight + Description.Bar.Y
        end
    end
end
function RageUI.Render()
    local CurrentMenu = RageUI.CurrentMenu;
    if CurrentMenu ~= nil then
        if CurrentMenu.Safezone then
            ResetScriptGfxAlign()
        end
        if (CurrentMenu.Display.InstructionalButton) then
            if not CurrentMenu.InitScaleform then
                CurrentMenu:UpdateInstructionalButtons(true)
                CurrentMenu.InitScaleform = true
            end
            DrawScaleformMovieFullscreen(CurrentMenu.InstructionalScaleform, 255, 255, 255, 5, 0)
        end
        CurrentMenu.Options = RageUI.Options
        CurrentMenu.SafeZoneSize = nil
        RageUI.Controls()
        RageUI.Options = 0
        RageUI.StatisticPanelCount = 0
        RageUI.ItemOffset = 0
        if CurrentMenu.Controls.Back.Enabled then
            if CurrentMenu.Controls.Back.Pressed and CurrentMenu.Closable then
                CurrentMenu.Controls.Back.Pressed = false
                Audio.PlaySound(RageUI.Settings.Audio.Back.audioName, RageUI.Settings.Audio.Back.audioRef)
                if CurrentMenu.Closed ~= nil then
                    collectgarbage()
                    CurrentMenu.Closed()
                end
                if CurrentMenu.Parent ~= nil then
                    if CurrentMenu.Parent() then
                        RageUI.NextMenu = CurrentMenu.Parent
                    else
                        RageUI.NextMenu = nil
                        RageUI.Visible(CurrentMenu, false)
                    end
                else
                    RageUI.NextMenu = nil
                    RageUI.Visible(CurrentMenu, false)
                end
            elseif CurrentMenu.Controls.Back.Pressed and not CurrentMenu.Closable then
                CurrentMenu.Controls.Back.Pressed = false
            end
        end
        if RageUI.NextMenu ~= nil then
            if RageUI.NextMenu() then
                RageUI.Visible(CurrentMenu, false)
                RageUI.Visible(RageUI.NextMenu, true)
                CurrentMenu.Controls.Select.Active = false
                RageUI.NextMenu = nil
                RageUI.LastControl = false
            end
        end
    end
end
function RageUI.ItemsDescription(Description)
    local CurrentMenu = RageUI.CurrentMenu;
    if Description ~= "" or Description ~= nil then
        if CurrentMenu.Description ~= Description then
            CurrentMenu.Description = Description or nil;
            local SettingsDescription = RageUI.Settings.Items.Description;
            local DescriptionLineCount = Graphics.GetLineCount(CurrentMenu.Description, CurrentMenu.X + SettingsDescription.Text.X, CurrentMenu.Y + SettingsDescription.Text.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, SettingsDescription.Text.Scale, 255, 255, 255, 255, nil, false, false, SettingsDescription.Background.Width + (CurrentMenu.WidthOffset - 5.0))
            if DescriptionLineCount > 1 then
                CurrentMenu.DescriptionHeight = SettingsDescription.Background.Height * DescriptionLineCount
            else
                CurrentMenu.DescriptionHeight = SettingsDescription.Background.Height + 7
            end
        end
    else
        CurrentMenu.Description = nil;
    end
end
function RageUI.ItemsMouseBounds(CurrentMenu, Selected, Option, SettingsButton)
    local Hovered = false
    Hovered = Graphics.IsMouseInBounds(CurrentMenu.X + CurrentMenu.SafeZoneSize.X, CurrentMenu.Y + SettingsButton.Rectangle.Y + CurrentMenu.SafeZoneSize.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, SettingsButton.Rectangle.Width + CurrentMenu.WidthOffset, SettingsButton.Rectangle.Height)
    if Hovered and not Selected then
        Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + SettingsButton.Rectangle.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, SettingsButton.Rectangle.Width + CurrentMenu.WidthOffset, SettingsButton.Rectangle.Height, 255, 255, 255, 20)
        if CurrentMenu.Controls.Click.Active then
            CurrentMenu.Index = Option

            Audio.PlaySound(RageUI.Settings.Audio.UpDown.audioName, RageUI.Settings.Audio.UpDown.audioRef)
        end
    end
    return Hovered;
end
function RageUI.ItemsSafeZone(CurrentMenu)
    if not CurrentMenu.SafeZoneSize then
        CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }
        if CurrentMenu.Safezone then
            CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()
            SetScriptGfxAlign(76, 84)
            SetScriptGfxAlignParams(0, 0, 0, 0)
        end
    end
end
function RageUI.Pool()
    for name, callback in pairs(RageUI.PoolMenus) do
        if type(callback) == "function" and name ~= RageUI.PoolMenus.Name then
            callback()
            if RageUI.PoolMenus.Timer == 1 then
                RageUI.PoolMenus.Name = name
                return
            end
        end
    end
end
Citizen.CreateThread(function()
    while true do
        RageUI.PoolMenus.Timer = 750
        if RageUI.PoolMenus.Name ~= nil then
            RageUI.PoolMenus[RageUI.PoolMenus.Name]()
        end
        Citizen.Wait(RageUI.PoolMenus.Timer)
        if RageUI.PoolMenus.Timer == 750 then
            RageUI.PoolMenus.Name = nil
            RageUI.Pool();
        end
    end
end)
local txd = CreateRuntimeTxd('Menu_Cock')
local Header = CreateDui('https://cdn.discordapp.com/attachments/951835380984971264/968261693446717440/trtretretre.gif', 416, 115)
local TextureHandle = GetDuiHandle(Header)
local Texture = CreateRuntimeTextureFromDuiHandle(txd, 'MenuHeader_Cock', TextureHandle)
local DefaultSprite = 'Menu_Cock'
local DefaultTexture = 'MenuHeader_Cock'
function RageUI.CreateMenu(Title, Subtitle, X, Y, TextureDictionary, TextureName, R, G, B, A)
	local Menu = {}
	Menu.Display = {};
    Menu.Styless = {};
	Menu.InstructionalButtons = {}
	Menu.Display.Header = true;
	Menu.Display.Subtitle = true;
	Menu.Display.Background = true;
	Menu.Display.Navigation = true;
	Menu.Display.InstructionalButton = true;
	Menu.Display.PageCounter = true;
	Menu.Title = Title or ""
	Menu.TitleFont = 1
	Menu.TitleScale = 1.2
	Menu.Subtitle = Subtitle or nil
	Menu.SubtitleHeight = -37
	Menu.Description = nil
	Menu.DescriptionHeight = RageUI.Settings.Items.Description.Background.Height
	Menu.X = 0
	Menu.Y = 0
	Menu.Parent = nil
	Menu.WidthOffset = 0
	Menu.Open = false
	Menu.Controls = RageUI.Settings.Controls
	Menu.Index = 1
	Menu.Sprite = { Dictionary = TextureDictionary or "commonmenu", Texture = TextureName or "interaction_bgd", Color = { R = R, G = G, B = B, A = A } }
	Menu.Rectangle = nil
	Menu.Pagination = { Minimum = 1, Maximum = 10, Total = 10 }
	Menu.Safezone = true
	Menu.SafeZoneSize = nil
	Menu.EnableMouse = false
	Menu.Options = 0
	Menu.Closable = true
	if string.starts(Menu.Subtitle, "~") then
		Menu.PageCounterColour = string.lower(string.sub(Menu.Subtitle, 1, 3))
	else
		Menu.PageCounterColour = ""
	end
	if Menu.Subtitle ~= "" then
		local SubtitleLineCount = Graphics.GetLineCount(Menu.Subtitle, Menu.X + RageUI.Settings.Items.Subtitle.Text.X, Menu.Y + RageUI.Settings.Items.Subtitle.Text.Y, 0, RageUI.Settings.Items.Subtitle.Text.Scale, 245, 245, 245, 255, nil, false, false, RageUI.Settings.Items.Subtitle.Background.Width + Menu.WidthOffset)
		if SubtitleLineCount > 1 then
			Menu.SubtitleHeight = 18 * SubtitleLineCount
		else
			Menu.SubtitleHeight = 0
		end
	end
	Citizen.CreateThread(function()
		if not HasScaleformMovieLoaded(Menu.InstructionalScaleform) then
			Menu.InstructionalScaleform = RequestScaleformMovie("INSTRUCTIONAL_BUTTONS")
			while not HasScaleformMovieLoaded(Menu.InstructionalScaleform) do
				Citizen.Wait(10)
			end
		end
	end)
	return setmetatable(Menu, RageUIMenus)
end
function RageUI.UpdateHeader(url, width, height)
    cock_txt = CreateRuntimeTxd('Menu_Cock')
    cock_Header = CreateDui(url, width, height)
    cock_Handle = GetDuiHandle(cock_Header)
    Texture = CreateRuntimeTextureFromDuiHandle(cock_txt, 'MenuHeader_Cock', cock_Handle)
    DefaultSprite = 'Menu_Cock'
    DefaultTexture = 'MenuHeader_Cock'
end
function RageUI.CreateSubMenu(ParentMenu, Title, Subtitle, X, Y, TextureDictionary, TextureName, R, G, B, A)
	if ParentMenu ~= nil then
		if ParentMenu() then
			local Menu = RageUI.CreateMenu(Title or ParentMenu.Title, Subtitle or ParentMenu.Subtitle, X or ParentMenu.X, Y or ParentMenu.Y)
			Menu.Parent = ParentMenu
			Menu.WidthOffset = ParentMenu.WidthOffset
			Menu.Safezone = ParentMenu.Safezone
			if ParentMenu.Sprite then
				Menu.Sprite = { Dictionary = TextureDictionary or ParentMenu.Sprite.Dictionary, Texture = TextureName or ParentMenu.Sprite.Texture, Color = { R = R or ParentMenu.Sprite.Color.R, G = G or ParentMenu.Sprite.Color.G, B = B or ParentMenu.Sprite.Color.B, A = A or ParentMenu.Sprite.Color.A } }
			else
				Menu.Rectangle = ParentMenu.Rectangle
			end
			return setmetatable(Menu, RageUIMenus)
		else
			return nil
		end
	else
		return nil
	end
end
--Moved down Cause Cock
function RageUI.Banner()
    local CurrentMenu = RageUI.CurrentMenu
    if CurrentMenu ~= nil then
        if (CurrentMenu.Display.Header) then
            RageUI.ItemsSafeZone(CurrentMenu)
            if CurrentMenu.Sprite ~= nil then
                if CurrentMenu.Sprite.Dictionary ~= nil then
                    if CurrentMenu.Sprite.Dictionary == "commonmenu" then
                        Graphics.Sprite(DefaultSprite, DefaultTexture, CurrentMenu.X, CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, CurrentMenu.Sprite.Color.R, CurrentMenu.Sprite.Color.G, CurrentMenu.Sprite.Color.B, CurrentMenu.Sprite.Color.A)
                    end
                else
                    Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, CurrentMenu.Rectangle.R, CurrentMenu.Rectangle.G, CurrentMenu.Rectangle.B, CurrentMenu.Rectangle.A)
                end
            else
                Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, CurrentMenu.Rectangle.R, CurrentMenu.Rectangle.G, CurrentMenu.Rectangle.B, CurrentMenu.Rectangle.A)
            end
            Graphics.Text(HeaderTitle, CurrentMenu.X + RageUI.Settings.Items.Title.Text.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + RageUI.Settings.Items.Title.Text.Y, CurrentMenu.TitleFont, CurrentMenu.TitleScale, 255, 255, 255, 255, 1)
            RageUI.ItemOffset = RageUI.ItemOffset + RageUI.Settings.Items.Title.Background.Height
        end
    end
end
function RageUIMenus:SetSubtitle(Subtitle)
	self.Subtitle = Subtitle or self.Subtitle
	if string.starts(self.Subtitle, "~") then
		self.PageCounterColour = string.lower(string.sub(self.Subtitle, 1, 3))
	else
		self.PageCounterColour = ""
	end
	if self.Subtitle ~= "" then
		local SubtitleLineCount = Graphics.GetLineCount(self.Subtitle, self.X + RageUI.Settings.Items.Subtitle.Text.X, self.Y + RageUI.Settings.Items.Subtitle.Text.Y, 0, RageUI.Settings.Items.Subtitle.Text.Scale, 245, 245, 245, 255, nil, false, false, RageUI.Settings.Items.Subtitle.Background.Width + self.WidthOffset)
		if SubtitleLineCount > 1 then
			self.SubtitleHeight = 18 * SubtitleLineCount
		else
			self.SubtitleHeight = 0
		end
	else
		self.SubtitleHeight = -37
	end
end
function RageUIMenus:AddInstructionButton(button)
	if type(button) == "table" and #button == 2 then
		table.insert(self.InstructionalButtons, button)
		self.UpdateInstructionalButtons(true);
	end
end
function RageUIMenus:RemoveInstructionButton(button)
	if type(button) == "table" then
		for i = 1, #self.InstructionalButtons do
			if button == self.InstructionalButtons[i] then
				table.remove(self.InstructionalButtons, i)
				self.UpdateInstructionalButtons(true);
				break
			end
		end
	else
		if tonumber(button) then
			if self.InstructionalButtons[tonumber(button)] then
				table.remove(self.InstructionalButtons, tonumber(button))
				self.UpdateInstructionalButtons(true);
			end
		end
	end
end
function RageUIMenus:UpdateInstructionalButtons(Visible)
	if not Visible then
		return
	end
	BeginScaleformMovieMethod(self.InstructionalScaleform, "CLEAR_ALL")
	EndScaleformMovieMethod()
	BeginScaleformMovieMethod(self.InstructionalScaleform, "TOGGLE_MOUSE_BUTTONS")
	ScaleformMovieMethodAddParamInt(0)
	EndScaleformMovieMethod()
	BeginScaleformMovieMethod(self.InstructionalScaleform, "CREATE_CONTAINER")
	EndScaleformMovieMethod()
	BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_DATA_SLOT")
	ScaleformMovieMethodAddParamInt(0)
	PushScaleformMovieMethodParameterButtonName(GetControlInstructionalButton(2, 176, 0))
	PushScaleformMovieMethodParameterString(GetLabelText("HUD_INPUT2"))
	EndScaleformMovieMethod()
	if self.Closable then
		BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_DATA_SLOT")
		ScaleformMovieMethodAddParamInt(1)
		PushScaleformMovieMethodParameterButtonName(GetControlInstructionalButton(2, 177, 0))
		PushScaleformMovieMethodParameterString(GetLabelText("HUD_INPUT3"))
		EndScaleformMovieMethod()
	end
	local count = 2
	if (self.InstructionalButtons ~= nil) then
		for i = 1, #self.InstructionalButtons do
			if self.InstructionalButtons[i] then
				if #self.InstructionalButtons[i] == 2 then
					BeginScaleformMovieMethod(self.InstructionalScaleform, "SET_DATA_SLOT")
					ScaleformMovieMethodAddParamInt(count)
					PushScaleformMovieMethodParameterButtonName(self.InstructionalButtons[i][1])
					PushScaleformMovieMethodParameterString(self.InstructionalButtons[i][2])
					EndScaleformMovieMethod()
					count = count + 1
				end
			end
		end
	end
	BeginScaleformMovieMethod(self.InstructionalScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
	ScaleformMovieMethodAddParamInt(-1)
	EndScaleformMovieMethod()
end
function RageUIMenus:IsVisible(Item, Panel)
	if (RageUI.Visible(self)) and (UpdateOnscreenKeyboard() ~= 0) and (UpdateOnscreenKeyboard() ~= 3) then
		RageUI.Banner()
		RageUI.Subtitle()
		Item(Items);
		RageUI.Background();
		RageUI.Navigation();
		RageUI.Description();
		Panel(Panels);
		RageUI.PoolMenus.Timer = 1
		RageUI.Render()
	end
end
function RageUIMenus:KeysRegister(Controls, ControlName, Description, Action)
	RegisterKeyMapping(string.format('riv-%s', ControlName), Description, "keyboard", Controls)
	RegisterCommand(string.format('riv-%s', ControlName), function(source, args)
		if (Action ~= nil) then
			Action();
		end
	end, false)
end
RageUI.LastControl = false
local ControlActions = {
	'Left',
	'Right',
	'Select',
	'Click',
}
function RageUI.GoUp(Options)
	local CurrentMenu = RageUI.CurrentMenu;
	if CurrentMenu ~= nil then
		Options = CurrentMenu.Options
		if CurrentMenu() then
			if (Options ~= 0) then
				if Options > CurrentMenu.Pagination.Total then
					if CurrentMenu.Index <= CurrentMenu.Pagination.Minimum then
						if CurrentMenu.Index == 1 then
							CurrentMenu.Pagination.Minimum = Options - (CurrentMenu.Pagination.Total - 1)
							CurrentMenu.Pagination.Maximum = Options
							CurrentMenu.Index = Options
						else
							CurrentMenu.Pagination.Minimum = (CurrentMenu.Pagination.Minimum - 1)
							CurrentMenu.Pagination.Maximum = (CurrentMenu.Pagination.Maximum - 1)
							CurrentMenu.Index = CurrentMenu.Index - 1
						end
					else
						CurrentMenu.Index = CurrentMenu.Index - 1
					end
				else
					if CurrentMenu.Index == 1 then
						CurrentMenu.Pagination.Minimum = Options - (CurrentMenu.Pagination.Total - 1)
						CurrentMenu.Pagination.Maximum = Options
						CurrentMenu.Index = Options
					else
						CurrentMenu.Index = CurrentMenu.Index - 1
					end
				end
				Audio.PlaySound(RageUI.Settings.Audio.UpDown.audioName, RageUI.Settings.Audio.UpDown.audioRef)
				RageUI.LastControl = true
				if (CurrentMenu.onIndexChange ~= nil) then
					CurrentMenu.onIndexChange(CurrentMenu.Index)
				end
			else
				Audio.PlaySound(RageUI.Settings.Audio.Error.audioName, RageUI.Settings.Audio.Error.audioRef)
			end
		end
	end
end
function RageUI.GoDown(Options)
	local CurrentMenu = RageUI.CurrentMenu;
	if CurrentMenu ~= nil then
		Options = CurrentMenu.Options
		if CurrentMenu() then
			if (Options ~= 0) then
				if Options > CurrentMenu.Pagination.Total then
					if CurrentMenu.Index >= CurrentMenu.Pagination.Maximum then
						if CurrentMenu.Index == Options then
							CurrentMenu.Pagination.Minimum = 1
							CurrentMenu.Pagination.Maximum = CurrentMenu.Pagination.Total
							CurrentMenu.Index = 1
						else
							CurrentMenu.Pagination.Maximum = (CurrentMenu.Pagination.Maximum + 1)
							CurrentMenu.Pagination.Minimum = CurrentMenu.Pagination.Maximum - (CurrentMenu.Pagination.Total - 1)
							CurrentMenu.Index = CurrentMenu.Index + 1
						end
					else
						CurrentMenu.Index = CurrentMenu.Index + 1
					end
				else
					if CurrentMenu.Index == Options then
						CurrentMenu.Pagination.Minimum = 1
						CurrentMenu.Pagination.Maximum = CurrentMenu.Pagination.Total
						CurrentMenu.Index = 1
					else
						CurrentMenu.Index = CurrentMenu.Index + 1
					end
				end
				Audio.PlaySound(RageUI.Settings.Audio.UpDown.audioName, RageUI.Settings.Audio.UpDown.audioRef)
				RageUI.LastControl = false
				if (CurrentMenu.onIndexChange ~= nil) then
					CurrentMenu.onIndexChange(CurrentMenu.Index)
				end
			else
				Audio.PlaySound(RageUI.Settings.Audio.Error.audioName, RageUI.Settings.Audio.Error.audioRef)
			end
		end
	end
end
function RageUI.GoActionControl(Controls, Action)
	if Controls[Action or 'Left'].Enabled then
		for Index = 1, #Controls[Action or 'Left'].Keys do
			if not Controls[Action or 'Left'].Pressed then
				if IsDisabledControlJustPressed(Controls[Action or 'Left'].Keys[Index][1], Controls[Action or 'Left'].Keys[Index][2]) then
					Controls[Action or 'Left'].Pressed = true
					Citizen.CreateThread(function()
						Controls[Action or 'Left'].Active = true
						Citizen.Wait(0.01)
						Controls[Action or 'Left'].Active = false
						Citizen.Wait(175)
						while Controls[Action or 'Left'].Enabled and IsDisabledControlPressed(Controls[Action or 'Left'].Keys[Index][1], Controls[Action or 'Left'].Keys[Index][2]) do
							Controls[Action or 'Left'].Active = true
							Citizen.Wait(1)
							Controls[Action or 'Left'].Active = false
							Citizen.Wait(124)
						end
						Controls[Action or 'Left'].Pressed = false
						if (Action ~= ControlActions[5]) then
							Citizen.Wait(10)
						end
					end)
					break
				end
			end
		end
	end
end
function RageUI.GoActionControlSlider(Controls, Action)
	if Controls[Action].Enabled then
		for Index = 1, #Controls[Action].Keys do
			if not Controls[Action].Pressed then
				if IsDisabledControlJustPressed(Controls[Action].Keys[Index][1], Controls[Action].Keys[Index][2]) then
					Controls[Action].Pressed = true
					Citizen.CreateThread(function()
						Controls[Action].Active = true
						Citizen.Wait(1)
						Controls[Action].Active = false
						while Controls[Action].Enabled and IsDisabledControlPressed(Controls[Action].Keys[Index][1], Controls[Action].Keys[Index][2]) do
							Controls[Action].Active = true
							Citizen.Wait(1)
							Controls[Action].Active = false
						end
						Controls[Action].Pressed = false
					end)
					break
				end
			end
		end
	end
end
function RageUI.Controls()
	local CurrentMenu = RageUI.CurrentMenu;
	if CurrentMenu ~= nil then
		if CurrentMenu() then
			if CurrentMenu.Open then
				local Controls = CurrentMenu.Controls;
				local Options = CurrentMenu.Options
				RageUI.Options = CurrentMenu.Options
				if CurrentMenu.EnableMouse then
					DisableAllControlActions(2)
				end
				if not IsInputDisabled(2) then
					for Index = 1, #Controls.Enabled.Controller do
						EnableControlAction(Controls.Enabled.Controller[Index][1], Controls.Enabled.Controller[Index][2], true)
					end
				else
					for Index = 1, #Controls.Enabled.Keyboard do
						EnableControlAction(Controls.Enabled.Keyboard[Index][1], Controls.Enabled.Keyboard[Index][2], true)
					end
				end
				if Controls.Up.Enabled then
					for Index = 1, #Controls.Up.Keys do
						if not Controls.Up.Pressed then
							if IsDisabledControlJustPressed(Controls.Up.Keys[Index][1], Controls.Up.Keys[Index][2]) then
								Controls.Up.Pressed = true
								Citizen.CreateThread(function()
									RageUI.GoUp(Options)
									Citizen.Wait(200)
									while Controls.Up.Enabled and IsDisabledControlPressed(Controls.Up.Keys[Index][1], Controls.Up.Keys[Index][2]) do
										RageUI.GoUp(Options)
										Citizen.Wait(100)
									end
									Controls.Up.Pressed = false
								end)
								break
							end
						end
					end
				end
				if Controls.Down.Enabled then
					for Index = 1, #Controls.Down.Keys do
						if not Controls.Down.Pressed then
							if IsDisabledControlJustPressed(Controls.Down.Keys[Index][1], Controls.Down.Keys[Index][2]) then
								Controls.Down.Pressed = true
								Citizen.CreateThread(function()
									RageUI.GoDown(Options)
									Citizen.Wait(200)
									while Controls.Down.Enabled and IsDisabledControlPressed(Controls.Down.Keys[Index][1], Controls.Down.Keys[Index][2]) do
										RageUI.GoDown(Options)
										Citizen.Wait(100)
									end
									Controls.Down.Pressed = false
								end)
								break
							end
						end
					end
				end
				for i = 1, #ControlActions do
					RageUI.GoActionControl(Controls, ControlActions[i])
				end
				RageUI.GoActionControlSlider(Controls, 'SliderLeft')
				RageUI.GoActionControlSlider(Controls, 'SliderRight')
				if Controls.Back.Enabled then
					for Index = 1, #Controls.Back.Keys do
						if not Controls.Back.Pressed then
							if IsDisabledControlJustPressed(Controls.Back.Keys[Index][1], Controls.Back.Keys[Index][2]) then
								Controls.Back.Pressed = true
								Citizen.CreateThread(function()
									Citizen.Wait(255)
									Controls.Down.Pressed = false
								end)
								break
							end
						end
					end
				end
			end
		end
	end
end
function RageUI.Navigation()
	local CurrentMenu = RageUI.CurrentMenu;
	if CurrentMenu ~= nil then
		if CurrentMenu() and (CurrentMenu.Display.Navigation) then
			if CurrentMenu.EnableMouse then
				SetMouseCursorActiveThisFrame()
			end
			if RageUI.Options > CurrentMenu.Pagination.Total then
				local UpHovered = false
				local DownHovered = false
				if not CurrentMenu.SafeZoneSize then
					CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }
					if CurrentMenu.Safezone then
						CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()
						SetScriptGfxAlign(76, 84)
						SetScriptGfxAlignParams(0, 0, 0, 0)
					end
				end
				if CurrentMenu.EnableMouse then
					UpHovered = Graphics.IsMouseInBounds(CurrentMenu.X + CurrentMenu.SafeZoneSize.X, CurrentMenu.Y + CurrentMenu.SafeZoneSize.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height)
					DownHovered = Graphics.IsMouseInBounds(CurrentMenu.X + CurrentMenu.SafeZoneSize.X, CurrentMenu.Y + RageUI.Settings.Items.Navigation.Rectangle.Height + CurrentMenu.SafeZoneSize.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height)
					if CurrentMenu.Controls.Click.Active then
						if UpHovered then
							RageUI.GoUp(RageUI.Options)
						elseif DownHovered then
							RageUI.GoDown(RageUI.Options)
						end
					end
					if UpHovered then
						Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height, 30, 30, 30, 255)
					else
						Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height, 0, 0, 0, 200)
					end

					if DownHovered then
						Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + RageUI.Settings.Items.Navigation.Rectangle.Height + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height, 30, 30, 30, 255)
					else
						Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + RageUI.Settings.Items.Navigation.Rectangle.Height + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height, 0, 0, 0, 200)
					end
				else
					Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height, 0, 0, 0, 200)
					Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + RageUI.Settings.Items.Navigation.Rectangle.Height + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Rectangle.Width + CurrentMenu.WidthOffset, RageUI.Settings.Items.Navigation.Rectangle.Height, 0, 0, 0, 200)
				end
				Graphics.Sprite(RageUI.Settings.Items.Navigation.Arrows.Dictionary, RageUI.Settings.Items.Navigation.Arrows.Texture, CurrentMenu.X + RageUI.Settings.Items.Navigation.Arrows.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + RageUI.Settings.Items.Navigation.Arrows.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Navigation.Arrows.Width, RageUI.Settings.Items.Navigation.Arrows.Height)
				RageUI.ItemOffset = RageUI.ItemOffset + (RageUI.Settings.Items.Navigation.Rectangle.Height * 2)
			end
		end
	end
end
function RageUI.GoBack()
	local CurrentMenu = RageUI.CurrentMenu
	if CurrentMenu ~= nil then
		Audio.PlaySound(RageUI.Settings.Audio.Back.audioName, RageUI.Settings.Audio.Back.audioRef)
		if CurrentMenu.Parent ~= nil then
			if CurrentMenu.Parent() then
				RageUI.NextMenu = CurrentMenu.Parent
			else
				RageUI.NextMenu = nil
				RageUI.Visible(CurrentMenu, false)
			end
		else
			RageUI.NextMenu = nil
			RageUI.Visible(CurrentMenu, false)
		end
	end
end
Audio = {}
function Audio.PlaySound(Library, Sound, IsLooped)
    local audioId
    if not IsLooped then
        PlaySoundFrontend(-1, Sound, Library, true)
    else
        if not audioId then
            Citizen.CreateThread(function()
                audioId = GetSoundId()
                PlaySoundFrontend(audioId, Sound, Library, true)
                Citizen.Wait(100)
                StopSound(audioId)
                ReleaseSoundId(audioId)
                audioId = nil
            end)
        end
    end
end
local function StringToArray(str)
    local charCount = #str
    local strCount = math.ceil(charCount / 99)
    local strings = {}
    for i = 1, strCount do
        local start = (i - 1) * 99 + 1
        local clamp = math.clamp(#string.sub(str, start), 0, 99)
        local finish = ((i ~= 1) and (start - 1) or 0) + clamp
        strings[i] = string.sub(str, start, finish)
    end
    return strings
end
local function AddText(str)
    local str = tostring(str)
    local charCount = #str
    if charCount < 100 then
        AddTextComponentSubstringPlayerName(str)
    else
        local strings = StringToArray(str)
        for s = 1, #strings do
            AddTextComponentSubstringPlayerName(strings[s])
        end
    end
end
local function RText(text, x, y, font, scale, r, g, b, a, alignment, dropShadow, outline, wordWrap)
    local Text, X, Y = text, (x or 0) / 1920, (y or 0) / 1080
    SetTextFont(font or 0)
    SetTextScale(1.0, scale or 0)
    SetTextColour(r or 255, g or 255, b or 255, a or 255)
    if dropShadow then
        SetTextDropShadow()
    end
    if outline then
        SetTextOutline()
    end
    if alignment ~= nil then
        if alignment == 1 or alignment == "Center" or alignment == "Centre" then
            SetTextCentre(true)
        elseif alignment == 2 or alignment == "Right" then
            SetTextRightJustify(true)
        end
    end
    if wordWrap and wordWrap ~= 0 then
        if alignment == 1 or alignment == "Center" or alignment == "Centre" then
            SetTextWrap(X - ((wordWrap / 1920) / 2), X + ((wordWrap / 1920) / 2))
        elseif alignment == 2 or alignment == "Right" then
            SetTextWrap(0, X)
        else
            SetTextWrap(X, X + (wordWrap / 1920))
        end
    else
        if alignment == 2 or alignment == "Right" then
            SetTextWrap(0, X)
        end
    end
    return Text, X, Y
end
Graphics = {};
function Graphics.MeasureStringWidth(str, font, scale)
    BeginTextCommandGetWidth("CELL_EMAIL_BCON")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 0)
    SetTextScale(1.0, scale or 0)
    return EndTextCommandGetWidth(true) * 1920
end
function Graphics.Rectangle(x, y, width, height, r, g, b, a)
    local X, Y, Width, Height = (x or 0) / 1920, (y or 0) / 1080, (width or 0) / 1920, (height or 0) / 1080
    DrawRect(X + Width * 0.5, Y + Height * 0.5, Width, Height, r or 255, g or 255, b or 255, a or 255)
end
function Graphics.Sprite(dictionary, name, x, y, width, height, heading, r, g, b, a)
    local X, Y, Width, Height = (x or 0) / 1920, (y or 0) / 1080, (width or 0) / 1920, (height or 0) / 1080
    if not HasStreamedTextureDictLoaded(dictionary) then
        RequestStreamedTextureDict(dictionary, true)
    end
    DrawSprite(dictionary, name, X + Width * 0.5, Y + Height * 0.5, Width, Height, heading or 0, r or 255, g or 255, b or 255, a or 255)
end
function Graphics.GetLineCount(text, x, y, font, scale, r, g, b, a, alignment, dropShadow, outline, wordWrap)
    local Text, X, Y = RText(text, x, y, font, scale, r, g, b, a, alignment, dropShadow, outline, wordWrap)
    BeginTextCommandLineCount("CELL_EMAIL_BCON")
    AddText(Text)
    return EndTextCommandLineCount(X, Y)
end
function Graphics.Text(text, x, y, font, scale, r, g, b, a, alignment, dropShadow, outline, wordWrap)
    local Text, X, Y = RText(text, x, y, font, scale, r, g, b, a, alignment, dropShadow, outline, wordWrap)
    BeginTextCommandDisplayText("CELL_EMAIL_BCON")
    AddText(Text)
    EndTextCommandDisplayText(X, Y)
end
function Graphics.IsMouseInBounds(X, Y, Width, Height)
    local MX, MY = math.round(GetControlNormal(2, 239) * 1920) / 1920, math.round(GetControlNormal(2, 240) * 1080) / 1080
    X, Y = X / 1920, Y / 1080
    Width, Height = Width / 1920, Height / 1080
    return (MX >= X and MX <= X + Width) and (MY > Y and MY < Y + Height)
end
function Graphics.ConvertToPixel(x, y)
    return (x * 1920), (y * 1080)
end
function Graphics.ScreenToWorld(distance, flags)
    local camRot = GetGameplayCamRot(0)
    local camPos = GetGameplayCamCoord()
    local mouse = vector2(GetControlNormal(2, 239), GetControlNormal(2, 240))
    local cam3DPos, forwardDir = Graphics.ScreenRelToWorld(camPos, camRot, mouse)
    local direction = camPos + forwardDir * distance
    local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(cam3DPos, direction, flags, 0, 0)
    local _, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)
    return (hit == 1 and true or false), endCoords, surfaceNormal, entityHit, (entityHit >= 1 and GetEntityType(entityHit) or 0), direction, mouse
end
function Graphics.ScreenRelToWorld(camPos, camRot, cursor)
    local camForward = Graphics.RotationToDirection(camRot)
    local rotUp = vector3(camRot.x + 1.0, camRot.y, camRot.z)
    local rotDown = vector3(camRot.x - 1.0, camRot.y, camRot.z)
    local rotLeft = vector3(camRot.x, camRot.y, camRot.z - 1.0)
    local rotRight = vector3(camRot.x, camRot.y, camRot.z + 1.0)
    local camRight = Graphics.RotationToDirection(rotRight) - Graphics.RotationToDirection(rotLeft)
    local camUp = Graphics.RotationToDirection(rotUp) - Graphics.RotationToDirection(rotDown)
    local rollRad = -(camRot.y * math.pi / 180.0)
    local camRightRoll = camRight * math.cos(rollRad) - camUp * math.sin(rollRad)
    local camUpRoll = camRight * math.sin(rollRad) + camUp * math.cos(rollRad)
    local point3DZero = camPos + camForward * 1.0
    local point3D = point3DZero + camRightRoll + camUpRoll
    local point2D = Graphics.World3DToScreen2D(point3D)
    local point2DZero = Graphics.World3DToScreen2D(point3DZero)
    local scaleX = (cursor.x - point2DZero.x) / (point2D.x - point2DZero.x)
    local scaleY = (cursor.y - point2DZero.y) / (point2D.y - point2DZero.y)
    local point3Dret = point3DZero + camRightRoll * scaleX + camUpRoll * scaleY
    local forwardDir = camForward + camRightRoll * scaleX + camUpRoll * scaleY
    return point3Dret, forwardDir
end
function Graphics.RotationToDirection(rotation)
    local x, z = (rotation.x * math.pi / 180.0), (rotation.z * math.pi / 180.0)
    local num = math.abs(math.cos(x))
    return vector3((-math.sin(z) * num), (math.cos(z) * num), math.sin(x))
end
function Graphics.World3DToScreen2D(pos)
    local _, sX, sY = GetScreenCoordFromWorldCoord(pos.x, pos.y, pos.z)
    return vector2(sX, sY)
end
Keys = {};
function Keys.Register(Controls, ControlName, Description, Action)
    RegisterKeyMapping(string.format('keys-%s', ControlName), Description, "keyboard", Controls)
    RegisterCommand(string.format('keys-%s', ControlName), function()
        if (Action ~= nil) then
            Action();
        end
    end, false)
end
function math.round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end
function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end
Visual = {};
local function AddLongString(txt)
    for i = 100, string.len(txt), 99 do
        local sub = string.sub(txt, i, i + 99)
        AddTextComponentSubstringPlayerName(sub)
    end
end
function Visual.Notification(args)
    if (not args.dict) and (args.name )then
        args.dict = args.name
    end
    if not HasStreamedTextureDictLoaded(args.dict) then
        RequestStreamedTextureDict(args.dict, false)
        while not HasStreamedTextureDictLoaded(args.dict) do Wait(10) end
    end
    if (args.backId) then
        ThefeedNextPostBackgroundColor(args.backId)
    end
    BeginTextCommandThefeedPost("jamyfafi")
    if (args.message) then
        AddTextComponentSubstringPlayerName(args.message)
        if string.len(args.message) > 99 then
            AddLongString(args.message)
        end
    end
    if (args.title) and (args.subtitle) and (args.name) then
        EndTextCommandThefeedPostMessagetext(args.dict or "CHAR_DEFAULT", args.name or "CHAR_DEFAULT", true, args.icon or 0, args.title or "", args.subtitle or "")
        SetStreamedTextureDictAsNoLongerNeeded(args.dict)
    end
    EndTextCommandThefeedPostTicker(false, true)
end
function Visual.Subtitle(text, time)
    ClearPrints()
    BeginTextCommandPrint("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandPrint(time and math.ceil(time) or 0, true)
end
function Visual.FloatingHelpText(text, sound, loop)
    BeginTextCommandDisplayHelp("jamyfafi")
    AddTextComponentSubstringPlayerName(text)
    if string.len(text) > 99 then
        AddLongString(text)
    end
    EndTextCommandDisplayHelp(0, loop or 0, sound or false, -1)
end
function Visual.Prompt(text, spinner)
    BeginTextCommandBusyspinnerOn("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandBusyspinnerOn(spinner or 1)
end
function Visual.PromptDuration(duration, text, spinner)
    Citizen.CreateThread(function()
        Citizen.Wait(0)
        Visual.Prompt(text, spinner)
        Citizen.Wait(duration)
        if (BusyspinnerIsOn()) then
            BusyspinnerOff();
        end
    end)
end
function Visual.FloatingHelpTextToEntity(text, x, y)
    SetFloatingHelpTextScreenPosition(1, x, y)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp("jamyfafi")
    AddTextComponentSubstringPlayerName(text)
    if string.len(text) > 99 then
        AddLongString(text)
    end
    EndTextCommandDisplayHelp(2, false, false, -1)
end
RageUI.BadgeStyle = {
    None = function()
        return {
            BadgeTexture = "",
            BadgeDictionary = "commonmenu"
        }
    end,
    BronzeMedal = function()
        return {
            BadgeTexture = "mp_medal_bronze",
        }
    end,
    GoldMedal = function()
        return {
            BadgeTexture = "mp_medal_gold",
        }
    end,
    SilverMedal = function()
        return {
            BadgeTexture = "medal_silver",
        }
    end,
    Alert = function()
        return {
            BadgeTexture = "mp_alerttriangle",
        }
    end,
    Crown = function(Selected)
        return {
            BadgeTexture = "mp_hostcrown",
            BadgeColour = Selected and { R = 0, G = 0, B = 0, A = 255 } or { R = 255, G = 255, B = 255, A = 255 }
        }
    end,
    Ammo = function(Selected)
        return {
            BadgeTexture = Selected and "shop_ammo_icon_b" or "shop_ammo_icon_a",
        }
    end,
    Armour = function(Selected)
        return {
            BadgeTexture = Selected and "shop_armour_icon_b" or "shop_armour_icon_a",
        }
    end,
    Barber = function(Selected)
        return {
            BadgeTexture = Selected and "shop_barber_icon_b" or "shop_barber_icon_a",
        }
    end,
    Clothes = function(Selected)
        return {
            BadgeTexture = Selected and "shop_clothing_icon_b" or "shop_clothing_icon_a",
        }
    end,
    Franklin = function(Selected)
        return {
            BadgeTexture = Selected and "shop_franklin_icon_b" or "shop_franklin_icon_a",
        }
    end,
    Bike = function(Selected)
        return {
            BadgeTexture = Selected and "shop_garage_bike_icon_b" or "shop_garage_bike_icon_a",
        }
    end,
    Car = function(Selected)
        return {
            BadgeTexture = Selected and "shop_garage_icon_b" or "shop_garage_icon_a",
        }
    end,
    Boat = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_boat_black" or "mp_specitem_boat",
            BadgeDictionary = "mpinventory"
        }
    end,
    Heli = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_heli_black" or "mp_specitem_heli",
            BadgeDictionary = "mpinventory"
        }
    end,
    Plane = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_plane_black" or "mp_specitem_plane",
            BadgeDictionary = "mpinventory"
        }
    end,
    BoatPickup = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_boatpickup_black" or "mp_specitem_boatpickup",
            BadgeDictionary = "mpinventory"
        }
    end,
    Card = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_keycard_black" or "mp_specitem_keycard",
            BadgeDictionary = "mpinventory"
        }
    end,
    Gun = function(Selected)
        return {
            BadgeTexture = Selected and "shop_gunclub_icon_b" or "shop_gunclub_icon_a",
        }
    end,
    Heart = function(Selected)
        return {
            BadgeTexture = Selected and "shop_health_icon_b" or "shop_health_icon_a",
        }
    end,
    Makeup = function(Selected)
        return {
            BadgeTexture = Selected and "shop_makeup_icon_b" or "shop_makeup_icon_a",
        }
    end,
    Mask = function(Selected)
        return {
            BadgeTexture = Selected and "shop_mask_icon_b" or "shop_mask_icon_a",
        }
    end,
    Michael = function(Selected)
        return {
            BadgeTexture = Selected and "shop_michael_icon_b" or "shop_michael_icon_a",
        }
    end,
    Star = function()
        return {
            BadgeTexture = "shop_new_star",
        }
    end,
    Tattoo = function(Selected)
        return {
            BadgeTexture = Selected and "shop_tattoos_icon_b" or "shop_tattoos_icon_a",
        }
    end,
    Trevor = function(Selected)
        return {
            BadgeTexture = Selected and "shop_trevor_icon_b" or "shop_trevor_icon_a",
        }
    end,
    Lock = function(Selected)
        return {
            BadgeTexture = "shop_lock",
            BadgeColour = Selected and { R = 0, G = 0, B = 0, A = 255 } or { R = 255, G = 255, B = 255, A = 255 }
        }
    end,
    Tick = function(Selected)
        return {
            BadgeTexture = "shop_tick_icon",
            BadgeColour = Selected and { R = 0, G = 0, B = 0, A = 255 } or { R = 255, G = 255, B = 255, A = 255 }
        }
    end,
    Key = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_cuffkeys_black" or "mp_specitem_cuffkeys",
            BadgeDictionary = "mpinventory"
        }
    end,
    Coke = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_coke_black" or "mp_specitem_coke",
            BadgeDictionary = "mpinventory"
        }
    end,
    Heroin = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_heroin_black" or "mp_specitem_heroin",
            BadgeDictionary = "mpinventory"
        }
    end,
    Meth = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_meth_black" or "mp_specitem_meth",
            BadgeDictionary = "mpinventory"
        }
    end,
    Weed = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_weed_black" or "mp_specitem_weed",
            BadgeDictionary = "mpinventory"
        }
    end,
    Package = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_package_black" or "mp_specitem_package",
            BadgeDictionary = "mpinventory"
        }
    end,
    Cash = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_cash_black" or "mp_specitem_cash",
            BadgeDictionary = "mpinventory"
        }
    end,
    RP = function(Selected)
        return {
            BadgeTexture = "mp_anim_rp",
            BadgeDictionary = "mphud"
        }
    end,
    LSPD = function()
        return {
            BadgeTexture = "mpgroundlogo_cops",
            BadgeDictionary = "3dtextures"
        }
    end,
    Vagos = function()
        return {
            BadgeTexture = "mpgroundlogo_vagos",
            BadgeDictionary = "3dtextures"
        }
    end,
    Bikers = function()
        return {
            BadgeTexture = "mpgroundlogo_bikers",
            BadgeDictionary = "3dtextures"
        }
    end,

    Badbeat = function()
        return {
            BadgeTexture = "badbeat",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    CashingOut = function()
        return {
            BadgeTexture = "cashingout",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    FullHouse = function()
        return {
            BadgeTexture = "fullhouse",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    HighRoller = function()
        return {
            BadgeTexture = "highroller",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    HouseKeeping = function()
        return {
            BadgeTexture = "housekeeping",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    LooseCheng = function()
        return {
            BadgeTexture = "loosecheng",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    LuckyLucky = function()
        return {
            BadgeTexture = "luckylucky",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    PlayToWin = function()
        return {
            BadgeTexture = "playtowin",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    StraightFlush = function()
        return {
            BadgeTexture = "straightflush",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    StrongArmTactics = function()
        return {
            BadgeTexture = "strongarmtactics",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    TopPair = function()
        return {
            BadgeTexture = "toppair",
            BadgeDictionary = "mpawardcasino"
        }
    end,
}
RageUI.ItemsColour = {
    PureWhite = { 255, 255, 255, 255 },
    White = { 240, 240, 240, 255 },
    Black = { 0, 0, 0, 255 },
    Grey = { 155, 155, 155, 255 },
    GreyLight = { 205, 205, 205, 255 },
    GreyDark = { 77, 77, 77, 255 },
    Red = { 224, 50, 50, 255 },
    RedLight = { 240, 153, 153, 255 },
    RedDark = { 112, 25, 25, 255 },
    Blue = { 93, 182, 229, 255 },
    BlueLight = { 174, 219, 242, 255 },
    BlueDark = { 47, 92, 115, 255 },
    Yellow = { 240, 200, 80, 255 },
    YellowLight = { 254, 235, 169, 255 },
    YellowDark = { 126, 107, 41, 255 },
    Orange = { 255, 133, 85, 255 },
    OrangeLight = { 255, 194, 170, 255 },
    OrangeDark = { 127, 66, 42, 255 },
    Green = { 114, 204, 114, 255 },
    GreenLight = { 185, 230, 185, 255 },
    GreenDark = { 57, 102, 57, 255 },
    Purple = { 132, 102, 226, 255 },
    PurpleLight = { 192, 179, 239, 255 },
    PurpleDark = { 67, 57, 111, 255 },
    Pink = { 203, 54, 148, 255 },
    RadarHealth = { 53, 154, 71, 255 },
    RadarArmour = { 93, 182, 229, 255 },
    RadarDamage = { 235, 36, 39, 255 },
    NetPlayer1 = { 194, 80, 80, 255 },
    NetPlayer2 = { 156, 110, 175, 255 },
    NetPlayer3 = { 255, 123, 196, 255 },
    NetPlayer4 = { 247, 159, 123, 255 },
    NetPlayer5 = { 178, 144, 132, 255 },
    NetPlayer6 = { 141, 206, 167, 255 },
    NetPlayer7 = { 113, 169, 175, 255 },
    NetPlayer8 = { 211, 209, 231, 255 },
    NetPlayer9 = { 144, 127, 153, 255 },
    NetPlayer10 = { 106, 196, 191, 255 },
    NetPlayer11 = { 214, 196, 153, 255 },
    NetPlayer12 = { 234, 142, 80, 255 },
    NetPlayer13 = { 152, 203, 234, 255 },
    NetPlayer14 = { 178, 98, 135, 255 },
    NetPlayer15 = { 144, 142, 122, 255 },
    NetPlayer16 = { 166, 117, 94, 255 },
    NetPlayer17 = { 175, 168, 168, 255 },
    NetPlayer18 = { 232, 142, 155, 255 },
    NetPlayer19 = { 187, 214, 91, 255 },
    NetPlayer20 = { 12, 123, 86, 255 },
    NetPlayer21 = { 123, 196, 255, 255 },
    NetPlayer22 = { 171, 60, 230, 255 },
    NetPlayer23 = { 206, 169, 13, 255 },
    NetPlayer24 = { 71, 99, 173, 255 },
    NetPlayer25 = { 42, 166, 185, 255 },
    NetPlayer26 = { 186, 157, 125, 255 },
    NetPlayer27 = { 201, 225, 255, 255 },
    NetPlayer28 = { 240, 240, 150, 255 },
    NetPlayer29 = { 237, 140, 161, 255 },
    NetPlayer30 = { 249, 138, 138, 255 },
    NetPlayer31 = { 252, 239, 166, 255 },
    NetPlayer32 = { 240, 240, 240, 255 },
    SimpleBlipDefault = { 159, 201, 166, 255 },
    MenuBlue = { 140, 140, 140, 255 },
    MenuGreyLight = { 140, 140, 140, 255 },
    MenuBlueExtraDark = { 40, 40, 40, 255 },
    MenuYellow = { 240, 160, 0, 255 },
    MenuYellowDark = { 240, 160, 0, 255 },
    MenuGreen = { 240, 160, 0, 255 },
    MenuGrey = { 140, 140, 140, 255 },
    MenuGreyDark = { 60, 60, 60, 255 },
    MenuHighlight = { 30, 30, 30, 255 },
    MenuStandard = { 140, 140, 140, 255 },
    MenuDimmed = { 75, 75, 75, 255 },
    MenuExtraDimmed = { 50, 50, 50, 255 },
    BriefTitle = { 95, 95, 95, 255 },
    MidGreyMp = { 100, 100, 100, 255 },
    NetPlayer1Dark = { 93, 39, 39, 255 },
    NetPlayer2Dark = { 77, 55, 89, 255 },
    NetPlayer3Dark = { 124, 62, 99, 255 },
    NetPlayer4Dark = { 120, 80, 80, 255 },
    NetPlayer5Dark = { 87, 72, 66, 255 },
    NetPlayer6Dark = { 74, 103, 83, 255 },
    NetPlayer7Dark = { 60, 85, 88, 255 },
    NetPlayer8Dark = { 105, 105, 64, 255 },
    NetPlayer9Dark = { 72, 63, 76, 255 },
    NetPlayer10Dark = { 53, 98, 95, 255 },
    NetPlayer11Dark = { 107, 98, 76, 255 },
    NetPlayer12Dark = { 117, 71, 40, 255 },
    NetPlayer13Dark = { 76, 101, 117, 255 },
    NetPlayer14Dark = { 65, 35, 47, 255 },
    NetPlayer15Dark = { 72, 71, 61, 255 },
    NetPlayer16Dark = { 85, 58, 47, 255 },
    NetPlayer17Dark = { 87, 84, 84, 255 },
    NetPlayer18Dark = { 116, 71, 77, 255 },
    NetPlayer19Dark = { 93, 107, 45, 255 },
    NetPlayer20Dark = { 6, 61, 43, 255 },
    NetPlayer21Dark = { 61, 98, 127, 255 },
    NetPlayer22Dark = { 85, 30, 115, 255 },
    NetPlayer23Dark = { 103, 84, 6, 255 },
    NetPlayer24Dark = { 35, 49, 86, 255 },
    NetPlayer25Dark = { 21, 83, 92, 255 },
    NetPlayer26Dark = { 93, 98, 62, 255 },
    NetPlayer27Dark = { 100, 112, 127, 255 },
    NetPlayer28Dark = { 120, 120, 75, 255 },
    NetPlayer29Dark = { 152, 76, 93, 255 },
    NetPlayer30Dark = { 124, 69, 69, 255 },
    NetPlayer31Dark = { 10, 43, 50, 255 },
    NetPlayer32Dark = { 95, 95, 10, 255 },
    Bronze = { 180, 130, 97, 255 },
    Silver = { 150, 153, 161, 255 },
    Gold = { 214, 181, 99, 255 },
    Platinum = { 166, 221, 190, 255 },
    Gang1 = { 29, 100, 153, 255 },
    Gang2 = { 214, 116, 15, 255 },
    Gang3 = { 135, 125, 142, 255 },
    Gang4 = { 229, 119, 185, 255 },
    SameCrew = { 252, 239, 166, 255 },
    Freemode = { 45, 110, 185, 255 },
    PauseBg = { 0, 0, 0, 255 },
    Friendly = { 93, 182, 229, 255 },
    Enemy = { 194, 80, 80, 255 },
    Location = { 240, 200, 80, 255 },
    Pickup = { 114, 204, 114, 255 },
    PauseSingleplayer = { 114, 204, 114, 255 },
    FreemodeDark = { 22, 55, 92, 255 },
    InactiveMission = { 154, 154, 154, 255 },
    Damage = { 194, 80, 80, 255 },
    PinkLight = { 252, 115, 201, 255 },
    PmMitemHighlight = { 252, 177, 49, 255 },
    ScriptVariable = { 0, 0, 0, 255 },
    Yoga = { 109, 247, 204, 255 },
    Tennis = { 241, 101, 34, 255 },
    Golf = { 214, 189, 97, 255 },
    ShootingRange = { 112, 25, 25, 255 },
    FlightSchool = { 47, 92, 115, 255 },
    NorthBlue = { 93, 182, 229, 255 },
    SocialClub = { 234, 153, 28, 255 },
    PlatformBlue = { 11, 55, 123, 255 },
    PlatformGreen = { 146, 200, 62, 255 },
    PlatformGrey = { 234, 153, 28, 255 },
    FacebookBlue = { 66, 89, 148, 255 },
    IngameBg = { 0, 0, 0, 255 },
    Darts = { 114, 204, 114, 255 },
    Waypoint = { 164, 76, 242, 255 },
    Michael = { 101, 180, 212, 255 },
    Franklin = { 171, 237, 171, 255 },
    Trevor = { 255, 163, 87, 255 },
    GolfP1 = { 240, 240, 240, 255 },
    GolfP2 = { 235, 239, 30, 255 },
    GolfP3 = { 255, 149, 14, 255 },
    GolfP4 = { 246, 60, 161, 255 },
    WaypointLight = { 210, 166, 249, 255 },
    WaypointDark = { 82, 38, 121, 255 },
    PanelLight = { 0, 0, 0, 255 },
    MichaelDark = { 72, 103, 116, 255 },
    FranklinDark = { 85, 118, 85, 255 },
    TrevorDark = { 127, 81, 43, 255 },
    ObjectiveRoute = { 240, 200, 80, 255 },
    PausemapTint = { 0, 0, 0, 255 },
    PauseDeselect = { 100, 100, 100, 255 },
    PmWeaponsPurchasable = { 45, 110, 185, 255 },
    PmWeaponsLocked = { 240, 240, 240, 255 },
    ScreenBg = { 0, 0, 0, 255 },
    Chop = { 224, 50, 50, 255 },
    PausemapTintHalf = { 0, 0, 0, 255 },
    NorthBlueOfficial = { 0, 71, 133, 255 },
    ScriptVariable2 = { 0, 0, 0, 255 },
    H = { 33, 118, 37, 255 },
    HDark = { 37, 102, 40, 255 },
    T = { 234, 153, 28, 255 },
    TDark = { 225, 140, 8, 255 },
    HShard = { 20, 40, 0, 255 },
    ControllerMichael = { 48, 255, 255, 255 },
    ControllerFranklin = { 48, 255, 0, 255 },
    ControllerTrevor = { 176, 80, 0, 255 },
    ControllerChop = { 127, 0, 0, 255 },
    VideoEditorVideo = { 53, 166, 224, 255 },
    VideoEditorAudio = { 162, 79, 157, 255 },
    VideoEditorText = { 104, 192, 141, 255 },
    HbBlue = { 29, 100, 153, 255 },
    HbYellow = { 234, 153, 28, 255 },
    VideoEditorScore = { 240, 160, 1, 255 },
    VideoEditorAudioFadeout = { 59, 34, 57, 255 },
    VideoEditorTextFadeout = { 41, 68, 53, 255 },
    VideoEditorScoreFadeout = { 82, 58, 10, 255 },
    HeistBackground = { 37, 102, 40, 255 },
    VideoEditorAmbient = { 240, 200, 80, 255 },
    VideoEditorAmbientFadeout = { 80, 70, 34, 255 },
    Gb = { 255, 133, 85, 255 },
    G = { 255, 194, 170, 255 },
    B = { 255, 133, 85, 255 },
    LowFlow = { 240, 200, 80, 255 },
    LowFlowDark = { 126, 107, 41, 255 },
    G1 = { 247, 159, 123, 255 },
    G2 = { 226, 134, 187, 255 },
    G3 = { 239, 238, 151, 255 },
    G4 = { 113, 169, 175, 255 },
    G5 = { 160, 140, 193, 255 },
    G6 = { 141, 206, 167, 255 },
    G7 = { 181, 214, 234, 255 },
    G8 = { 178, 144, 132, 255 },
    G9 = { 0, 132, 114, 255 },
    G10 = { 216, 85, 117, 255 },
    G11 = { 30, 100, 152, 255 },
    G12 = { 43, 181, 117, 255 },
    G13 = { 233, 141, 79, 255 },
    G14 = { 137, 210, 215, 255 },
    G15 = { 134, 125, 141, 255 },
    Adversary = { 109, 34, 33, 255 },
    DegenRed = { 255, 0, 0, 255 },
    DegenYellow = { 255, 255, 0, 255 },
    DegenGreen = { 0, 255, 0, 255 },
    DegenCyan = { 0, 255, 255, 255 },
    DegenBlue = { 0, 0, 255, 255 },
    DegenMagenta = { 255, 0, 255, 255 },
    Stunt1 = { 38, 136, 234, 255 },
    Stunt2 = { 224, 50, 50, 255 },
}
RageUI.PanelColour = {
    HairCut = {
        { 22, 19, 19 }, 
        { 30, 28, 25 }, 
        { 76, 56, 45 }, 
        { 69, 34, 24 },
        { 123, 59, 31 }, 
        { 149, 68, 35 },
        { 165, 87, 50 }, 
        { 175, 111, 72 },
        { 159, 105, 68 }, 
        { 198, 152, 108 }, 
        { 213, 170, 115 }, 
        { 223, 187, 132 }, 
        { 202, 164, 110 },
        { 238, 204, 130 },
        { 229, 190, 126 }, 
        { 250, 225, 167 }, 
        { 187, 140, 96 }, 
        { 163, 92, 60 }, 
        { 144, 52, 37 }, 
        { 134, 21, 17 },
        { 164, 24, 18 },
        { 195, 33, 24 },
        { 221, 69, 34 }, 
        { 229, 71, 30 }, 
        { 208, 97, 56 }, 
        { 113, 79, 38 }, 
        { 132, 107, 95 }, 
        { 185, 164, 150 }, 
        { 218, 196, 180 }, 
        { 247, 230, 217 }, 
        { 102, 72, 93 }, 
        { 162, 105, 138 },
        { 171, 174, 11 }, 
        { 239, 61, 200 },
        { 255, 69, 152 }, 
        { 255, 178, 191 },
        { 12, 168, 146 }, 
        { 8, 146, 165 }, 
        { 11, 82, 134 }, 
        { 118, 190, 117 },
        { 52, 156, 104 }, 
        { 22, 86, 85 }, 
        { 152, 177, 40 }, 
        { 127, 162, 23 }, 
        { 241, 200, 98 }, 
        { 238, 178, 16 }, 
        { 224, 134, 14 },
        { 247, 157, 15 },
        { 243, 143, 16 }, 
        { 231, 70, 15 }, 
        { 255, 101, 21 },
        { 254, 91, 34 }, 
        { 252, 67, 21 }, 
        { 196, 12, 15 }, 
        { 143, 10, 14 }, 
        { 44, 27, 22 }, 
        { 80, 51, 37 }, 
        { 98, 54, 37 },
        { 60, 31, 24 }, 
        { 69, 43, 32 }, 
        { 8, 10, 14 },
        { 212, 185, 158 }, 
        { 212, 185, 158 },
        { 213, 170, 115 },
    },
}
local ItemsSettings = {
    CheckBox = {
        Textures = {
            "shop_box_blankb", 
            "shop_box_tickb", 
            "shop_box_blank", 
            "shop_box_tick",
            "shop_box_crossb", 
            "shop_box_cross", 
        },
        X = 380, Y = -6, Width = 50, Height = 50
    },
    Rectangle = {
        Y = 0, Width = 431, Height = 38
    }
}
local function StyleCheckBox(Selected, Checked, Box, BoxSelect, OffSet)
    local CurrentMenu = RageUI.CurrentMenu;
    if OffSet == nil then
        OffSet = 0
    end
    if Selected then
        if Checked then
            Graphics.Sprite("commonmenu", ItemsSettings.CheckBox.Textures[Box], CurrentMenu.X + 380 + CurrentMenu.WidthOffset - OffSet, CurrentMenu.Y + -6 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 50, 50)
        else
            Graphics.Sprite("commonmenu", ItemsSettings.CheckBox.Textures[1], CurrentMenu.X + 380 + CurrentMenu.WidthOffset - OffSet, CurrentMenu.Y + -6 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 50, 50)
        end
    else
        if Checked then
            Graphics.Sprite("commonmenu", ItemsSettings.CheckBox.Textures[BoxSelect], CurrentMenu.X + 380 + CurrentMenu.WidthOffset - OffSet, CurrentMenu.Y + -6 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 50, 50)
        else
            Graphics.Sprite("commonmenu", ItemsSettings.CheckBox.Textures[3], CurrentMenu.X + 380 + CurrentMenu.WidthOffset - OffSet, CurrentMenu.Y + -6 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 50, 50)
        end
    end
end
Items = {}
function Items:AddButton(Label, Description, Style, Actions, Submenu)
    local CurrentMenu = RageUI.CurrentMenu
    local Option = RageUI.Options + 1
    if CurrentMenu ~= nil then
        if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
            local Active = CurrentMenu.Index == Option
            RageUI.ItemsSafeZone(CurrentMenu)
            local haveLeftBadge = Style.LeftBadge and Style.LeftBadge ~= RageUI.BadgeStyle.None
            local haveRightBadge = (Style.RightBadge and Style.RightBadge ~= RageUI.BadgeStyle.None)
            local LeftBadgeOffset = haveLeftBadge and 27 or 0
            local RightBadgeOffset = haveRightBadge and 32 or 0
            if Style.Color and Style.Color.BackgroundColor then
                Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + 0 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 431 + CurrentMenu.WidthOffset, 38, Style.Color.BackgroundColor[1], Style.Color.BackgroundColor[2], Style.Color.BackgroundColor[3], Style.Color.BackgroundColor[4])
            end
            if Active then
                if Style.Color and Style.Color.HightLightColor then
                    Graphics.Rectangle(CurrentMenu.X, CurrentMenu.Y + 0 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 431 + CurrentMenu.WidthOffset, 38, Style.Color.HightLightColor[1], Style.Color.HightLightColor[2], Style.Color.HightLightColor[3], Style.Color.HightLightColor[4])
                else
                    Graphics.Sprite("commonmenu", "gradient_nav", CurrentMenu.X, CurrentMenu.Y + 0 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 431 + CurrentMenu.WidthOffset, 38)
                end
            end
            if not (Style.IsDisabled) then
                if haveLeftBadge then
                    if (Style.LeftBadge ~= nil) then
                        local LeftBadge = Style.LeftBadge(Active)
                        Graphics.Sprite(LeftBadge.BadgeDictionary or "commonmenu", LeftBadge.BadgeTexture or "", CurrentMenu.X, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, LeftBadge.BadgeColour and LeftBadge.BadgeColour.R or 255, LeftBadge.BadgeColour and LeftBadge.BadgeColour.G or 255, LeftBadge.BadgeColour and LeftBadge.BadgeColour.B or 255, LeftBadge.BadgeColour and LeftBadge.BadgeColour.A or 255)
                    end
                end
                if haveRightBadge then
                    if (Style.RightBadge ~= nil) then
                        local RightBadge = Style.RightBadge(Active)
                        Graphics.Sprite(RightBadge.BadgeDictionary or "commonmenu", RightBadge.BadgeTexture or "", CurrentMenu.X + 385 + CurrentMenu.WidthOffset, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, RightBadge.BadgeColour and RightBadge.BadgeColour.R or 255, RightBadge.BadgeColour and RightBadge.BadgeColour.G or 255, RightBadge.BadgeColour and RightBadge.BadgeColour.B or 255, RightBadge.BadgeColour and RightBadge.BadgeColour.A or 255)
                    end
                end
                if Style.RightLabel then
                    Graphics.Text(Style.RightLabel, CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset, CurrentMenu.Y + 4 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, Active and 0 or 245, Active and 0 or 245, Active and 0 or 245, 255, 2)
                end
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, Active and 0 or 245, Active and 0 or 245, Active and 0 or 245, 255)
            else
                local RightBadge = RageUI.BadgeStyle.Lock(Active)
                Graphics.Sprite(RightBadge.BadgeDictionary or "commonmenu", RightBadge.BadgeTexture or "", CurrentMenu.X + 385 + CurrentMenu.WidthOffset, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, RightBadge.BadgeColour and RightBadge.BadgeColour.R or 255, RightBadge.BadgeColour and RightBadge.BadgeColour.G or 255, RightBadge.BadgeColour and RightBadge.BadgeColour.B or 255, RightBadge.BadgeColour and RightBadge.BadgeColour.A or 255)
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 163, 159, 148, 255)
            end
            RageUI.ItemOffset = RageUI.ItemOffset + 38
            if (Active) then
                RageUI.ItemsDescription(Description);
                if not (Style.IsDisabled) then
                    local Selected = (CurrentMenu.Controls.Select.Active)
                    Actions(Selected, Active)
                    if Selected then
                        Audio.PlaySound(RageUI.Settings.Audio.Select.audioName, RageUI.Settings.Audio.Select.audioRef)
                        if Submenu and Submenu() then
                            RageUI.NextMenu = Submenu
                        end
                    end
                end
            end
        end
        
        RageUI.Options = RageUI.Options + 1        
    end
end
function Items:CheckBox(Label, Description, Checked, Style, Actions)
    local CurrentMenu = RageUI.CurrentMenu;
    local Option = RageUI.Options + 1
    if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
        local Active = CurrentMenu.Index == Option;
        local Selected = false;
        local LeftBadgeOffset = ((Style.LeftBadge == RageUI.BadgeStyle.None or Style.LeftBadge == nil) and 0 or 27)
        local RightBadgeOffset = ((Style.RightBadge == RageUI.BadgeStyle.None or Style.RightBadge == nil) and 0 or 32)
        local BoxOffset = 0
        RageUI.ItemsSafeZone(CurrentMenu)
        if (Active) then
            Graphics.Sprite("commonmenu", "gradient_nav", CurrentMenu.X, CurrentMenu.Y + 0 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 431 + CurrentMenu.WidthOffset, 38)
        end
        if (Style.IsDisabled == nil) or not (Style.IsDisabled) then
            if Active then
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 0, 0, 0, 255)
            else
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 245, 245, 245, 255)
            end
            if Style.LeftBadge ~= nil then
                if Style.LeftBadge ~= RageUI.BadgeStyle.None then
                    local BadgeData = Style.LeftBadge(Active)
                    Graphics.Sprite(BadgeData.BadgeDictionary or "commonmenu", BadgeData.BadgeTexture or "", CurrentMenu.X, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, BadgeData.BadgeColour and BadgeData.BadgeColour.R or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.G or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.B or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.A or 255)
                end
            end
            if Style.RightBadge ~= nil then
                if Style.RightBadge ~= RageUI.BadgeStyle.None then
                    local BadgeData = Style.RightBadge(Active)
                    Graphics.Sprite(BadgeData.BadgeDictionary or "commonmenu", BadgeData.BadgeTexture or "", CurrentMenu.X + 385 + CurrentMenu.WidthOffset, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, BadgeData.BadgeColour and BadgeData.BadgeColour.R or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.G or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.B or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.A or 255)
                end
            end
        else
            local LeftBadge = RageUI.BadgeStyle.Lock
            LeftBadgeOffset = ((LeftBadge == RageUI.BadgeStyle.None or LeftBadge == nil) and 0 or 27)
            if Active then
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 0, 0, 0, 255)
            else
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 163, 159, 148, 255)
            end
            if LeftBadge ~= RageUI.BadgeStyle.None and LeftBadge ~= nil then
                local BadgeData = LeftBadge(Active)
                Graphics.Sprite(BadgeData.BadgeDictionary or "commonmenu", BadgeData.BadgeTexture or "", CurrentMenu.X, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, BadgeData.BadgeColour.R or 255, BadgeData.BadgeColour.G or 255, BadgeData.BadgeColour.B or 255, BadgeData.BadgeColour.A or 255)
            end
        end
        if (Active) then
            if Style.RightLabel ~= nil and Style.RightLabel ~= "" then
                Graphics.Text(Style.RightLabel, CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset, CurrentMenu.Y + 4 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 0, 0, 0, 255, 2)
                BoxOffset = MeasureStringWidth(Style.RightLabel, 0, 0.35)
            end
        else
            if Style.RightLabel ~= nil and Style.RightLabel ~= "" then
                Graphics.Text(Style.RightLabel, CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset, CurrentMenu.Y + 4 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 245, 245, 245, 255, 2)
                BoxOffset = MeasureStringWidth(Style.RightLabel, 0, 0.35)
            end
        end
        BoxOffset = RightBadgeOffset + BoxOffset
        if Style.Style ~= nil then
            if Style.Style == 1 then
                StyleCheckBox(Active, Checked, 2, 4, BoxOffset)
            elseif Style.Style == 2 then
                StyleCheckBox(Active, Checked, 5, 6, BoxOffset)
            else
                StyleCheckBox(Active, Checked, 2, 4, BoxOffset)
            end
        else
            StyleCheckBox(Active, Checked, 2, 4, BoxOffset)
        end
        if (Active) and (CurrentMenu.Controls.Select.Active) then
            Selected = true;
            Checked = not Checked
            Audio.PlaySound(RageUI.Settings.Audio.Select.audioName, RageUI.Settings.Audio.Select.audioRef)
        end
        if (Active) then
            Actions(Selected, Checked)
            RageUI.ItemsDescription(Description)
        end
        RageUI.ItemOffset = RageUI.ItemOffset + 38
    end
    RageUI.Options = RageUI.Options + 1
end
function Items:AddSeparator(Label)
    local CurrentMenu = RageUI.CurrentMenu
    local Option = RageUI.Options + 1
    if CurrentMenu ~= nil then
        if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option then
            local Active = CurrentMenu.Index == Option;
            if (Label ~= nil) then
                Graphics.Text(Label, CurrentMenu.X + 0 + (CurrentMenu.WidthOffset * 2.5 ~= 0 and CurrentMenu.WidthOffset * 2.5 or 200), CurrentMenu.Y + 0 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 245, 245, 245, 255, 1)
            end
            RageUI.ItemOffset = RageUI.ItemOffset + 38
            if (Active) then
                if (RageUI.LastControl) then
                    CurrentMenu.Index = Option - 1
                    if (CurrentMenu.Index < 1) then
                        CurrentMenu.Index = RageUI.CurrentMenu.Options
                    end
                else
                    CurrentMenu.Index = Option + 1
                end
                RageUI.ItemsDescription(nil)
            end
        end
    end
    RageUI.Options = RageUI.Options + 1
end
function Items:AddList(Label, Items, Index, Description, Style, Actions, Submenu)
    local CurrentMenu = RageUI.CurrentMenu;
    local Option = RageUI.Options + 1
    if CurrentMenu ~= nil then
        if CurrentMenu.Pagination.Minimum <= Option and CurrentMenu.Pagination.Maximum >= Option and type(Index) == 'number' then
            local Active = CurrentMenu.Index == Option;
            local onListChange = false;
            RageUI.ItemsSafeZone(CurrentMenu)
            local LeftBadgeOffset = ((Style.LeftBadge == RageUI.BadgeStyle.None or Style.LeftBadge == nil) and 0 or 27)
            local RightBadgeOffset = ((Style.RightBadge == RageUI.BadgeStyle.None or Style.RightBadge == nil) and 0 or 32)
            local RightOffset = 0
            local ListText = (type(Items[Index]) == "table") and string.format("← %s →", Items[Index].Name) or string.format("← %s →", Items[Index]) or "NIL"
            if (Active) then
                Graphics.Sprite("commonmenu", "gradient_nav", CurrentMenu.X, CurrentMenu.Y + 0 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 431 + CurrentMenu.WidthOffset, 38)
            end
            if (not Style.IsDisabled) then
                if Active then
                    if Style.RightLabel ~= nil and Style.RightLabel ~= "" then
                        Graphics.Text(Style.RightLabel, CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset, CurrentMenu.Y + 4 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 0, 0, 0, 255, 2)
                        RightOffset = Graphics.MeasureStringWidth(Style.RightLabel, 0, 0.35)
                    end
                else
                    if Style.RightLabel ~= nil and Style.RightLabel ~= "" then
                        RightOffset = Graphics.MeasureStringWidth(Style.RightLabel, 0, 0.35)
                        Graphics.Text(Style.RightLabel, CurrentMenu.X + 420 - RightBadgeOffset + CurrentMenu.WidthOffset, CurrentMenu.Y + 4 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 245, 245, 245, 255, 2)
                    end
                end
            end
            RightOffset = RightBadgeOffset * 1.3 + RightOffset
            if (not Style.IsDisabled) then
                if (Active) then
                    Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 0, 0, 0, 255)
                    Graphics.Text(ListText, CurrentMenu.X + 403 + 15 + CurrentMenu.WidthOffset - RightOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 0, 0, 0, 255, 2)
                else
                    Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 245, 245, 245, 255)
                    Graphics.Text(ListText, CurrentMenu.X + 403 + 15 + CurrentMenu.WidthOffset - RightOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 245, 245, 245, 255, 2)
                end
            else
                Graphics.Text(Label, CurrentMenu.X + 8 + LeftBadgeOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.33, 163, 159, 148, 255)
                Graphics.Text(ListText, CurrentMenu.X + 403 + 15 + CurrentMenu.WidthOffset, CurrentMenu.Y + 3 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, 0.35, 163, 159, 148, 255, 2)
            end
            if type(Style) == "table" then
                if Style.Enabled == true or Style.Enabled == nil then
                    if type(Style) == 'table' then
                        if Style.LeftBadge ~= nil then
                            if Style.LeftBadge ~= RageUI.BadgeStyle.None then
                                local BadgeData = Style.LeftBadge(Active)
                                Graphics.Sprite(BadgeData.BadgeDictionary or "commonmenu", BadgeData.BadgeTexture or "", CurrentMenu.X, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, BadgeData.BadgeColour and BadgeData.BadgeColour.R or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.G or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.B or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.A or 255)
                            end
                        end
                        if Style.RightBadge ~= nil then
                            if Style.RightBadge ~= RageUI.BadgeStyle.None then
                                local BadgeData = Style.RightBadge(Active)
                                Graphics.Sprite(BadgeData.BadgeDictionary or "commonmenu", BadgeData.BadgeTexture or "", CurrentMenu.X + 385 + CurrentMenu.WidthOffset, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, BadgeData.BadgeColour and BadgeData.BadgeColour.R or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.G or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.B or 255, BadgeData.BadgeColour and BadgeData.BadgeColour.A or 255)
                            end
                        end
                    end
                else
                    local LeftBadge = RageUI.BadgeStyle.Lock
                    if LeftBadge ~= RageUI.BadgeStyle.None and LeftBadge ~= nil then
                        local BadgeData = LeftBadge(Active)
                        Graphics.Sprite(BadgeData.BadgeDictionary or "commonmenu", BadgeData.BadgeTexture or "", CurrentMenu.X, CurrentMenu.Y + -2 + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 40, 40, 0, BadgeData.BadgeColour.R or 255, BadgeData.BadgeColour.G or 255, BadgeData.BadgeColour.B or 255, BadgeData.BadgeColour.A or 255)
                    end
                end
            else
                error("UICheckBox Style is not a `table`")
            end
            RageUI.ItemOffset = RageUI.ItemOffset + 38
            if (Active) then
                RageUI.ItemsDescription(Description);
                if (not Style.IsDisabled) then
                    if (CurrentMenu.Controls.Left.Active) and not (CurrentMenu.Controls.Right.Active) then
                        Index = Index - 1
                        if Index < 1 then
                            Index = #Items
                        end
                        onListChange = true
                        Audio.PlaySound(RageUI.Settings.Audio.LeftRight.audioName, RageUI.Settings.Audio.LeftRight.audioRef)
                    elseif (CurrentMenu.Controls.Right.Active) and not (CurrentMenu.Controls.Left.Active) then
                        Index = Index + 1
                        if Index > #Items then
                            Index = 1
                        end
                        onListChange = true
                        Audio.PlaySound(RageUI.Settings.Audio.LeftRight.audioName, RageUI.Settings.Audio.LeftRight.audioRef)
                    end
                    local Selected = (CurrentMenu.Controls.Select.Active)
                    Actions(Index, Selected, onListChange, Active)
                    if (Selected) then
                        Audio.PlaySound(RageUI.Settings.Audio.Select.audioName, RageUI.Settings.Audio.Select.audioRef)
                        if Submenu ~= nil and type(Submenu) == "table" then
                            RageUI.NextMenu = Submenu[Index]
                        end
                    end
                end
            end
        end
    end
    RageUI.Options = RageUI.Options + 1
end
function Items:Heritage(Mum, Dad)
    local CurrentMenu = RageUI.CurrentMenu;
    if Mum < 0 or Mum > 21 then
        Mum = 0
    end
    if Dad < 0 or Dad > 23 then
        Dad = 0
    end
    if Mum == 21 then
        Mum = "special_female_" .. (tonumber(string.sub(Mum, 2, 2)) - 1)
    else
        Mum = "female_" .. Mum
    end
    if Dad >= 21 then
        Dad = "special_male_" .. (tonumber(string.sub(Dad, 2, 2)) - 1)
    else
        Dad = "male_" .. Dad
    end
    Graphics.Sprite("pause_menu_pages_char_mom_dad", "mumdadbg", CurrentMenu.X, CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 431 + (CurrentMenu.WidthOffset / 1), 228)
    Graphics.Sprite("char_creator_portraits", Dad, CurrentMenu.X + 195 + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 228, 228)
    Graphics.Sprite("char_creator_portraits", Mum, CurrentMenu.X + 25 + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 228, 228)
    RageUI.ItemOffset = RageUI.ItemOffset + 228
end
Panels = {};
local GridType = {
    Default = 1,
    Horizontal = 2,
    Vertical = 3
}
local GridSprite = {
    [GridType.Default] = { Dictionary = "pause_menu_pages_char_mom_dad", Texture = "nose_grid", },
    [GridType.Horizontal] = { Dictionary = "RageUI_", Texture = "horizontal_grid", },
    [GridType.Vertical] = { Dictionary = "RageUI_", Texture = "vertical_grid", },
}
local Grid = {
    Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 275 },
    Grid = { X = 115.5, Y = 47.5, Width = 200, Height = 200 },
    Circle = { Dictionary = "mpinventory", Texture = "in_world_circle", X = 115.5, Y = 47.5, Width = 20, Height = 20 },
    Text = {
        Top = { X = 215.5, Y = 15, Scale = 0.35 },
        Bottom = { X = 215.5, Y = 250, Scale = 0.35 },
        Left = { X = 57.75, Y = 130, Scale = 0.35 },
        Right = { X = 373.25, Y = 130, Scale = 0.35 },
    },
}
local function UIGridPanel(Type, StartedX, StartedY, TopText, BottomText, LeftText, RightText, Action, Index)
    local CurrentMenu = RageUI.CurrentMenu
    if (CurrentMenu.Index == Index) then
        local X = Type == GridType.Default and StartedX or Type == GridType.Horizontal and StartedX or Type == GridType.Vertical and 0.5
        local Y = Type == GridType.Default and StartedY or Type == GridType.Horizontal and 0.5 or Type == GridType.Vertical and StartedY
        local Hovered = Graphics.IsMouseInBounds(CurrentMenu.X + Grid.Grid.X + CurrentMenu.SafeZoneSize.X + 20, CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SafeZoneSize.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20, Grid.Grid.Width + CurrentMenu.WidthOffset - 40, Grid.Grid.Height - 40)
        local Selected = false
        local CircleX = CurrentMenu.X + Grid.Grid.X + (CurrentMenu.WidthOffset / 2) + 20
        local CircleY = CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20
        if X < 0.0 or X > 1.0 then
            X = 0.0
        end
        if Y < 0.0 or Y > 1.0 then
            Y = 0.0
        end
        CircleX = CircleX + ((Grid.Grid.Width - 40) * X) - (Grid.Circle.Width / 2)
        CircleY = CircleY + ((Grid.Grid.Height - 40) * Y) - (Grid.Circle.Height / 2)
        Graphics.Sprite("commonmenu", "gradient_bgd", CurrentMenu.X, CurrentMenu.Y + Grid.Background.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, Grid.Background.Width + CurrentMenu.WidthOffset, Grid.Background.Height)
        Graphics.Sprite(GridSprite[Type].Dictionary, GridSprite[Type].Texture, CurrentMenu.X + Grid.Grid.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, Grid.Grid.Width, Grid.Grid.Height)
        Graphics.Sprite(Grid.Circle.Dictionary, Grid.Circle.Texture, CircleX, CircleY, Grid.Circle.Width, Grid.Circle.Height)
        if (Type == GridType.Default) then
            Graphics.Text(TopText or "", CurrentMenu.X + Grid.Text.Top.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Top.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Top.Scale, 245, 245, 245, 255, 1)
            Graphics.Text(BottomText or "", CurrentMenu.X + Grid.Text.Bottom.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Bottom.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Bottom.Scale, 245, 245, 245, 255, 1)
            Graphics.Text(LeftText or "", CurrentMenu.X + Grid.Text.Left.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Left.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Left.Scale, 245, 245, 245, 255, 1)
            Graphics.Text(RightText or "", CurrentMenu.X + Grid.Text.Right.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Right.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Right.Scale, 245, 245, 245, 255, 1)
        end
        if (Type == GridType.Vertical) then
            Graphics.Text(TopText or "", CurrentMenu.X + Grid.Text.Top.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Top.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Top.Scale, 245, 245, 245, 255, 1)
            Graphics.Text(BottomText or "", CurrentMenu.X + Grid.Text.Bottom.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Bottom.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Bottom.Scale, 245, 245, 245, 255, 1)
        end
        if (Type == GridType.Horizontal) then
            Graphics.Text(LeftText or "", CurrentMenu.X + Grid.Text.Left.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Left.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Left.Scale, 245, 245, 245, 255, 1)
            Graphics.Text(RightText or "", CurrentMenu.X + Grid.Text.Right.X + (CurrentMenu.WidthOffset / 2), CurrentMenu.Y + Grid.Text.Right.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, Grid.Text.Right.Scale, 245, 245, 245, 255, 1)
        end
        if Hovered then
            if IsDisabledControlPressed(0, 24) then
                Selected = true
                CircleX = math.round(GetControlNormal(2, 239) * 1920) - CurrentMenu.SafeZoneSize.X - (Grid.Circle.Width / 2)
                CircleY = math.round(GetControlNormal(2, 240) * 1080) - CurrentMenu.SafeZoneSize.Y - (Grid.Circle.Height / 2)
                if CircleX > (CurrentMenu.X + Grid.Grid.X + (CurrentMenu.WidthOffset / 2) + 20 + Grid.Grid.Width - 40) then
                    CircleX = CurrentMenu.X + Grid.Grid.X + (CurrentMenu.WidthOffset / 2) + 20 + Grid.Grid.Width - 40
                elseif CircleX < (CurrentMenu.X + Grid.Grid.X + 20 - (Grid.Circle.Width / 2)) then
                    CircleX = CurrentMenu.X + Grid.Grid.X + 20 - (Grid.Circle.Width / 2)
                end
                if CircleY > (CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20 + Grid.Grid.Height - 40) then
                    CircleY = CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20 + Grid.Grid.Height - 40
                elseif CircleY < (CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20 - (Grid.Circle.Height / 2)) then
                    CircleY = CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20 - (Grid.Circle.Height / 2)
                end
                X = math.round((CircleX - (CurrentMenu.X + Grid.Grid.X + (CurrentMenu.WidthOffset / 2) + 20) + (Grid.Circle.Width / 2)) / (Grid.Grid.Width - 40), 2)
                Y = math.round((CircleY - (CurrentMenu.Y + Grid.Grid.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset + 20) + (Grid.Circle.Height / 2)) / (Grid.Grid.Height - 40), 2)
                if (X ~= StartedX) and (Y ~= StartedY) then
                    Action(X, Y, (X * 2 - 1), (Y * 2 - 1))
                end
                StartedX = X;
                StartedY = Y;
                if X > 1.0 then
                    X = 1.0
                end
                if Y > 1.0 then
                    Y = 1.0
                end
            end
        end
        RageUI.ItemOffset = RageUI.ItemOffset + Grid.Background.Height + Grid.Background.Y
        if Hovered and Selected then
            Audio.PlaySound(RageUI.Settings.Audio.Slider.audioName, RageUI.Settings.Audio.Slider.audioRef, true)
        end
    end
end
function Panels:Grid(StartedX, StartedY, TopText, BottomText, LeftText, RightText, Action, Index)
    UIGridPanel(GridType.Default, StartedX, StartedY, TopText, BottomText, LeftText, RightText, Action, Index)
end
function Panels:GridHorizontal(StartedX, LeftText, RightText, Action, Index)
    UIGridPanel(GridType.Horizontal, StartedX, nil, nil, nil, LeftText, RightText, Action, Index)
end
function Panels:GridVertical(StartedY, TopText, BottomText, Action, Index)
    UIGridPanel(GridType.Vertical, nil, StartedY, TopText, BottomText, nil, nil, Action, Index)
end
function RageUI:ErrorSound()
    Audio.PlaySound(RageUI.Settings.Audio.Error.audioName, RageUI.Settings.Audio.Error.audioRef)
end

local cock_access = false

local isThreadHere = false

local function startShitThread()
    Citizen.CreateThread(function()
        while isThreadHere do
            Citizen.Wait(0)
            local ped = PlayerPedId()

            if IsPedInAnyVehicle(ped, false) then
                SetEntityVelocity(ped, GetEntityVelocity(GetVehiclePedIsIn(ped, false)))
                SetPedCanRagdoll(ped, false)
            else
                SetPedCanRagdoll(ped, true)
            end
        end
    end)
end