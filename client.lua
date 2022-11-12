function addNotification(param, timeout)
    SendNUIMessage({
        action = "notify",
        author = param.author or "User#1054",
        text = param.text or "lorem ipsum",
        color = param.color or "red",
        icon = param.icon or nil
    })
    
    if timeout and tonumber(timeout) then
        SetTimeout(timeout * 1000, function() 
            SendNUIMessage({action = "notify"});
        end)
    end
end

RegisterNetEvent("notify:addNotification")
AddEventHandler("notify:addNotification", function(param, timeout)
    addNotification(param, timeout or 15)
end)

exports("addNotification", addNotification);
