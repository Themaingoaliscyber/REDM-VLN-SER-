PAUSEMENU = {
    framework = nil,
    state = false,
    playerData = {
        playerPhoto = nil,
        playerName = nil,
    },
    pauseMenuLoaded = false,
}


local function defineFramework()
    local vorp_core_status = GetResourceState("vorp_core") == "started" and true or false
    if vorp_core_status then
        PAUSEMENU.framework = "vorp"
    else
        PAUSEMENU.framework = "rsg"
    end
    print("Framework detected: " .. PAUSEMENU.framework)
end

defineFramework()