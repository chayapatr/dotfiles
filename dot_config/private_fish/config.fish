if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g hydro_symbol_prompt 🐱

alias obs="open . -a 'obsidian'"
source /usr/local/opt/asdf/libexec/asdf.fish

# pnpm
set -gx PNPM_HOME "/Users/chayapatr/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# tmux 
alias tnst="tmux new-session -t"
alias tnw="tmux new-window"

alias tkse="tmux kill-server"
alias tks="tmux kill-session"
alias tkw="tmux kill-window"
alias tkp="tmux kill-pane"

alias ta="tmux attach"
alias td="tmux detach"
#tmux end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
