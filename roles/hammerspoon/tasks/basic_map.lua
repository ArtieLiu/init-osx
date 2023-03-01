require("utils")

HYPER_LITE = { "cmd", "alt", "ctrl" }
HYPER      = { "cmd", "alt", "ctrl", "shift" }

hs.hotkey.bind(HYPER, "f", launch("Finder"))
hs.hotkey.bind(HYPER, "y",
               function()
                   hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Displays.prefPane")
               end)
hs.hotkey.bind(HYPER, "b",
               function()
                   hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Bluetooth.prefPane")
               end)

remap(HYPER, 'h', pressFn('left'))
remap(HYPER, 'j', pressFn('down'))
remap(HYPER, 'k', pressFn('up'))
remap(HYPER, 'l', pressFn('right'))

----------- reload config ------------
hs.hotkey.bind(HYPER_LITE, "c",
               function()
                   hs.reload()
               end)
hs.alert.show("Config loaded")
--------------------------------------
