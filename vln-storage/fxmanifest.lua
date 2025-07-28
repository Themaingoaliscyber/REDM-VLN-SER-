fx_version "adamant"

games { 'rdr3' }

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

use_fxv2_oal "yes"
lua54        "yes"
version      "1.0"

client_script { 
"main/client.lua",
}

shared_scripts {
    'config.lua',
}

server_script {
"main/server.lua",
} 

escrow_ignore {
	'config.lua',
}

ui_page "html/index.html"

files {
    'html/index.html',
    'html/main.js',
    'html/images/*.png',
    'html/images/*.jpg',
    'html/*.css',
    'html/kirstyrg.otf',
    'html/HapnaSlabSerif-Medium.ttf',
}