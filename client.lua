local defaultHair = nil
local defaultHairTexture = nil

function playAnim(animDict, animName, duration, flag)
	lib.requestAnimDict(animDict, 100)
    TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, flag, 1, false, false, false)
end

function getPedSex()
    local model = GetEntityModel(PlayerPedId())
    if model == GetHashKey("mp_m_freemode_01") then
        return "male"
    elseif model == GetHashKey("mp_f_freemode_01") then
        return "female"
    end
end

RegisterNetEvent('mt-scrunchie:client:useScrunchie', function()
    local gender = getPedSex()
    local ped = PlayerPedId()
    
    playAnim(Config.animDict, Config.animName, 1000)
    Wait(1000)
    if not defaultHair or not defaultHairTexture then
        defaultHair = GetPedDrawableVariation(ped, 2)
        defaultHairTexture = GetPedTextureVariation(ped, 2)
        if gender == 'female' then
            SetPedComponentVariation(ped, 2, Config.femaleHair, defaultHairTexture, 2)
        elseif gender == 'male' then
            SetPedComponentVariation(ped, 2, Config.maleHair, defaultHairTexture, 2)
        end
    else
        SetPedComponentVariation(ped, 2, defaultHair, defaultHairTexture, 2)
        defaultHair = nil
        defaultHairTexture = nil
    end
end)