$SOURCE=$HOME/.config/.dotfiles
$CONFIG=$HOME/.config

sudo pacman -S --needed zsh
ln -s $SOURCE/.zshrc $HOME/.zshrc
source ~/.zshrc


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo pacman -S --needed neofetch neovim polybar tmux starship
cargo install alacritty
pacman -S --needed cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python blueman bluez bluez-libs bluez-utils pamixer pavucontrol nitrogen feh gsettings pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber yarn picom htop

mv $SOURCE/nordtheme.png $HOME/Pictures/
mv $SOURCE/monitor.sh $HOME/.screenlayout/

mkdir $HOME/.local/share/fonts
mkdir $HOME/.config/alacritty
mkdir $HOME/.config/polybar
mkdir $HOME/.config/nvim

rm $HOME/.config/i3/config
rm $HOME/.config/neofetch/config.conf

ln -s $SOURCE/fonts/* $HOME/.local/share/fonts/
ln -s $SOURCE/i3/* $CONFIG/.config/i3/
ln -s $SOURCE/alacritty/* $CONFIG/.config/alacritty/
ln -s $SOURCE/.tmux.conf $HOME/.tmux.conf
ln -s $SOURCE/starship.toml $CONFIG/.config/starship.toml
ln -s $SOURCE/neofetch/* $CONFIG/.config/neofetch/
ln -s $SOURCE/polybar/* $CONFIG/.config/polybar/
ln -s $SOURCE/nvim/* $CONFIG/.config/nvim/
ln -s $SOURCE/autostart/* $CONFIG/.config/autostart/
