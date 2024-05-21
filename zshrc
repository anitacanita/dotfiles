# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="honukai"

COMPLETION_WAITING_DOTS="true"

# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=( git colored-man-pages zsh-syntax-highlighting zsh-z)

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export PATH="$PATH:/usr/local/mysql/bin" # add mysqlcat
export EDITOR='code'

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshprof="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias gitconfig="code ~/.gitconfig"
alias gitalias="code $HOME/.oh-my-zsh/custom/plugins/git/git.plugin.zsh"
alias bers="bundle exec bin/rails server"
alias berc="bundle exec bin/rails console"
alias ber="bundle exec bin/rspec"

alias be='bundle exec'

export NVM_DIR="/Users/anacarlos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(rbenv init -)" #initializes rbenv
eval "$(nodenv init -)" #initializes nodenv

eval "$(direnv hook zsh)"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
