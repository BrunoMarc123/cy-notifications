RegisterCommand("a", function(source, args, rawCommand)
    TriggerClientEvent("dl-notify:send", source, 'hey', 1)
end)
