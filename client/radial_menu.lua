if BL_Scripts.Menu == 'radial_menu' then 
    lib.registerRadial({
        id = 'bl_vehiclemenu',
        items = {
        {
            label = BL_Scripts.language.menu_neon,
            icon = BL_Scripts.Icons.neon,
            menu  = 'bl_menu_neon'
        },
        {
            label = BL_Scripts.language.menu_xenon_color,
            icon = BL_Scripts.Icons.xenon,
            onSelect = function()
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                BL_XenonControl()
            end
        },
        {
            label = BL_Scripts.language.menu_door,
            icon = BL_Scripts.Icons.door,
            menu  = 'bl_menu_door',
        },
        {
            label = BL_Scripts.language.menu_window,
            icon = BL_Scripts.Icons.window,
            menu  = 'bl_menu_window'
        },
        {
            label = BL_Scripts.language.menu_global,
            icon = BL_Scripts.Icons.global,
            menu  = 'bl_menu_global'
        },
        {
            label = BL_Scripts.language.menu_vehicle_info,
            icon = BL_Scripts.Icons.info,
            onSelect = function()
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                BL_VehicleMenu()
            end
        }
        }
    })

    lib.registerRadial({
        id = 'bl_menu_neon',
        items = {
        {
            label = BL_Scripts.language.menu_neon_color,
            icon = BL_Scripts.Icons.neon_color,
            onSelect = function()
                if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
                BL_ColorControl()
            end
        },
        {
            label = BL_Scripts.language.right,
            icon = BL_Scripts.Icons.neon_right,
            onSelect = function()
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
        },
        {
            label = BL_Scripts.language.left,
            icon = BL_Scripts.Icons.neon_left,
            onSelect = function()
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
        },
        {
            label = BL_Scripts.language.front,
            icon = BL_Scripts.Icons.neon_front,
            onSelect = function()
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
        },
        {
            label = BL_Scripts.language.back,
            icon = BL_Scripts.Icons.neon_back,
            onSelect = function()
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
        },
        {
            label = BL_Scripts.language.all,
            icon = BL_Scripts.Icons.neon_all,
            onSelect = function()
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
        },
        },
    })

    lib.registerRadial({
        id = 'bl_menu_door',
        items = {
            {
            label = BL_Scripts.language.door_left,
            icon = BL_Scripts.Icons.door_left,
            onSelect = function()
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
            },
            {
                label = BL_Scripts.language.door_right,
                icon = BL_Scripts.Icons.door_right,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.door_back_right,
                icon = BL_Scripts.Icons.door_back_right,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.door_back_left,
                icon = BL_Scripts.Icons.door_back_left,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.door_hook,
                icon = BL_Scripts.Icons.door_hook,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.door_trunk,
                icon = BL_Scripts.Icons.door_trunk,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.door_all,
                icon = BL_Scripts.Icons.door_all,
                onSelect = function()
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
            },
        }
    })

    lib.registerRadial({
        id = 'bl_menu_window',
        items = {
            {
            label = BL_Scripts.language.window_left,
            icon = BL_Scripts.Icons.window_left,
            onSelect = function()
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
            },
            {
                label = BL_Scripts.language.window_right,
                icon = BL_Scripts.Icons.window_right,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.window_back_left,
                icon = BL_Scripts.Icons.window_back_left,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.window_back_right,
                icon = BL_Scripts.Icons.window_back_right,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.window_all,
                icon = BL_Scripts.Icons.window_all,
                onSelect = function()
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
            },
        }
    })

    lib.registerRadial({
        id = 'bl_menu_global', 
        items = {
            {
                label = BL_Scripts.language.engien_onoff,
                icon = BL_Scripts.Icons.engien,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.autopilot,
                icon = BL_Scripts.Icons.auto_pilot,
                onSelect = function()
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
            },
            {
                label = BL_Scripts.language.drive,
                icon = BL_Scripts.Icons.drive_speed,
                onSelect = function()
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
            },
        }
    })

    lib.addRadialItem({
        {
        id = 'vehiclemenu',
        label = 'Vehicle Menu',
        icon = BL_Scripts.Icons.radial_vehicle,
        onSelect = function()
            if not hasAllowedJob(source) then 
                lib.hideRadial()
                return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.not_allowed_job, 5000)
            end
        end,
        menu = 'bl_vehiclemenu'
        },
    })

    function BL_VehicleMenu()
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
        local veh = GetVehiclePedIsIn(PlayerPedId())
        local Options_info = {
            {label = (BL_Scripts.language.vehicle_fuel):format(GetVehicleFuelLevel(veh)), name = 'bl_core_menu_vehicle_fuel'},
            {label = (BL_Scripts.language.vehicle_name):format(GetDisplayNameFromVehicleModel(GetEntityModel(veh))), name = 'bl_core_menu_vehicle_name'},
            {label = (BL_Scripts.language.vehicle_plate):format(GetVehicleNumberPlateText(veh)), name = 'bl_core_menu_vehicle_plate'},
            {label = (BL_Scripts.language.vehicle_color):format(GetVehicleColor(veh)), name = 'bl_core_menu_vehicle_color'},
            {label = (BL_Scripts.language.vehicle_turbo):format(BL_GetTurbo()), name = 'bl_core_menu_vehicle_turbo'},
        }
        ESX.UI.Menu.Open("default", GetCurrentResourceName(), 'bl_core_vehiclemenu_info', {
            title = BL_Scripts.language.menu_vehicle_info,
            align = BL_Scripts.Position,
            elements = Options_info  
        }, function(data, menu)
            if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
            if data.current.name == 'bl_core_menu_vehicle_turbo' then 
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_GetTurbo(), 5000)
            end
        end, function(data, menu)
            menu.close()
        end)
    end
end