fx_version "adamant"

games { 'rdr3' }

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

use_fxv2_oal "yes"
lua54        "yes"
version      "1.0"

author  "Quantum Quake Studios"
description "VALENTINE AUDIO"



client_scripts {
	'config.lua',
	'client.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
	'html/css/kirstyrg.otf',
	'html/css/style.css',
	
	'html/img/*.png',
	
	'html/js/script.js',
	'html/js/jquery-3.5.1.min.js',

}server_scripts { '@mysql-async/lib/MySQL.lua' }