-- client.lua

CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        if IsPedOnAnyBike(playerPed) then
            -- Prevents helmet from being put on
            SetPedHelmet(playerPed, false)
            RemovePedHelmet(playerPed, true)
        end
    end
end)
