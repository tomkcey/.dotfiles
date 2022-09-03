sudo pacman -S --needed zsh
ln -s .zshrc ~/
source ~/.zshrc


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo pacman -S --needed neofetch neovim polybar tmux starship
cargo install alacritty
pacman -S --needed cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python blueman bluez bluez-libs bluez-utils pamixer pavucontrol nitrogen feh gsettings

mv nordtheme.png ~/Pictures/
mv monitor.sh ~/.screenlayout/

ln -s fonts/* ~/.local/share/fonts/
ln -s i3/* ~/.config/i3/
ln -s alacritty/* ~/.config/alacritty/
ln -s .tmux.conf ~/.tmux.conf
ln -s starship.toml ~/.config/starship.toml
ln -s neofetch/* ~/.config/neofetch/
ln -s polybar/* ~/.config/polybar/
ln -s nvim/* ~/.config/nvim/
ln -s autostart/* ~/.config/autostart/
