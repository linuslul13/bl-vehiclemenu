if BL_Scripts.Menu == 'ox' then 
    RegisterCommand(BL_Scripts.Command, function()
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then 
            BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000)
        else
            lib.showMenu('bl_core_vehiclemenu')
        end
    end)
    RegisterKeyMapping(BL_Scripts.Command, 'Vehicle Menu', 'keyboard', BL_Scripts.Key)
lib.registerMenu({
        id = 'bl_core_vehiclemenu',
        title = BL_Scripts.language.menu_title,
        position = BL_Scripts.Position,
        options = {
            {label = BL_Scripts.language.menu_neon, icon = BL_Scripts.Icons.neon},
            {label = BL_Scripts.language.menu_xenon_color, icon = BL_Scripts.Icons.xenon}, 
            {label = BL_Scripts.language.menu_door, icon = BL_Scripts.Icons.door},
            {label = BL_Scripts.language.menu_window, icon = BL_Scripts.Icons.window},
            {label = BL_Scripts.language.menu_global, icon = BL_Scripts.Icons.global},
        }
}, function(selected, scrollIndex, args)
    if not GetVehiclePedIsIn(PlayerPedId()) then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
    local veh = GetVehiclePedIsIn(PlayerPedId())
    if selected == 1 then 
        lib.showMenu('bl_core_vehiclemenu_neon')
    end
    if selected == 2 then 
        BL_XenonControl()
    end
    if selected == 3 then 
        lib.showMenu('bl_core_vehiclemenu_door')
    end
    if selected == 4 then
        lib.showMenu('bl_core_vehiclemenu_window')
    end
    if selected == 5 then
        lib.showMenu('bl_core_vehiclemenu_global')
    end

end)

lib.registerMenu({
    id = 'bl_core_vehiclemenu_neon',
    title = BL_Scripts.language.menu_title,
    position = BL_Scripts.Position,
    onClose = function(keyPressed)
        lib.showMenu('bl_core_vehiclemenu')
    end,
    options = {
        {label = BL_Scripts.language.menu_neon_color, icon = BL_Scripts.Icons.neon_color},
        {label = BL_Scripts.language.right, icon = BL_Scripts.Icons.neon_right}, 
        {label = BL_Scripts.language.left, icon = BL_Scripts.Icons.neon_left},
        {label = BL_Scripts.language.front, icon = BL_Scripts.Icons.neon_front}, 
        {label = BL_Scripts.language.back, icon = BL_Scripts.Icons.neon_back},
        {label = BL_Scripts.language.all, icon = BL_Scripts.Icons.neon_all},
    }
}, function(selected, scrollIndex, args)
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
        local veh = GetVehiclePedIsIn(PlayerPedId())
        if selected  == 1 then 
            BL_ColorControl()
        end
        if selected == 2 then 
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
        if selected == 3 then 
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
        if selected == 4 then 
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
        if selected == 5 then 
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
        if selected == 6 then 
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
end)

lib.registerMenu({
    id = 'bl_core_vehiclemenu_door',
    title = BL_Scripts.language.menu_title,
    position = BL_Scripts.Position,
    onClose = function(keyPressed)
        lib.showMenu('bl_core_vehiclemenu')
    end,
    options = {
        {label = BL_Scripts.language.door_left, icon = BL_Scripts.Icons.door_left}, 
        {label = BL_Scripts.language.door_right, icon = BL_Scripts.Icons.door_right}, 
        {label = BL_Scripts.language.door_back_right, icon = BL_Scripts.Icons.door_back_right},
        {label = BL_Scripts.language.door_back_left, icon = BL_Scripts.Icons.door_back_left}, 
        {label = BL_Scripts.language.door_hook, icon = BL_Scripts.Icons.door_hook}, 
        {label = BL_Scripts.language.door_trunk, icon = BL_Scripts.Icons.door_trunk},
        {label = BL_Scripts.language.door_all, icon = BL_Scripts.Icons.door_all}, 
    }
}, function(selected, scrollIndex, args)
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
        local veh = GetVehiclePedIsIn(PlayerPedId())
        lib.showMenu('bl_core_vehiclemenu_door')
        if selected == 1 then 
            if GetVehicleDoorAngleRatio(veh, 0) > 0.0 then
                SetVehicleDoorShut(veh, 0, false, false)
                BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
            else 
                SetVehicleDoorOpen(veh, 0, false, false)
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
            end
        end
        if selected == 2 then 
            if GetVehicleDoorAngleRatio(veh, 1) > 0.0 then
                SetVehicleDoorShut(veh, 1, false, false)
                BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
            else 
                SetVehicleDoorOpen(veh, 1, false, false)
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
            end
        end
        if selected == 3 then 
            if GetVehicleDoorAngleRatio(veh, 2) > 0.0 then
                SetVehicleDoorShut(veh, 2, false, false)
                BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
            else 
                SetVehicleDoorOpen(veh, 2, false, false)
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
            end
        end
        if selected == 4 then 
            if GetVehicleDoorAngleRatio(veh, 3) > 0.0 then
                SetVehicleDoorShut(veh, 3, false, false)
                BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
            else 
                SetVehicleDoorOpen(veh, 3, false, false)
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
            end
        end
        if selected == 5 then 
            if GetVehicleDoorAngleRatio(veh, 4) > 0.0 then
                SetVehicleDoorShut(veh, 4, false, false)
                BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
            else 
                SetVehicleDoorOpen(veh, 4, false, false)
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
            end
        end
        if selected == 6 then 
            if GetVehicleDoorAngleRatio(veh, 5) > 0.0 then
                SetVehicleDoorShut(veh, 5, false, false)
                BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_close, 5000)
            else 
                SetVehicleDoorOpen(veh, 5, false, false)
                BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.door_open, 5000)
            end
        end
        if selected == 6 then 
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

lib.registerMenu({
    id = 'bl_core_vehiclemenu_window',
    title = BL_Scripts.language.menu_title,
    position = BL_Scripts.Position,
    onClose = function(keyPressed)
        lib.showMenu('bl_core_vehiclemenu')
    end,
    options = {
        {label = BL_Scripts.language.window_left, icon = BL_Scripts.Icons.window_left},
        {label = BL_Scripts.language.window_right, icon = BL_Scripts.Icons.window_right},
        {label = BL_Scripts.language.window_back_left, icon = BL_Scripts.Icons.window_back_left},
        {label = BL_Scripts.language.window_back_right, icon = BL_Scripts.Icons.window_back_right},
        {label = BL_Scripts.language.window_all, icon = BL_Scripts.Icons.window_all},
    }
}, function(selected, scrollIndex, args)
    if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
    local veh = GetVehiclePedIsIn(PlayerPedId())
    if selected == 1 then 
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

    if selected == 2 then 
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

    if selected == 3 then 
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

    if selected == 4 then 
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

    if selected == 5 then 
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

lib.registerMenu({
    id = 'bl_core_vehiclemenu_global',
    title = BL_Scripts.language.menu_title,
    position = BL_Scripts.Position,
    onClose = function(keyPressed)
        lib.showMenu('bl_core_vehiclemenu')
    end,
    options = {
        {label = BL_Scripts.language.engien_onoff, icon = BL_Scripts.Icons.engien},
        {label = BL_Scripts.language.autopilot, icon = BL_Scripts.Icons.auto_pilot},
        {label = BL_Scripts.language.drive, icon = BL_Scripts.Icons.drive_speed},
    }
}, function(selected, scrollIndex, args) 
        if GetVehiclePedIsIn(PlayerPedId()) == 0 then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
        local veh = GetVehiclePedIsIn(PlayerPedId())
        if selected == 1 then 
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
        if selected == 2 then 
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
        if selected == 3 then 
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

function BL_GetTurbo()
    local veh = GetVehiclePedIsIn(PlayerPedId())
    if IsToggleModOn(veh, 18) == false then 
        return BL_Scripts.language.vehicle_turbo_disabled 
    else 
        return BL_Scripts.language.vehicle_turbo_enabled
     end
end

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        return lib.hideMenu(true)
    end
end)
end