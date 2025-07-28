fx_version "adamant"

games { 'rdr3' }

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

use_fxv2_oal "yes"
lua54        "yes"
version      "1.0"

author  "Quantum Quake Studios"
description "Quantum Quake Leveling"

client_scripts {
	"client.lua"
}

shared_scripts {
    'config.lua',
}

server_scripts {
	"server.lua"
}

ui_page {
	"html/index.html", 
}

escrow_ignore {
	'config.lua', 
}

files {
	"html/index.html",
	"html/*.*",
	"html/assets/*.*",
}