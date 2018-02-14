# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="honukai"

COMPLETION_WAITING_DOTS="true"

# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man-pages zsh-syntax-highlighting)

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export PATH="$PATH:/usr/local/mysql/bin/" # add mysql
export EDITOR='atom'

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"
alias gitconfig="atom ~/.gitconfig"
alias gitalias="atom $HOME/.oh-my-zsh/custom/plugins/git/git.plugin.zsh"

alias be='bundle exec'

export NVM_DIR="/Users/anacarlos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# . `brew --prefix`/etc/profile.d/z.sh

. /usr/local/etc/profile.d/z.sh

eval "$(rbenv init -)" #initializes rbenv
eval "$(nodenv init -)"
