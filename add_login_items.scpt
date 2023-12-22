#!/usr/bin/osascript

-- https://www.oreilly.com/library/view/applescript-in-a/1565928415/ch01s06s03.html
-- ¬ is named continuation character and is necessary in this script
set applicationList to { ¬
  "/Applications/Hammerspoon.app", ¬
  "/Applications/Spectacle.app", ¬
  "/Applications/Karabiner-Elements.app", ¬
  "/Applications/ClashX Pro.app", ¬
  "/Applications/Bartender 4.app", ¬
  "/Applications/Multitouch.app", ¬
  "/Applications/Snipaste.app", ¬
  "/Applications/Lunar.app", ¬
  "/Applications/WeChat.app", ¬
  "/Applications/Contexts.app" ¬
}

tell application "System Events"
  repeat with appPath in applicationList
    make login item at end with properties {path:appPath, hidden:false}
  end repeat
end tell
