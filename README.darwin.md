
### Opt out of Homebrew analytics

```
brew analytics off
```

### Install CLI tools

```
brew install coreutils delta fd fish fnm jq navi neovim ripgrep sd vivid zellij
```

### Install cask apps

```
brew install --cask alacritty firefox rectangle spotify visual-studio-code zed
```

### Install Visual Studio Code extensions

```
code --install-extension vscodevim.vim
code --install-extension golang.go
```

### Fish shell

Add Fish path `which fish` to `/etc/shells/`, and then run:

```
chsh -s $(which fish)
```

### System preferences

#### Dock

- Remove all unnecessary icons.

- Pin all your favorite apps to the dock.

### Dock size

Set preferred size (note default is `64`), some recommendations:

- Intel MacBook Pro 16 `54`.
- Apple Chip MacBook Pro 16 `56`.

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

- *Mission Control* -> *Move left a space*: `Ctrl+[`.

- *Mission Control* -> *Move right a space*: `Ctrl+]`.

#### Mission control

- Disable *Mission Control* -> *Automatically rearrange Spaces based on most recent use*.

#### Desktop Add more desktops

- Set preferred background.

- Swipe three fingers up on the touchpad and add more desktops.

