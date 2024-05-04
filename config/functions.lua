function BL_Notify(type, title, message, time)
    if BL_Scripts.Notify.type == 'ox' then 
        lib.notify({
            title = title,
            description = message,
            position = BL_Scripts.NotifyPosition,
            type = type,
            duration = time,
            iconAnimation = 'beat'
        })
    elseif BL_Scripts.Notify.type == 'esx' then 
        ESX.ShowNotification(msg)
    elseif BL_Scripts.Notify.type == 'okok' then 
        exports['okokNotify']:Alert(title, message, time, type, false)
    elseif BL_Scripts.Notify.type == 'bl' then 
        TriggerEvent('bl_notify', type, title, message, time)
    else 
        return print('^1 NO NOTIFY')
    end
end

function BL_ColorControl()
    if not GetVehiclePedIsIn(PlayerPedId()) then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
    local veh = GetVehiclePedIsIn(PlayerPedId())
    local input = lib.inputDialog(BL_Scripts.language.menu_title, {
        {type = 'color', label = BL_Scripts.language.menu_color, default = '#eb4034'},
    })

    if input == nil then
         BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_color, 5000)
    else
        if BL_Scripts.Debug then 
            print(input[1] .. ' to '.. lib.math.hextorgb(input[1]))
        end
    SetVehicleNeonLightsColour(veh, lib.math.hextorgb(input[1]))
    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.changed_color, 5000)
    end
end

function BL_XenonControl()
    if not GetVehiclePedIsIn(PlayerPedId()) then return BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_vehicle, 5000) end
    local veh = GetVehiclePedIsIn(PlayerPedId())
    local input = lib.inputDialog(BL_Scripts.language.menu_title, {
        {type = 'color', label = BL_Scripts.language.menu_color, default = '#eb4034'},
    })

    if input == nil then
         BL_Notify('error', BL_Scripts.Notify.ServerName, BL_Scripts.language.no_color, 5000)
    else
        if BL_Scripts.Debug then 
            print(input[1] .. ' to '.. lib.math.hextorgb(input[1]))
        end
        SetVehicleXenonLightsCustomColor(veh, lib.math.hextorgb(input[1]))
    BL_Notify('success', BL_Scripts.Notify.ServerName, BL_Scripts.language.changed_xenon, 5000)
    end
end