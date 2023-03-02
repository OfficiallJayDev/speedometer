function DrawTextOnScreen(text) 
    SetTextProportional(0)
    SetTextFont(4) 
    SetTextScale(1.0,1.0)
    SetTextColour(27,0,255, 255) -- RGBA
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.8, 0.85) 
end

Citizen.CreateThread(function()
    while true do
    local Speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6 

    if IsPedInAnyVehicle(GetPlayerPed(-1)) ~= 0 then 
        DrawText(tostring(math.floor(Speed + 0.5)) .. " KM/H") -- KMH / MPH
    else
        Citizen.Wait(100)
    end
    Citizen.Wait(0) -- 
    end
end) 
