if BL_Scripts.Menu == 'rage' then 

local VehicleMenu = RageUI.CreateMenu('', BL_Scripts.language.menu_title)
local NeonMenu = RageUI.CreateSubMenu(VehicleMenu, '', BL_Scripts.language.menu_neon)
local XenonMenu = RageUI.CreateSubMenu(VehicleMenu, '', BL_Scripts.language.menu_xenon_color)
local DoorMenu = RageUI.CreateSubMenu(VehicleMenu, '', BL_Scripts.language.menu_door)
local WindowMenu = RageUI.CreateSubMenu(VehicleMenu, '', BL_Scripts.language.menu_window)
local GlobalMenu = RageUI.CreateSubMenu(VehicleMenu, '', BL_Scripts.language.menu_global)
local InfoMenu = RageUI.CreateSubMenu(VehicleMenu, '', BL_Scripts.language.menu_vehicle_info)

VehicleMenu.X = 0
VehicleMenu.Y = 75
NeonMenu.X = 0
NeonMenu.Y = 75
XenonMenu.X = 0
XenonMenu.Y = 75
DoorMenu.X = 0
DoorMenu.Y = 75
WindowMenu.X = 0
WindowMenu.Y = 75
GlobalMenu.X = 0
GlobalMenu.Y = 75
InfoMenu.X = 0
InfoMenu.Y = 75

function BL_GetTurbo()
    local veh = GetVehiclePedIsIn(PlayerPedId())
    if IsToggleModOn(veh, 18) == false then 
        return BL_Scripts.language.vehicle_turbo_disabled 
    else 
        return BL_Scripts.language.vehicle_turbo_enabled
     end
end

function RageUI.PoolMenus:BLVehicleMenu()
    VehicleMenu:IsVisible(function(Items)
        Items:AddButton(BL_Scripts.language.menu_neon, BL_Scripts.language.menu_neon_description, { isDisabled = false, RightLabel = '→→→' }, function(onSelected) end, NeonMenu)
        Items:AddButton(BL_Scripts.language.menu_xenon_color, BL_Scripts.language.menu_xenon_color_description, {RightLabel = '→→→'}, function(onSelected) end, XenonMenu)
        Items:AddButton(BL_Scripts.language.menu_door, BL_Scripts.language.menu_door_description, {RightLabel = '→→→'}, function(onSelected) end, DoorMenu)
        Items:AddButton(BL_Scripts.language.menu_window, BL_Scripts.language.menu_window_description, {RightLabel = '→→→'}, function(onSelected) end, WindowMenu)
        Items:AddButton(BL_Scripts.language.menu_global, BL_Scripts.language.menu_global_description, {RightLabel = '→→→'}, function(onSelected) end, GlobalMenu)
        Items:AddButton(BL_Scripts.language.menu_vehicle_info, BL_Scripts.language.menu_vehicle_info_description, {RightLabel = '→→→'}, function(onSelected) end, InfoMenu)
    end, function(Panels)
    end)
    NeonMenu:IsVisible(function(Items)
        Items:AddButton(BL_Scripts.language.menu_neon_color, BL_Scripts.language.menu_neon_color, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                BL_ColorControl()
            end
        end, NeonMenu)
        Items:AddButton(BL_Scripts.language.right, BL_Scripts.language.right, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleNeonLightEnabled(veh, 0) then 
                    SetVehicleNeonLightEnabled(veh, 0, false)
                    theme = 'aus'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                else
                    SetVehicleNeonLightEnabled(veh, 0, true)
                    theme = 'an'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                end
            end
        end, NeonMenu)
        Items:AddButton(BL_Scripts.language.left, BL_Scripts.language.left, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleNeonLightEnabled(veh, 1) then 
                    SetVehicleNeonLightEnabled(veh, 1, false)
                    theme = 'aus'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                else
                    SetVehicleNeonLightEnabled(veh, 1, true)
                    theme = 'an'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                end
            end
        end, NeonMenu)
        Items:AddButton(BL_Scripts.language.front, BL_Scripts.language.front, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleNeonLightEnabled(veh, 2) then
                    theme = 'aus'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                    SetVehicleNeonLightEnabled(veh, 2, false)
                else
                    theme = 'an'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                    SetVehicleNeonLightEnabled(veh, 2, true)
                end
            end
        end, NeonMenu)
        Items:AddButton(BL_Scripts.language.back, BL_Scripts.language.back, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleNeonLightEnabled(veh, 3) then 
                    SetVehicleNeonLightEnabled(veh, 3, false)
                    theme = 'aus'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                else
                    SetVehicleNeonLightEnabled(veh, 3, true)
                    theme = 'an'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light):format(theme), 5000)
                end
            end
        end, NeonMenu)
        Items:AddButton(BL_Scripts.language.all, BL_Scripts.language.all, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleNeonLightEnabled(veh, 0 or 1 or 2 or 3) then 
                    SetVehicleNeonLightEnabled(veh, 0, false)
                    SetVehicleNeonLightEnabled(veh, 1, false)
                    SetVehicleNeonLightEnabled(veh, 2, false)
                    SetVehicleNeonLightEnabled(veh, 3, false)
                    theme = 'aus'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light_all):format(theme), 5000)
                else
                    SetVehicleNeonLightEnabled(veh, 0, true)
                    SetVehicleNeonLightEnabled(veh, 1, true)
                    SetVehicleNeonLightEnabled(veh, 2, true)
                    SetVehicleNeonLightEnabled(veh, 3, true)
                    theme = 'an'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.light_all):format(theme), 5000)
                end
            end
        end, NeonMenu)
    end, function(Panels)
    end)
    XenonMenu:IsVisible(function(Items)
        Items:AddButton(BL_Scripts.language.menu_xenon_color, BL_Scripts.language.menu_xenon_color_description, {}, function(onSelected)
            if onSelected then 
                BL_XenonControl()
            end
        end, XenonMenu)
    end, function(Panels)
    end)
    DoorMenu:IsVisible(function(Items)
        Items:AddButton(BL_Scripts.language.door_left, BL_Scripts.language.door_left, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if GetVehicleDoorAngleRatio(veh, 0) > 0.0 then
                    SetVehicleDoorShut(veh, 0, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 0, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.door_right, BL_Scripts.language.door_right, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if GetVehicleDoorAngleRatio(veh, 1) > 0.0 then
                    SetVehicleDoorShut(veh, 1, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 1, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.door_back_left, BL_Scripts.language.door_back_left, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId()) 
                if GetVehicleDoorAngleRatio(veh, 3) > 0.0 then
                    SetVehicleDoorShut(veh, 3, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 3, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.door_back_right, BL_Scripts.language.door_back_right, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId()) 
                if GetVehicleDoorAngleRatio(veh, 2) > 0.0 then
                    SetVehicleDoorShut(veh, 2, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 2, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.door_hook, BL_Scripts.language.door_hook, {}, function(onSelected)
            if onSelected then
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId()) 
                if GetVehicleDoorAngleRatio(veh, 4) > 0.0 then
                    SetVehicleDoorShut(veh, 4, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 4, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.door_trunk, BL_Scripts.language.door_trunk, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if GetVehicleDoorAngleRatio(veh, 5) > 0.0 then
                    SetVehicleDoorShut(veh, 5, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 5, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.door_all, BL_Scripts.language.door_all, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if GetVehicleDoorAngleRatio(veh, 0 or 1 or 2 or 3 or 4 or 5 or 6 or 7) > 0.0 then
                    SetVehicleDoorShut(veh, 0, false, false)
                    SetVehicleDoorShut(veh, 1, false, false)
                    SetVehicleDoorShut(veh, 2, false, false)
                    SetVehicleDoorShut(veh, 3, false, false)
                    SetVehicleDoorShut(veh, 4, false, false)
                    SetVehicleDoorShut(veh, 5, false, false)
                    SetVehicleDoorShut(veh, 6, false, false)
                    SetVehicleDoorShut(veh, 7, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_all_close, 5000)
                else
                    SetVehicleDoorOpen(veh, 0, false, false)
                    SetVehicleDoorOpen(veh, 1, false, false)
                    SetVehicleDoorOpen(veh, 2, false, false)
                    SetVehicleDoorOpen(veh, 3, false, false)
                    SetVehicleDoorOpen(veh, 4, false, false)
                    SetVehicleDoorOpen(veh, 5, false, false)
                    SetVehicleDoorOpen(veh, 6, false, false)
                    SetVehicleDoorOpen(veh, 7, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_all_open, 5000)
                end
            end
        end)
    end, function(Panels)
    end)
    WindowMenu:IsVisible(function(Items)
        Items:AddButton(BL_Scripts.language.window_left, BL_Scripts.language.window_left, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleWindowIntact(veh, 0) then
                    RollDownWindow(veh, 0)
                    theme = 'runter'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                else
                    RollUpWindow(veh, 0)
                    theme = 'hoch'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.window_right, BL_Scripts.language.window_right, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleWindowIntact(veh, 1) then
                    RollDownWindow(veh, 1)
                    theme = 'runter'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                else
                    RollUpWindow(veh, 1)
                    theme = 'hoch'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.window_back_left, BL_Scripts.language.window_back_left, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleWindowIntact(veh, 2) then
                    RollDownWindow(veh, 2)
                    theme = 'runter'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                else
                    RollUpWindow(veh, 2)
                    theme = 'hoch'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.window_back_right, BL_Scripts.language.window_back_right, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleWindowIntact(veh, 3) then
                    RollDownWindow(veh, 3)
                    theme = 'runter'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                else
                    RollUpWindow(veh, 3)
                    theme = 'hoch'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_notify):format(theme))
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.window_all, BL_Scripts.language.window_all, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if IsVehicleWindowIntact(veh, 0 or 1 or 2 or 3) then 
                    RollDownWindows(veh)
                    theme = 'runter'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_all_notify):format(theme))
                else
                    RollUpWindow(veh, 0)
                    RollUpWindow(veh, 1)
                    RollUpWindow(veh, 2)
                    RollUpWindow(veh, 3)
                    theme = 'hoch'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.window_all_notify):format(theme))  
                end
            end
        end)
    end, function(Panels)
    end)
    GlobalMenu:IsVisible(function(Items)
        Items:AddButton(BL_Scripts.language.engien_onoff, BL_Scripts.language.engien_onoff, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if GetIsVehicleEngineRunning(veh) then 
                    SetVehicleEngineOn(veh, false, false, true)
                    theme = 'aus'
                    BL_Notify('error', BL_Scripts.Notify.ServerName, (BL_Scripts.language.engien):format('aus'), 5000)
                else
                    SetVehicleEngineOn(veh, true, false, true)
                    theme = 'an'
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.engien):format('an'), 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.autopilot, BL_Scripts.language.autopilit_menu_description, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if not autopilot then 
                    local wayCoords = GetBlipInfoIdCoord(GetFirstBlipInfoId(8))
                    if wayCoords and #(wayCoords - vector3(0, 0, 0)) >= 1.0 then 
                    local input = lib.inputDialog('Speed', {
                        {type = 'number', label = BL_Scripts.language.autopilot_menu_title, description = BL_Scripts.language.autopilit_menu_description, required = true, min = 10, max = 250},
                    })
                    if not input then return end                         
                    drivespeed = input[1] / 3.5
                    if BL_Scripts.Debug then 
                        print(drivespeed..'mp/h ||||| '..input[1])
                    end
                    
                        local currVeh = GetVehiclePedIsIn(PlayerPedId(), false)
                        if currVeh ~= 0 then 
                            autopilot = true 
                            BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.autopilot_enabled, 5000)
                            TaskVehicleDriveToCoordLongrange(PlayerPedId(), currVeh, wayCoords, drivespeed, 0, 100.0)
                        end
                    else
                        BL_Notify('info',BL_Scripts.Notify.ServerName, BL_Scripts.language.autopilot_no_marker, 5000)
                    end
                else  
                    ClearPedTasks(PlayerPedId())
                    autopilot = false
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.autopilot_disabled, 5000)
                end
            end
        end)
        Items:AddButton(BL_Scripts.language.drive, BL_Scripts.language.drive, {}, function(onSelected)
            if onSelected then 
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                local veh = GetVehiclePedIsIn(PlayerPedId())
                if not drive then 
                    local input = lib.inputDialog('Speed', {
                        {type = 'number', label = BL_Scripts.language.drive_menu_title, description = BL_Scripts.language.drive_menu_description, required = true, min = 10, max = 250},
                    })
                    if not input then return end   
                    drivespeed = input[1] / 3.6
                    SetVehicleMaxSpeed(veh, drivespeed)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, (BL_Scripts.language.max_speed_notify):format(input[1]), 5000)
                    drive = true
                elseif drive then 
                    SetVehicleMaxSpeed(veh, 0.0)
                    drive = false
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.disable_max_speed_notify, 5000)
                end
            end
        end)
    end, function(Panels)
    end)
    InfoMenu:IsVisible(function(Items)
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then return end
        local veh = GetVehiclePedIsIn(PlayerPedId())
        Items:AddButton((BL_Scripts.language.vehicle_fuel):format(GetVehicleFuelLevel(veh)), (BL_Scripts.language.vehicle_fuel):format(GetVehicleFuelLevel(veh)), {}, function(onSelected)
        end)
        Items:AddButton((BL_Scripts.language.vehicle_name):format(GetDisplayNameFromVehicleModel(GetEntityModel(veh))), (BL_Scripts.language.vehicle_name):format(GetDisplayNameFromVehicleModel(GetEntityModel(veh))), {}, function(onSelected)
        end)
        Items:AddButton((BL_Scripts.language.vehicle_plate):format(GetVehicleNumberPlateText(veh)),(BL_Scripts.language.vehicle_plate):format(GetVehicleNumberPlateText(veh)), {}, function(onSelected)
        end)
        Items:AddButton((BL_Scripts.language.vehicle_color):format(GetVehicleColor(veh)), (BL_Scripts.language.vehicle_color):format(GetVehicleColor(veh)), {}, function(onSelected)
        end)
        Items:AddButton((BL_Scripts.language.vehicle_turbo):format(BL_GetTurbo()), (BL_Scripts.language.vehicle_turbo):format(BL_GetTurbo()), {}, function(onSelected)
        end)
    end, function(Panels)
    end)
end

RegisterCommand(BL_Scripts.Command, function()
    if hasAllowedJob(source) then 
        RageUI.UpdateHeader(BL_Scripts.Banner, 611, 344)
        RageUI.Visible(VehicleMenu, true)
    else
        BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.not_allowed_job, 5000)
    end
end)

RegisterKeyMapping(BL_Scripts.Command, 'Vehicle Menu', 'keyboard', BL_Scripts.Key)
end