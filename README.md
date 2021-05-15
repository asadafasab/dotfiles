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
# packages                        map CAPS to ESC
sudo dnf install neovim xsel curl gnome-tweaks npm nodejs
sudo dnf remove firefox libreoffice*
sudo npm i -g yarn neovim pyright 
# or with sudo and -g
npm i elm elm-test elm-format @elm-tooling/elm-language-server 
npm install coc-snippets coc-pyright coc-tsserver coc-html coc-css coc-json coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo --user
flatpak remote-add flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo --user
flatpak install org.gimp.GIMP com.brave.Browser org.inkscape.Inkscape
```

## git
```bash
git config --global user.email "email"
git config --global user.name "asadafasab"
```

## neovim
```vim
:CocInstall coc-json coc-pyright coc-snippets coc-vimlsp coc-tsserver
```
