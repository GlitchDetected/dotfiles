## Steps to bootstrap/setup your brand new Mac

1. Install Apple's Command Line Tools, which will later be important for installing Homebrew.

```zsh
xcode-select --install
```


2. Clone repo into new hidden directory which is your Home directory! (You can use SSH or HTTPS I would do HTTPS since its easier)

```zsh
# Use SSH
git clone git@github.com:cosmicglitch1/dotfiles.git ~/.dotfiles

# or use HTTPS and switch remotes later.
git clone https://github.com/cosmicglitch1/dotfiles.git ~/.dotfiles
```


3. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config ~/.config
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location
brew bundle --file ~/.dotfiles/Brewfile

# or move to the directory first.
cd ~/.dotfiles && brew bundle

#uninstall all dependencies
brew list | xargs brew uninstall
```

5. Set iTerm2 Theme
Go to iTerm2>Preferences>Profiles>Colors Then Import the cosmic.itermcolors file

## TODO List

- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations.
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot).
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Create a [bootable USB installer for macOS](https://support.apple.com/en-us/HT201372).
- Integrate other cloud services into your Dotfiles process (Discord, Google Drive, etc.).
- Find inspiration and examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).
)!