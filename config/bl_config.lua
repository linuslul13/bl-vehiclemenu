BL_Scripts = {}

BL_Scripts.Menu = 'radial_menu' -- ox / rage / esx_default_menu / radial_menu

BL_Scripts.NotifyPosition = 'top'
BL_Scripts.Position = 'top-right'

BL_Scripts.Command = 'vehiclemenu'

BL_Scripts.Banner = 'YOUR LINK' -- only for rage ui!

BL_Scripts.Key = 'm' -- key to open the menu

BL_Scripts.Jobs = true  -- only if you want to use specific jobs
BL_Scripts.AllowedJobs = {'police', 'mechanic', 'taxi'} 

BL_Scripts.Debug = true 

BL_Scripts.Notify = {
    ['type'] = 'ox',-- ox / esx / bl / okok / 'functions.lua'
    ['ServerName'] = 'BL SCRIPTS',
}

BL_Scripts.Icons = {
    ['neon'] = 'car',
    ['door'] = 'door-open',
    ['window'] = 'car-side',
    ['xenon'] = 'lightbulb',
    ['global'] = 'gears',
    ['info'] = 'inbox',
    ['neon_color'] = 'paint-roller',
    ['neon_right'] = 'toggle-off',
    ['neon_left'] = 'toggle-off',
    ['neon_back'] = 'toggle-off',
    ['neon_front'] = 'toggle-off',
    ['neon_back'] =  'toggle-off',
    ['neon_all'] = 'toggle-on',
    ['door_left'] = 'door-open',
    ['door_right'] = 'door-open',
    ['door_back_left'] = 'door-open',
    ['door_back_right'] = 'door-open',
    ['door_trunk'] = 'truck',
    ['door_hook'] = 'hockey-puck',
    ['door_all'] = 'door-closed',
    ['window_left'] = 'window-restore',
    ['window_right'] = 'window-restore',
    ['window_back_left'] = 'window-restore',
    ['window_back_right'] = 'window-restore',
    ['window_all'] = 'window-maximize',
    ['engien'] = 'car-battery',
    ['auto_pilot'] = 'robot',
    ['drive_speed'] = 'gauge',
    ['radial_vehicle'] = 'car'
}

BL_Scripts.language = {
    ['no_vehicle'] = 'You are not sitting in any vehicle',
    ['menu_title'] = 'BL SCRIPTS',
    ['menu_neon'] = 'Neon',
    ['menu_neon_description'] = 'Neon Settings',
    ['menu_neon_color'] = 'Neon Color',
    ['menu_neon_color_description'] = 'Change your Neon color',
    ['left'] = 'Left',
    ['right'] = 'Right',
    ['back'] = 'Back',
    ['front'] = 'Front',
    ['all'] = 'All',
    ['light'] = 'You turned on the light %s',
    ['light_all'] = 'You turned on all lights %s',
    ['menu_color'] = 'What color do you want?',
    ['no_color'] = 'You have not selected a color!',
    ['changed_color'] = 'You changed your Neon color!',
    ['menu_xenon'] = 'Headlights',
    ['menu_xenon_description'] = 'Turn your headlights on/off',
    ['menu_xenon_color'] = 'Headlight Color',
    ['menu_xenon_color_description'] = 'Change your headlight color',
    ['changed_xenon'] = 'You changed your headlight color!',
    ['menu_door'] = 'Vehicle Doors',
    ['menu_door_description'] = 'Vehicle Doors Settings',
    ['door_right'] = 'Front Right Door',
    ['door_left'] = 'Front Left Door',
    ['door_back_right'] = 'Back Right Door',
    ['door_back_left'] = 'Back Left Door',
    ['door_hook'] = 'Bonnet',
    ['door_trunk'] = 'Trunk',
    ['door_all'] = 'All',
    ['door_open'] = 'You opened a door',
    ['door_all_open'] = 'You opened all doors',
    ['door_close'] = 'You closed a door',
    ['door_all_close'] = 'You closed all doors',
    ['menu_window'] = 'Windows',
    ['menu_window_description'] = 'Windows Settings',
    ['window_right'] = 'Right Window',
    ['window_left'] = 'Left Window',
    ['window_back_right'] = 'Back Right Window',
    ['window_back_left'] = 'Back Left Window',
    ['window_all'] = 'All',
    ['window_notify'] = 'You %s your window',
    ['window_all_notify'] = 'You %s all windows',
    ['menu_global'] = 'General',
    ['menu_global_description'] = 'General Settings',
    ['engien_onoff'] = 'Engine on/off',
    ['engien'] = 'You %s your engine',
    ['autopilot'] = 'Autopilot',
    ['autopilot_menu_title'] = 'How fast do you want to drive?',
    ['autopilit_menu_description'] = 'Specify the km/h',
    ['autopilot_enabled'] = 'You have activated the autopilot',
    ['autopilot_no_marker'] = 'You have not set any markers!',
    ['autopilot_disabled'] = 'You have deactivated the autopilot',
    ['drive'] = 'Max Speed',
    ['drive_menu_title'] = 'Maximum Speed',
    ['drive_menu_description'] = 'Set the maximum speed you can drive!',
    ['max_speed_notify'] = 'You set the maximum speed of your car to %s km/h',
    ['disable_max_speed_notify'] = 'You have disabled the maximum speed!',
    ['menu_vehicle_info'] = 'Vehicle Menu',
    ['menu_vehicle_info_description'] = 'General Vehicle Information',
    ['vehicle_fuel'] = 'FUEL: %s',
    ['vehicle_name'] = 'Name: %s',
    ['vehicle_plate'] = 'Plate: %s',
    ['vehicle_color'] = 'Color: %s',
    ['vehicle_turbo'] = 'Turbo: %s',
    ['vehicle_turbo_disabled'] = 'DISABLED',
    ['vehicle_turbo_enabled'] = 'ENABLED',
    ['not_allowed_job'] = 'False Job',
}
