autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%(j.%F{yellow} %F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f
❯ '

# eval "$(starship init zsh)"
# starship preset gruvbox-rainbow -o ~/.config/starship.toml
# uninstall - sh -c 'rm "$(command -v 'starship')"'

neofetch

source ~/.extras

# tmux package manager
if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    "$HOME/.tmux/plugins/tpm/bin/install_plugins"
fi

if [ -z "$TMUX" ]; then
 if ! tmux has-session -t main 2>/dev/null; then
  tmux new-session -d -s main
  tmux split-window -v -l 5 -t main
  tmux send-keys -t main.0 'nvim' C-m
fi

  tmux attach-session -t main \; wait-for -S tmux-exit
  tmux kill-session -t main 2>/dev/null
fi

# why not use nvim?
alias vim=nvim

alias gitretrack="git rm -r --cached . && git add ."

# git shortcuts
alias gap="git add -p"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"

export PATH="$HOME/compiled/bin:$PATH"
export PATH="/opt/local/libexec/gnubin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export PGDATA=/opt/local/var/db/postgresql17/defaultdb
export PATH="/opt/local/lib/postgresql17/bin:$PATH"
export DYLD_LIBRARY_PATH="/opt/local/lib/postgresql17:$DYLD_LIBRARY_PATH"
export LIBPQ_INCLUDE_PATH="/opt/local/include/postgresql17"
export LIBPQ_LIB_PATH="/opt/local/lib/postgresql17"
export PKG_CONFIG_PATH="/opt/local/lib/postgresql17/pkgconfig"

export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:/opt/local/share/pkgconfig"
export CPPFLAGS="-I/opt/local/include"
export LDFLAGS="-L/opt/local/lib"

export PNPM_HOME="/Users/glitchdetected/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
