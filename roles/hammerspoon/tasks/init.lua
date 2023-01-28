require ("utils")

HYPER_LITE ={ "cmd", "alt", "ctrl"}

hs.hotkey.bind(HYPER_LITE, "b", launch("obsidian"))
hs.hotkey.bind(HYPER_LITE, "r", togglelaunch("ClashX"))
hs.hotkey.bind(HYPER_LITE, "d", launch("Collins"))
hs.hotkey.bind(HYPER_LITE, "i", launch("iTerm"))
hs.hotkey.bind(HYPER_LITE, "j", launch("IntelliJ IDEA"))
hs.hotkey.bind(HYPER_LITE, "k", open("/Users/yinan.liu/OneDrive/Kanban/enan kanban.kanbanier"))
hs.hotkey.bind(HYPER_LITE, "m", launch("Music"))
hs.hotkey.bind(HYPER_LITE, "o", launch("Google Chrome"))
hs.hotkey.bind(HYPER_LITE, "s", launch("Sicp"))
hs.hotkey.bind(HYPER_LITE, "w", launch("wechat"))
--  HYPER, "p", open("Snipaste")

HYPER ={ "cmd", "alt", "ctrl", "shift"}
hs.hotkey.bind(HYPER, "f", launch("Finder"))
hs.hotkey.bind(
        HYPER, "y",
        function()
            hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Displays.prefPane")
        end)
hs.hotkey.bind(
        HYPER, "b",
        function()
            hs.execute("open -b com.apple.systempreferences /System/Library/PreferencePanes/Bluetooth.prefPane")
        end)
remap(HYPER, 'h', pressFn('left'))
remap(HYPER, 'j', pressFn('down'))
remap(HYPER, 'k', pressFn('up'))
remap(HYPER, 'l', pressFn('right'))
remap({'ctrl', 'alt'}, 'l', pressFn('alt','right')) -- word-wise moving
remap({'ctrl', 'alt'}, 'h', pressFn('alt','left'))

----------- reload config ------------
hs.hotkey.bind(HYPER_LITE, "c", function()
    hs.reload()
end)
hs.alert.show("Config loaded")
--------------------------------------
