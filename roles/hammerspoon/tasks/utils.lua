require("os")

hs.alert.defaultStyle.strokeColor = {alpha=0}
hs.alert.defaultStyle.strokeWidth = 0
hs.application.enableSpotlightForNameSearches(true)

----------- remap keys ------------
function remap(mods, key, pressFn)
    hs.hotkey.bind(mods, key, pressFn, nil, pressFn)
end

function pressFn(mods, key)
    if key == nil then
        key = mods
        mods = {}
    end

    return function()
        hs.eventtap.keyStroke(mods, key, 1000)
    end
end
--------------------------------------

------------ open url ----------------
function openURL(url)
    return function()
        hs.urlevent.openURL(url)
    end
end
--------------------------------------

------------ open file ----------------
function open(name)
    return function()
        hs.open(name)
    end
end
--------------------------------------

------------ launch app ----------------
function launch(name)
    return function()
        hs.application.launchOrFocus(name)
    end
end
--------------------------------------

------------ launch app if not running, otherwise kill it ----------------
function togglelaunch(name)
    return function()
        app_instance = hs.application.get(name)
        if app_instance == nil then
            hs.application.launchOrFocus(name)
            hs.alert.show("launched")
        else
            app_instance:kill()
            hs.alert.show("killed")
        end
    end
end
--------------------------------------
