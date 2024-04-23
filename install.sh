cd $HOME
sudo pacman -Syu --noconfirm
sudo pacman -S git --noconfirm

# sudo pacman -S --needed base-devel --noconfirm
# git clone https://aur.archlinux.org/paru.git
# cd paru
# makepkg -si --noconfirm

paru -S github-cli chezmoi zsh zsh-theme-powerlevel10k-git neovim --noconfirm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chezmoi init https://github.com/Byteingpython/dotfiles.git
chezmoi apply -v

chsh /bin/zsh
