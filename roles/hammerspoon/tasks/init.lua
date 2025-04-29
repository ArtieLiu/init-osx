require("basic_map")

hs.hotkey.bind(HYPER_LITE, ",", launch("System Settings"))
hs.hotkey.bind(HYPER_LITE, ".", launch("Reminders"))
hs.hotkey.bind(HYPER_LITE, "f",                function()
                                                   hs.execute("open ~/Desktop")
                                               end)

hs.hotkey.bind(HYPER_LITE, "p", launch("IntelliJ IDEA Ultimate"))
hs.hotkey.bind(HYPER_LITE, "i", launch("alacritty"))
hs.hotkey.bind(HYPER_LITE, "o", launch("Google Chrome"))
hs.hotkey.bind(HYPER_LITE, "g", launch("Google AI Studio"))
hs.hotkey.bind(HYPER_LITE, "s", launch("Visual Studio Code"))

hs.hotkey.bind(HYPER_LITE, "m", launch("NetEaseMusic"))
hs.hotkey.bind(HYPER_LITE, "n", launch("Sublime Text"))
hs.hotkey.bind(HYPER_LITE, "w", launch("wechat"))
hs.hotkey.bind(HYPER_LITE, "d", launch("DingTalk"))
hs.hotkey.bind(HYPER_LITE, "z", launch("zoom.us"))