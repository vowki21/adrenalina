ESX = exports["es_extended"]:getSharedObject()
RegisterNetEvent("ayofleas:UsedAdrenalina", function()
    local pid = PlayerPedId()
    local fond = false
    for k, v in pairs(GetActivePlayers()) do
        local ff = GetPlayerPed(v)
        if ff ~= pid then
            if #(GetEntityCoords(pid) - GetEntityCoords(ff)) < 1.5 then
                if not fond then
                    if GetEntityCanBeDamaged(ff) ~= 1 then
                        fond = true
                        ESX.ShowNotification("~g~Używasz Adrenaliny")
                        FreezeEntityPosition(pid, true)
                        TaskStartScenarioInPlace(pid, "CODE_HUMAN_MEDIC_TEND_TO_DEAD", 0, true)
                        exports["cloud_taskbar"]:taskBar(5000, "Wtrzykiwanie Adrenaliny", false, true)
                        ClearPedTasks(pid)
                        FreezeEntityPosition(pid, false)
                        local localIdFromPed = NetworkGetPlayerIndexFromPed(ff)
                        TriggerServerEvent("ayofleasokok", GetPlayerServerId(localIdFromPed))
                        ESX.ShowNotification('~g~Ożywiono gracza '..GetPlayerName(localIdFromPed)..' ['..GetPlayerServerId(localIdFromPed)..']')
                        TriggerServerEvent('vinoh:dymamcibabcie')
                    else
                        ESX.ShowNotification("~r~Gracz nie jest Martwy!")
                    end
                end
            end
        end
    end
end)
