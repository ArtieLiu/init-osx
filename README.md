This repo documents the way that I use Mac.

It installs some core applications that I use heavily, these apps serves as foundation of my hacks. 
The configuration of these apps are stored in this repo as well, so my setup is consistent among the desktop/laptops that I use.

The features worth mentioning:

**# HyperLite and Hyper key**

HyperLite is defined as `ctrl + opt + cmd`.

By using Hammerspoon, hyperlite and another key when pressed together, can be mapped to a function that does various
things. For example, hyperlite + i can be used as a shortcut to open iTerm.

On top of hyperlite, Hyper key is the combination of HyperLite and shift key.
This adds another layer of keyboard shortcuts, so that we can define more actions.
For instance, `Hyper + , ` can be used to open System Settings.


**# Remapping of CapsLock key to HyperLite/Escape**

 ```
    Hold CapsLock -> Hyperlite
    Tap  CapsLock -> Esc
```

It's cumbersome to press three keys at once, also the ergomatics hurts the fingers.

Three are some applications that are able to remap CapsLock key to cmd+option+ctrl.

_Karabiner-Elements_ is one of them. By using predefined rules from other user, this task is done easily.

It is also possible to use the app named _hyperkey_, however some key combinations like `hyperlite +j/k/h/l` seem not
working.

**# HyperLite/Hyper key based application switching**

```
   hyperlite + o -> Chrome
   hyperlite + i -> iterm
   hyperlite + m -> music
   hyperlite + ; -> raycast window
   hyper + , -> system settings
```

**# System-wide vim like navigation**

```
   hyperlite + j/k/h/l -> down/up/left/right
```

**# Window management**
```
   option + h -> left half screen
   option + l -> right half screen
   option + f -> funn screen
```