----------- remap keys ------------
function remap(mods, key, pressFn)
	hs.hotkey.bind(mods, key, pressFn, nil, pressFn)
end

function pressFn(mods, key)
	if key == nil then
		key = mods
		mods = {}
	end

	return function() hs.eventtap.keyStroke(mods, key, 1000) end
end
--------------------------------------

------------ open app ----------------
-- from: https://liuhao.im/english/2017/06/02/macos-automation-and-shortcuts-with-hammerspoon.html
function launch(name)
  return function()
      hs.application.launchOrFocus(name)
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

------------ launch app if not running, else kill it ----------------
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
