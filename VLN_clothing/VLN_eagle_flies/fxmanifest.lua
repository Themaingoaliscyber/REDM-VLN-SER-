game 'rdr3'
fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
 
client_scripts { 
    'config.lua',
    'client.lua',
	'functions.lua',
}

server_scripts { 
	'config.lua',
    'server.lua',
	'functions.lua',
}
 
escrow_ignore {
  'config.lua',
}
dependency '/assetpacks'