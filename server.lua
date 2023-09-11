local Core = exports[Config.Core]:GetCoreObject()

Core.Functions.CreateUseableItem(Config.scrunchieItem, function(source, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-scrunchie:client:useScrunchie', src)
    end
end)