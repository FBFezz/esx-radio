for channel, config in pairs(Config.RestrictedChannels) do
    exports['pma-voice']:addChannelCheck(channel, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        return config[xPlayer.job.name]
    end)
end

if Config.Item.Require then
    ESX.RegisterUsableItem(Config.Item.name, function(source)
        TriggerClientEvent('esx-radio:use', source)
    end)

    ESX.RegisterServerCallback('esx-radio:server:GetItem', function(source, cb, item)
        local xPlayer = ESX.GetPlayerFromId(source)
        local RadioItem = xPlayer.getInventoryItem(Config.Item.name).count
        cb(RadioItem >= 1)
    end)
end


AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("-------------------------------------------------------------------")
    print(" ███████╗███████╗██╗  ██╗    ██████╗  █████╗ ██████╗ ██╗ ██████╗ ")
    print(" ██╔════╝██╔════╝╚██╗██╔╝    ██╔══██╗██╔══██╗██╔══██╗██║██╔═══██╗")
    print(" █████╗  ███████╗ ╚███╔╝     ██████╔╝███████║██║  ██║██║██║   ██║")
    print(" ██╔══╝  ╚════██║ ██╔██╗     ██╔══██╗██╔══██║██║  ██║██║██║   ██║")
    print(" ███████╗███████║██╔╝ ██╗    ██║  ██║██║  ██║██████╔╝██║╚██████╔╝")
    print(" ╚══════╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝ ╚═════╝ ")
    print(" Converted By Mycroft(Manager of ESX-Framework) & Benzo (Head of ESX Support)")
    print("             Website: https://docs.esx-framework.org         ")
    print("              TRClassic: https://dsc.gg/trclassic            ")
    print("            Want more scripts? Visit https://modit.store :)  ")
    print("-------------------------------------------------------------------")                                                                                                                                
  end)
 
 
