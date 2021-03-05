function notify(text, type)
    SendNUIMessage({
        ['action'] = 'send',
        ['text'] = text,
        ['type'] = type

    })
end

exports("Notify", notify)

RegisterNetEvent("cy-notify:send")
AddEventHandler('cy-notify:send', function(message, type)
    exports[GetCurrentResourceName()]:Notify(message, type)
end)
