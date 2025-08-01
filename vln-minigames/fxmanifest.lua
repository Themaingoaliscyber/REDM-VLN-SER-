game 'rdr3'
fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
author "vln team"

client_scripts {
    'client/main.lua',
    'client/api.lua'
}

server_scripts {
    'server/main.lua'
}

ui_page {
    "ui/index.html"
}

files {
    "ui/index.html",
    "ui/js/*.*",
    "ui/css/*.*",
    "ui/fonts/*.*",
    "ui/img/*.*",
    "ui/media/*.*",
    "ui/assets/ammo/*.*",
    "ui/assets/themes/*.*",
    "ui/assets/themes/default/*.*"
}

export "initiate"

version '1.0.7'
