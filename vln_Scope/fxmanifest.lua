fx_version 'adamant'
games { 'rdr3' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'VLN Scope'
description 'Scope'
version '1.0.0'

client_scripts {
	'client/client.lua',
	'client/client_standalone.lua'
}

server_scripts {
	'server/server.lua'
}

shared_scripts {
	'config.lua'
}