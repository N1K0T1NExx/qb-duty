-- fxmanifest.lua
fx_version 'cerulean'
game 'gta5'

author 'n1k0'
description 'Toggle Duty Script for QBCore'
version '0.0.1'

client_scripts {
    'client.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua', -- if you use MySQL async
    'server.lua',
}
