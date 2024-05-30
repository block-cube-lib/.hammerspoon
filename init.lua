-- bind hotkey: alt(meta) + space
-- toggle WezTerm
hs.hotkey.bind({ "alt" }, "space",
    function()
        local appName = "WezTerm"
        local app = hs.application.find(appName)

        if app == nil then
            hs.application.launchOrFocus(appName)
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    end)
