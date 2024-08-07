# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="honukai"

COMPLETION_WAITING_DOTS="true"

# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man-pages zsh-syntax-highlighting)

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export PATH="$PATH:/usr/local/mysql/bin" # add mysqlcat
export VISUAL=~/code-wait.sh
export EDITOR=~/code-wait.sh
export PATH=~/Library/Python/3.7/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias gitconfig="code ~/.gitconfig"
alias gitalias="code $HOME/.oh-my-zsh/custom/plugins/git/git.plugin.zsh"

alias be='bundle exec'
alias br='bin/rails'

alias brs="export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES && bin/rails server -p 3000"
alias brc="bin/rails console"
alias ber="bundle exec rspec"
alias run="./run"

export NVM_DIR="/Users/anacarlos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# . `brew --prefix`/etc/profile.d/z.sh

. /usr/local/etc/profile.d/z.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)" # initializes rbenv
eval "$(nodenv init -)" # initializes nodenv
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.cargo/bin:$PATH"
