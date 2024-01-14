#!/usr/bin/osascript

-- https://www.oreilly.com/library/view/applescript-in-a/1565928415/ch01s06s03.html
-- ¬ is named continuation character and is necessary in this script
set applicationList to { ¬
  "/Applications/Bartender 4.app", ¬
  "/Applications/ClashX Pro.app", ¬
  "/Applications/Contexts.app", ¬
  "/Applications/Hammerspoon.app", ¬
  "/Applications/Karabiner-Elements.app", ¬
  "/Applications/Lunar.app", ¬
  "/Applications/Multitouch.app", ¬
  "/Applications/Raycast.app", ¬
  "/Applications/Snipaste.app", ¬
  "/Applications/Spectacle.app", ¬
  "/Applications/WeChat.app", ¬
  "/Applications/Logi Options+" ¬
}

tell application "System Events"
  repeat with appPath in applicationList
    make login item at end with properties {path:appPath, hidden:false}
  end repeat
end tell
