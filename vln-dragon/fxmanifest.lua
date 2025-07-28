fx_version 'cerulean'
games { 'rdr3' }
author ''
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'
version '1.0.7'

dependencies {
    '/assetpacks',
}

shared_scripts {
    'shared/utils.lua',
    'shared/translation.lua',
    'config.lua',
}

client_scripts {
    'client/dataview.lua',
    'client/functions.lua',
    'client/framework.lua',
    'client/component.lua',
    'client/camera.lua',
    'client/main.lua',
    'client/spawn.lua',
    'client/fixanimal.lua',
}
server_scripts {
    'server/main.lua',
}

-- a_c_lumandragon_01
file 'metapeds.ymt'
data_file 'PED_METADATA_FILE' 'metapeds.ymt'

escrow_ignore {
    'docs/*.*',
    'shared/*.*',
    'client/fixanimal.lua',
    'server/framework.lua',
    'client/framework.lua',
    'locales/*.*',
    'config.lua',
    'stream/*.*',
}
dependency '/assetpacks'
dependency '/assetpacks-redm'