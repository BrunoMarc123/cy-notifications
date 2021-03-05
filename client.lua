function notify(text, type)
    SendNUIMessage({
        ['action'] = 'send',
        ['text'] = text,
        ['type'] = type

    })
end

exports("Notify", notify)

RegisterNetEvent("dl-notify:send")
AddEventHandler('dl-notify:send', function(message, type)
    exports[GetCurrentResourceName()]:Notify(tostring(message), type)
end)
