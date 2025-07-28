Config = {}

Config.CommandName = 'luman-dragon' -- Command name
Config.CommandAdminOnly = true -- Admin only
Config.AllowDamageToDragonByBullets = false

Config.Dragons = {
    -- Golden Dragon. Use command `/luman-dragon`
    {
        hash = `a_c_lumandragon_01`,
        outfit = 0,
        scale = 5.0,
        riderOffset = {0.0, 0.0, 0.160, -45.0, 0.0, 0.0},
        fire = {
            enabled = true,
            particleScale = 7.0,
            sourceOffset = {0.10, 0.10, 0.0, 0.0, 0.0, 0.0},
            directionOffset = {
                11.0,
                27.5,
                0.0,
            },

        },
        cameraDistance = 11.0,
    },
    -- Red Dragon. Use command `/luman-dragon 2`
    {
        hash = `a_c_lumandragon_01`,
        outfit = 1,
        scale = 5.0,
        riderOffset = {0.0, 0.0, 0.160, -45.0, 0.0, 0.0},
        fire = {
            enabled = true,
            particleScale = 7.0,
            sourceOffset = {0.10, 0.10, 0.0, 0.0, 0.0, 0.0},
            directionOffset = {
                11.0,
                27.5,
                0.0,
            },
        },
        cameraDistance = 11.0,
    },
    -- Blue Dragon. Use command `/luman-dragon 3`
    {
        hash = `a_c_lumandragon_01`,
        outfit = 2,
        scale = 5.0,
        riderOffset = {0.0, 0.0, 0.160, -45.0, 0.0, 0.0},
        fire = {
            enabled = true,
            particleScale = 7.0,
            sourceOffset = {0.10, 0.10, 0.0, 0.0, 0.0, 0.0},
            directionOffset = {
                11.0,
                27.5,
                0.0,
            },
        },
        cameraDistance = 11.0,
    },
    -- Experimental Owl: Use command `/luman-dragon 4`
    {
        hash = `a_c_lumanowl_01`,
        outfit = 0,
        scale = 5.0,
        riderOffset = {0.0, 0.0, 0.120, -45.0, 0.0, 0.0},
        invisibleRider = true,
        fire = {
            enabled = false,
            particleScale = 3.5,
            sourceOffset = {0.10, 0.10, 0.0, 0.0, 0.0, 0.0},
            directionOffset = {
                5.0,
                14.0,
                0.0,
            },
        },
        cameraDistance = 11.0,
    },
}

-- https://github.com/kibook/redm-lightning-attacks/blob/master/client.lua