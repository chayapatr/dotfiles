# tmux 
alias tnst="tmux new-session -t"
alias tnw="tmux new-window"

alias tkse="tmux kill-server"
alias tks="tmux kill-session"
alias tkw="tmux kill-window"
alias tkp="tmux kill-pane"

alias ta="tmux attach"
alias td="tmux detach"

# git
alias g="git"
alias gp="git push"
alias gpl="git pull"
alias gc="git c"
alias gcl="git clone"
alias gs="git status"
alias gb="git branch"

# yarn
alias y="yarn"
alias yd="yarn dev"
alias ys="yarn start"
alias yt="yarn test"

# o
alias o="open"
alias c="code"

# alias
alias fcon="vim ~/.config/fish/config.fish"

alias ls="exa"
alias l="exa -la"
alias pls="sudo"

thefuck --alias | source
starship init fish | source