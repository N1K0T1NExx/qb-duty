-- server.lua

QBCore = exports['qb-core']:GetCoreObject()

-- Toggle Duty Event Handler
RegisterNetEvent('Toggle:Duty', function(job, dutyState)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        local jobName = Player.PlayerData.job.name

        if job == jobName then
            -- Set duty state based on the command (true = on duty, false = off duty)
            if dutyState == true then
                Player.Functions.SetJobDuty(true)
                TriggerClientEvent('QBCore:Notify', src, "You are now on duty.", "success")
            else
                Player.Functions.SetJobDuty(false)
                TriggerClientEvent('QBCore:Notify', src, "You are now off duty.", "error")
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "You cannot toggle duty for this job.", "error")
        end
    end
end)
