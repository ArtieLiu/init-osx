require("utils")
require("smart_launch")


HYPER_LITE = { "cmd", "alt", "ctrl" }
HYPER      = { "cmd", "alt", "ctrl", "shift" }

hs.hotkey.bind(HYPER_LITE, ",", launch("System Settings"))
hs.hotkey.bind(HYPER_LITE, "f", launch("Finder"))
hs.hotkey.bind(HYPER, "y",
               function()
                   hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Displays.prefPane")
               end)
hs.hotkey.bind(HYPER, "b",
               function()
                   hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Bluetooth.prefPane")
               end)

remap(HYPER_LITE, 'h', pressFn('left'))
remap(HYPER_LITE, 'j', pressFn('down'))
remap(HYPER_LITE, 'k', pressFn('up'))
remap(HYPER_LITE, 'l', pressFn('right'))

----------- reload config ------------
hs.hotkey.bind(HYPER, "r",
               function()
                   hs.reload()
               end)
hs.alert.show("reloaded", 0.5)
--------------------------------------
