PROMPT='%F{cyan}GlitchDetected:%f %F{yellow}📁 %~%f
%F{green}→%f '

# eval "$(starship init zsh)"

neofetch

source ~/.extras

# override vim to open nvim when executed
alias vim=nvim

# git shortcuts
alias gap="git add -p"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpu="git pull"
alias gck="git checkout"

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