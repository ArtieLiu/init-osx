require("basic_map")

hs.hotkey.bind(HYPER_LITE, ",", launch("System Settings"))
hs.hotkey.bind(HYPER_LITE, ".", launch("Reminders"))
hs.hotkey.bind(HYPER_LITE, "f",                function()
                                                   hs.execute("open ~/Desktop")
                                               end)

hs.hotkey.bind(HYPER_LITE, "p", launch("IntelliJ IDEA"))
hs.hotkey.bind(HYPER_LITE, "i", launch("alacritty"))
hs.hotkey.bind(HYPER_LITE, "o", launch("Google Chrome"))

hs.hotkey.bind(HYPER_LITE, "e", launch("poe"))
hs.hotkey.bind(HYPER_LITE, "m", launch("NetEaseMusic"))
hs.hotkey.bind(HYPER_LITE, "w", launch("wechat"))
hs.hotkey.bind(HYPER_LITE, "d", launch("DingTalk"))