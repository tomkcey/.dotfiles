$SOURCE=$HOME/.config/.dotfiles
$CONFIG=$HOME/.config

sudo pacman -S --needed zsh
ln -s $SOURCE/.zshrc $HOME/.zshrc
source ~/.zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo pacman -S --needed \
  neofetch \
  neovim \
  polybar \
  tmux \
  starship cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python blueman bluez bluez-libs bluez-utils pamixer pavucontrol nitrogen feh gsettings pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber flameshot yarn discord

cargo install alacritty

ln -s $SOURCE/monitor.sh $HOME/.screenlayout/monitor.sh

mkdir $HOME/.local/share/fonts
mkdir $CONFIG/alacritty
mkdir $CONFIG/polybar
mkdir $CONFIG/nvim
mkdir $CONFIG/picom
mkdir $CONFIG/dunst

rm $CONFIG/i3/config
rm $CONFIG/neofetch/config.conf
rm $CONFIG/flameshot/flameshot.ini
rm $CONFIG/dunst/dunstrc

ln -s $SOURCE/fonts/* $HOME/.local/share/fonts/
ln -s $SOURCE/i3/* $CONFIG/i3/
ln -s $SOURCE/alacritty/* $CONFIG/alacritty/
ln -s $SOURCE/.tmux.conf $HOME/.tmux.conf
ln -s $SOURCE/starship.toml $CONFIG/starship.toml
ln -s $SOURCE/neofetch/* $CONFIG/neofetch/
ln -s $SOURCE/polybar/* $CONFIG/polybar/
ln -s $SOURCE/nvim/* $CONFIG/nvim/
ln -s $SOURCE/autostart/* $CONFIG/autostart/
ln -s $SOURCE/flameshot/flameshot.ini $CONFIG/flameshot/flameshot.ini
ln -s $SOURCE/dunst/dunstrc $CONFIG/dunst/dunstrc
ln -s $SOURCE/picom/picom.conf $CONFIG/picom/picom.conf
