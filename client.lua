-- client.lua

QBCore = exports['qb-core']:GetCoreObject()

-- Command to go ON duty
RegisterCommand('onduty', function()
    local playerPed = PlayerPedId()
    local job = QBCore.Functions.GetPlayerData().job.name

    -- Trigger Server Event to go ON duty
    TriggerServerEvent('Toggle:Duty', job, true)
end, false)

-- Command to go OFF duty
RegisterCommand('offduty', function()
    local playerPed = PlayerPedId()
    local job = QBCore.Functions.GetPlayerData().job.name

    -- Trigger Server Event to go OFF duty
    TriggerServerEvent('Toggle:Duty', job, false)
end, false)

-- Register Key Mapping (Optional)
RegisterKeyMapping('onduty', 'Go On Duty', 'keyboard', 'F6')  -- Keybind for On Duty
RegisterKeyMapping('offduty', 'Go Off Duty', 'keyboard', 'F7') -- Keybind for Off Duty
