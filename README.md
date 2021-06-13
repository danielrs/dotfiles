[chezmoi]: https://github.com/twpayne/chezmoi
[dotfiles-dotbot]: https://github.com/danielrs/dotfiles-dotbot
[systemd-file-hierarchy]: https://www.freedesktop.org/software/systemd/man/file-hierarchy.html#Home%20Directory

Personal dotfiles managed with [chezmoi][chezmoi].

For my previous dotfiles check [dotfiles-dotbot][dotfiles-dotbot].

For some conventions on file hierarchy [read here][systemd-file-hierarchy].

### Installation

Clone the dotfiles:

```
git clone https://github.com/danielrs/dotfiles.git .dotfiles
```

Go into the dotfiles folder and run the install script:

```
cd .dotfiles && ./install
```

Follow your system-specific instructions:

- [macOS](README.darwin.md)
- [Linux](README.linux.md)

