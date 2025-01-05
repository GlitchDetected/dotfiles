# installation for everything

#Clone repo
git clone https://github.com/cosmicglitch1/dotfiles.git ~/.dotfiles

#Create Symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config ~/.config
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#uninstall
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

#Install important dependencies with Homebrew
brew bundle --file ~/.dotfiles/Brewfile