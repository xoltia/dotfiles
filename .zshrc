HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/luisl/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
prompt adam1

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source <(fzf --zsh)
eval "$(zoxide init zsh --cmd j)"

alias ta="tmux attach"
alias tw="~/.scripts/tmux-project-workspace.sh"
# bun completions
[ -s "/home/luisl/.bun/_bun" ] && source "/home/luisl/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# wal -b '#1d1d1d' -neqi $(gsettings get org.gnome.desktop.background picture-uri | cut -c 9- | rev | cut -c 2- | rev)
fastfetch -c paleofetch

