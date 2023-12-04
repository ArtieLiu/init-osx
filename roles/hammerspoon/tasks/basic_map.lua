require("utils")
require("smart_launch")

hs.alert.show("loaded", 1)

HYPER_LITE = {"ctrl"}
HYPER      = {"ctrl", "shift" }

-- ref: https://gist.github.com/rmcdongit/f66ff91e0dad78d4d6346a75ded4b751?permalink_comment_id=4286384
-- ref: https://github.com/piarasj/piarasj.github.io/blob/master/ventura_settings.md#ventura-system-settings
hs.hotkey.bind(HYPER, "y",
               function()
                   hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Displays.prefPane")
               end)

remap(HYPER_LITE, 'h', pressFn('left'))
remap(HYPER_LITE, 'j', pressFn('down'))
remap(HYPER_LITE, 'k', pressFn('up'))
remap(HYPER_LITE, 'l', pressFn('right'))
remap(HYPER     , 'h', pressFn('alt', 'left'))
remap(HYPER     , 'l', pressFn('alt', 'right'))

hs.hotkey.bind(HYPER_LITE, ",", launch("System Settings"))
hs.hotkey.bind(HYPER_LITE, "f", function() hs.execute("open ~/Downloads") end)
hs.hotkey.bind(HYPER_LITE, "p", launch("IntelliJ IDEA"))
hs.hotkey.bind(HYPER_LITE, "i", launch("iTerm"))
hs.hotkey.bind(HYPER_LITE, "o", launch("Google Chrome"))
hs.hotkey.bind(HYPER_LITE, "n", launch("sublime text"))

----------- reload config ------------
hs.hotkey.bind(HYPER, "r",
               function()
                   hs.reload()
               end)
--------------------------------------
