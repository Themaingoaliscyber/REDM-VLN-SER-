TriggerEvent('menuapi:getData', function(call)
    MenuData = call
end)

TriggerEvent("getCore", function(core)
    VORPcore = core
end)

function NotifyLeft(title, subtitle, dict, icon , time, color)
    VORPcore.NotifyLeft(title, subtitle, dict, icon , time, color)
end

function NotifySimpleTop(title, subtitle, time)
    VORPcore.NotifySimpleTop(title, subtitle, time)
end

function NotifyFail(title, subtitle, time)
    VORPcore.NotifyFail(title, subtitle, time)
end

function NotifyObjective(text, time)
    VORPcore.NotifyObjective(text, time)
end