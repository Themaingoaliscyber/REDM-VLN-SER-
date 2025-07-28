fx_version 'adamant'
games { 'rdr3' }
author 'Blue'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

shared_scripts {
	'config.lua',
}
server_script 'server.lua'
client_script 'client.lua'

escrow_ignore {
	"config.lua",
	'client.lua'
}
dependency {
	"vorp_core",
	"vorp_inventory",
}