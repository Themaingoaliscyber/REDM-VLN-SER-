author 'Valentine'
fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"

shared_script "config.lua"

client_scripts {
    'client.lua'
}

escrow_ignore "config.lua"



lua54 'yes'