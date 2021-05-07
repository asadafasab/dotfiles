# dotfiles
files with dot


### Python
```bash
pip install pynvim jedi black sklearn numpy pynvim pylint docformatter virtualenv pytest
```

### Fedora
```bash
# RPM Fusion    
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# packages
sudo dnf install neovim xsel curl
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo --user
flatpak --user --if-not-exists remote-add gnome-nightly gnome-nightly.flatpakrepo
```
