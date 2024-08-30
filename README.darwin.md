
### Opt out of Homebrew analytics

```
brew analytics off
```

### Install CLI tools

```
brew install fish ripgrep fd sd vivid jq coreutils navi neovim zellij
```

### Install cask apps

```
brew install --cask alacritty rectangle firefox visual-studio-code zed spotify
```

### Install Visual Studio Code extensions

```
code --install-extension vscodevim.vim
code --install-extension golang.go
```

### Fish shell

Add `/usr/local/bin/fish` to `/etc/shells`, and then run:

```
chsh -s /usr/local/bin/fish
```

### System preferences

#### Dock

- Remove all unnecessary icons

- Pin all your favorite apps to the dock

### Dock size

Set preferred size (note default is `64`)

```
defaults write com.apple.dock tilesize -int 54; killall Dock
```

Note that we choose `54` because that's the perfect size for the terminal and font configuration.

#### Display

- Uncheck *System Settings* -> *Displays* -> *Automatically adjust brightness*

- Set brightness to desired level

#### Touch bar

Go to *System Settings* -> *Keyboard* -> *Touch Bar Settings* -> *Customize Control Strip*:

- Replace Siri icon with Spotlight

#### Keyboard text settings

- Uncheck *System preferences* -> *Keyboard* -> *Spelling and prediction* -> *Capitalize words automatically*

- Uncheck *System preferences* -> *Keyboard* -> *Spelling and prediction* -> *Add period with double-space*

- Uncheck *System preferences* -> *Keyboard* -> *Spelling and prediction* -> *Touch Bar typing suggestions*

#### Keyboard shortcuts

Go to *System Settings* -> *Keyboard* -> *Shortcuts*:

- *Mission Control* -> *Move left a space*: `Ctrl+[`

- *Mission Control* -> *Move right a space*: `Ctrl+]`

#### Mission control

- Uncheck *System Settings* -> *Desktop and Dock* -> *Mission Control* -> *Automatically rearrange Spaces based on most recent use*

#### Desktop Add more desktops

- Set preferred background

- Swipe three fingers up on the touchpad and add more desktops

