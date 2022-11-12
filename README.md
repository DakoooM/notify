# notify
notification twitter and all


**Icon Name find here:** https://fontawesome.com/icons<br>
**Example of Usage**

```lua
exports["notify"]:addNotification({
    author = "user", 
    text = "testing", 
    color = "orange",
    icon = "fa-brands fa-youtube"
}, 5)
```

**Usage server side**

```lua
TriggerClientEvent("notify:addNotification", -1 --[[ for send notif to all player = -1 or source for just player ]], {
    author = "user", 
    text = "testing", 
    color = "orange",
    icon = "fa-brands fa-youtube"
})
```
