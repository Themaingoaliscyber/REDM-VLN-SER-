game 'rdr3'
fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'
author 'vln_taem'
description 'Indepth diamondpanning script by VLN'

server_scripts {
    '/server/*.lua'
}

shared_scripts {
    'config.lua',
    'locale.lua',
    'languages/*.lua'
}


client_scripts {
    '/client/*.lua'
}

dependencies {
    'vorp_core',
    'vorp_inventory',
    'vln-feather-progressbar',
    'vln-minigames',
    'vln-utils'
}

version '1.0.2'
