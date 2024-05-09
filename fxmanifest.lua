fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'
version '1.1.0'
author 'BL Scripts | Linus'
client_scripts {
    'import/RageUI.lua',
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'config/*.lua'
}