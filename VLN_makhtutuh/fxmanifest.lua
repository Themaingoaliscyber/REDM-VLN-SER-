
fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
games {"rdr3"}
lua54 "yes"
version '1.0.1'

escrow_ignore {
    'fw_func.lua',
	'config.lua',
    'events.lua',
    'webhook.lua',
}

files {
    'not.js',
}

shared_scripts {
    'config.lua',
}

client_scripts {
    'client.lua',
    'events.lua',
    'not.js'
}


server_scripts {
    '@oxmysql/lib/MySQL.lua', --FOR REDEMRP: '@mysql-async/lib/MySQL.lua' | FOR REDEMRP-REBOOT/QBR/RSG/QR/VORP: '@oxmysql/lib/MySQL.lua',
    'fw_func.lua',
    'webhook.lua',
    'server.lua',
}
dependency '/assetpacks'