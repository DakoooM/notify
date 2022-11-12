function addNotification(param)
    SendNUIMessage({
        action = "notify",
        author = param.author or "User#1054",
        text = param.text or "lorem ipsum",
        color = param.color or "red",
        icon = param.icon or nil
    })
end

--[[ 
    for change icon use this link:
    https://fontawesome.com/icons

    Example usage: 
    exports["nomdelaresource"]:addNotification({
        author = "user", 
        text = "testing", 
        color = "orange",
        icon = "fa-brands fa-youtube"
    })
]]
exports("addNotification", addNotification);