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
    exports[GetCurrentResourceName()]:Notify('Error Message', 1)
    exports[GetCurrentResourceName()]:Notify('Success Message', 2)
    exports[GetCurrentResourceName()]:Notify('Information Message', 3)

end)
