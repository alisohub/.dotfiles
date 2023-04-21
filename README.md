# .dotfiles 

## Fedora 37 Gnome


### For all the stuff
```
sudo dnf update
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Personal
```
sudo dnf install meson systemd-devel libinput-devel
```
