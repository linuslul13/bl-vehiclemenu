if BL_Scripts.Menu == 'esx_default_menu' then 
    local Options = {
        {label = BL_Scripts.language.menu_neon, name = 'bl_core_menu_neon'},
        {label = BL_Scripts.language.menu_xenon_color, name = 'bl_core_menu_xenon_color'}, 
        {label = BL_Scripts.language.menu_door, name = 'bl_core_menu_door'},
        {label = BL_Scripts.language.menu_window, name = 'bl_core_menu_window'},
        {label = BL_Scripts.language.menu_global, name = 'bl_core_menu_global'},
        {label = BL_Scripts.language.menu_vehicle_info, name = 'bl_core_menu_vehicle'},
    }
    local Options_neon = {
        {label = BL_Scripts.language.menu_neon_color, name = 'bl_core_menu_neon_color'},
        {label = BL_Scripts.language.right, name = 'neon_right'}, 
        {label = BL_Scripts.language.left, name = 'neon_left'},
        {label = BL_Scripts.language.front, name = 'neon_front'}, 
        {label = BL_Scripts.language.back, name = 'neon_back'},
        {label = BL_Scripts.language.all, name = 'neon_all'},
    }
    local Options_door = {
            {label = BL_Scripts.language.door_left, name = 'door_left'}, 
            {label = BL_Scripts.language.door_right, name = 'door_right'}, 
            {label = BL_Scripts.language.door_back_right, name = 'door_back_right'},
            {label = BL_Scripts.language.door_back_left, name = 'door_back_left'}, 
            {label = BL_Scripts.language.door_hook, name = 'door_hook'}, 
            {label = BL_Scripts.language.door_trunk, name = 'door_trunk'},
            {label = BL_Scripts.language.door_all, name = 'door_all'},
    }
    local Options_window = {
        {label = BL_Scripts.language.window_left, name = 'window_left'},
        {label = BL_Scripts.language.window_right, name = 'window_right'},
        {label = BL_Scripts.language.window_back_left, name = 'window_back_left'},
        {label = BL_Scripts.language.window_back_right, name = 'window_back_right'},
        {label = BL_Scripts.language.window_all, name = 'window_all'},
    }
    local Options_engien = {
        {label = BL_Scripts.language.engien_onoff, name = 'engien_onoff'},
        {label = BL_Scripts.language.autopilot, name = 'engien_autopilot'},
        {label = BL_Scripts.language.drive, name = 'engien_drive'},
    }

    function openvehiclemenu()
        ESX.UI.Menu.Open("default", GetCurrentResourceName(), 'bl_core_vehiclemenu', {
            title = BL_Scripts.language.menu_title,
            align = BL_Scripts.Position,
            elements = Options  
        }, function(data, menu)
            if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
            if data.current.name == 'bl_core_menu_neon' then 
                BL_NeonControl()
            end
            if data.current.name == 'bl_core_menu_xenon_color' then 
                BL_XenonControl()
            end
            if data.current.name == 'bl_core_menu_door' then 
                BL_DoorControl()
            end
            if data.current.name == 'bl_core_menu_window' then 
                BL_WindowControl()
            end
            if data.current.name == 'bl_core_menu_global' then
                BL_EngienControl()
            end
            if data.current.name == 'bl_core_menu_vehicle' then 
                BL_VehicleMenu()
            end
        end, function(data, menu)
            menu.close()
        end)
    end

    function BL_NeonControl()
        ESX.UI.Menu.Open("default", GetCurrentResourceName(), 'bl_core_vehiclemenu_neon', {
            title = BL_Scripts.language.menu_title,
            align = BL_Scripts.Position,
            elements = Options_neon 
        }, function(data, menu)
            if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
            local veh = GetVehiclePedIsIn(PlayerPedId())
            if data.current.name == 'bl_core_menu_neon_color' then 
                BL_ColorControl()
            end
            if data.current.name == 'neon_right' then 
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
            if data.current.name == 'neon_left' then 
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
            if data.current.name == 'neon_front' then 
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
            if data.current.name == 'neon_back' then 
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
            if data.current.name == 'neon_all' then 
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
        end, function(data, menu)
            menu.close()
            openvehiclemenu()
        end)
    end

    function BL_DoorControl()
        ESX.UI.Menu.Open("default", GetCurrentResourceName(), 'bl_core_vehiclemenu_door', {
            title = BL_Scripts.language.menu_title,
            align = BL_Scripts.Position,
            elements = Options_door
        }, function(data, menu)
            if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
            local veh = GetVehiclePedIsIn(PlayerPedId())
            if data.current.name == 'door_left' then 
                if GetVehicleDoorAngleRatio(veh, 0) > 0.0 then
                    SetVehicleDoorShut(veh, 0, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 0, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
            if data.current.name == 'door_right' then 
                if GetVehicleDoorAngleRatio(veh, 1) > 0.0 then
                    SetVehicleDoorShut(veh, 1, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 1, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
            if data.current.name == 'door_back_right' then 
                if GetVehicleDoorAngleRatio(veh, 2) > 0.0 then
                    SetVehicleDoorShut(veh, 2, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 2, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
            if data.current.name == 'door_back_left' then 
                if GetVehicleDoorAngleRatio(veh, 3) > 0.0 then
                    SetVehicleDoorShut(veh, 3, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 3, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
            if data.current.name == 'door_hook' then 
                if GetVehicleDoorAngleRatio(veh, 4) > 0.0 then
                    SetVehicleDoorShut(veh, 4, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 4, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
            if data.current.name == 'door_trunk' then 
                if GetVehicleDoorAngleRatio(veh, 5) > 0.0 then
                    SetVehicleDoorShut(veh, 5, false, false)
                    BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
                else 
                    SetVehicleDoorOpen(veh, 5, false, false)
                    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
                end
            end
            if data.current.name == 'door_all' then 
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
        end, function(data, menu)
            menu.close()
            openvehiclemenu()
        end)
    end

    function BL_WindowControl()
        ESX.UI.Menu.Open("default", GetCurrentResourceName(), 'bl_core_vehiclemenu_window', {
            title = BL_Scripts.language.menu_title,
            align = BL_Scripts.Position,
            elements = Options_window
        }, function(data, menu)
            if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
            local veh = GetVehiclePedIsIn(PlayerPedId())
           if data.current.name == 'window_left' then 
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

           if data.current.name == 'window_right' then 
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

           if data.current.name == 'window_back_left' then 
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
           if data.current.name == 'window_back_right' then 
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
           if data.current.name == 'window_all' then 
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

        end, function(data, menu)
            menu.close()
            openvehiclemenu()
        end)
    end

    function BL_EngienControl()
        ESX.UI.Menu.Open("default", GetCurrentResourceName(), 'bl_core_vehiclemenu_global', {
            title = BL_Scripts.language.menu_title,
            align = BL_Scripts.Position,
            elements = Options_engien  
        }, function(data, menu)
            if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
            local veh = GetVehiclePedIsIn(PlayerPedId())
            if data.current.name == 'engien_onoff' then 
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
            if data.current.name == 'engien_autopilot' then 
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
            if data.current.name == 'engien_drive' then 
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
        end, function(data, menu)
            menu.close()
            openvehiclemenu()
        end)
    end

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
            openvehiclemenu()
        end)
    end

    RegisterCommand(BL_Scripts.Command, function()
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then 
            BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000)
        else
            openvehiclemenu()
        end
    end)

    function BL_GetTurbo()
        local veh = GetVehiclePedIsIn(PlayerPedId())
        if IsToggleModOn(veh, 18) == false then 
            return BL_Scripts.language.vehicle_turbo_disabled 
        else 
            return BL_Scripts.language.vehicle_turbo_enabled
         end
    end
end