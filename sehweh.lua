ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem('adrenalina', function(source)
    local xPlr = ESX.GetPlayerFromId(source)
    TriggerClientEvent("ayofleas:UsedAdrenalina", source)
end)

RegisterServerEvent("ayofleasokok", function(id)
    TriggerClientEvent('fineeaszkruljebacpsy:reviveson', id, true)
end)

RegisterServerEvent("vinoh:dymamcibabcie", function()
    local xPlr = ESX.GetPlayerFromId(source)
    xPlr.removeInventoryItem("adrenalina", 1)
end)
