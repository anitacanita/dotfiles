# Query/use custom command for `git`.
zstyle -s ":vcs_info:git:*:-all-" "command" _omz_git_git_cmd
: ${_omz_git_git_cmd:=git}

#
# Functions
#

# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
function current_branch() {
  git_current_branch
}
# The list of remotes
function current_repository() {
  if ! $_omz_git_git_cmd rev-parse --is-inside-work-tree &> /dev/null; then
    return
  fi
  echo $($_omz_git_git_cmd remote -v | cut -d':' -f 2)
}
# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}
# Warn if the current branch is a WIP
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}

#
# Aliases (customised!)
# (sorted alphabetically)

alias g='git'

alias ga='git add'
alias gaa='git add --all'
alias gap='git add -p'

alias gb='git branch'

alias gco='git checkout'
alias gcob='git checkout -b'
alias gco-='git checkout -'

alias gcl='git clone'

alias gcmsg='git commit -m'
alias gcom='git commit'
alias gcam='git commit -a -m'

alias gdiff='git diff'

alias glog='git log'

alias gp='git push'
alias gpu='git pull'
alias gpur='git pull -r'

alias gr='git remote'

alias gst='git status'
alias gsta='git stash'
