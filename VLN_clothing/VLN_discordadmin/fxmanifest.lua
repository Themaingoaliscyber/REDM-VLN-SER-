fx_version 'adamant'
games { 'rdr3' }
author 'Blue'
lua54 'yes'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
client_script {
	'config.lua',
	'client.lua',
}
server_script {
	"configserver.lua",
	"serverbot.lua",
	"server.lua"
}
escrow_ignore {
	"configserver.lua"
}
dependency {
	"vorp_core",
	"vorp_inventory",
}