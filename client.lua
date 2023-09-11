local Core = exports[Config.Core]:GetCoreObject()
local DefaultHair = nil
local DefaultHairTexture = nil

function playAnim(animDict, animName, duration, flag)
	lib.requestAnimDict(animDict, 100)
    TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, flag, 1, false, false, false)
end

RegisterNetEvent('mt-scrunchie:client:useScrunchie', function()
    local PlayerData = Core.Functions.GetPlayerData()
    local gender = PlayerData.charinfo.gender
    local ped = PlayerPedId()
    
    playAnim(Config.animDict, Config.animName, 1000)
    Wait(1000)
    if not DefaultHair or not DefaultHairTexture then
        DefaultHair = GetPedDrawableVariation(ped, 2)
        DefaultHairTexture = GetPedTextureVariation(ped, 2)
        if gender == 1 then
            SetPedComponentVariation(ped, 2, Config.femaleHair, DefaultHairTexture, 2)
        else
            SetPedComponentVariation(ped, 2, Config.maleHair, DefaultHairTexture, 2)
        end
    else
        SetPedComponentVariation(ped, 2, DefaultHair, DefaultHairTexture, 2)
        DefaultHair = nil
        DefaultHairTexture = nil
    end
end)