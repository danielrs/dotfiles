
### System preferences

#### Dock

- Remove all unnecessary icons.

- Pin all your favorite apps to the dock.

#### Dock size

Set preferred size (note default is `64`), some recommendations:

- MacBook Pro 16 Intel `54`.

- MacBook Pro 16 M4 `56`.

- MacBook Pro 14 M5 `48`.

```
defaults write com.apple.dock tilesize -int 56; killall Dock
```

Note the best size heavily depends on the font size, menu bar size, and etc.

#### Display

- Disable automatic brightness.

- Set brightness to desired level.

#### Touch bar

- Replace Siri icon with Spotlight.

#### Keyboard text settings

- Disable *Capitalize words automatically*.

- Disable *Add period with double-space*.

- Disable *Touch Bar typing suggestions*.

#### Keyboard shortcuts

- *Mission Control* -> *Move left a space*: `Ctrl+,`.

- *Mission Control* -> *Move right a space*: `Ctrl+.`.

#### Mission control

- Disable *Mission Control* -> *Automatically rearrange Spaces based on most recent use*.
  - Or with `defaults write com.apple.dock mru-spaces -bool false && killall Dock`.

#### Desktop Add more desktops

- Set preferred background.

- Swipe three fingers up on the touchpad and add more desktops.

### ZSA Voyager keyboard

Swap the Command and Control keys at:

- *Keyboard shortcuts* -> *Modifier Keys*.
