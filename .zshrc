HISTFILE=~/.histfile
HISTSIZE=500000
SAVEHIST=500000
HISTCONTROL=ignoreboth:erasedups

zstyle :compinstall filename '/home/luisl/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
prompt adam1

# bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source <(fzf --zsh)
eval "$(zoxide init zsh --cmd j)"
# source ~/.zsh-plugins/zsh-helix-mode/zsh-helix-mode.plugin.zsh
# eval "$(starship init zsh)"
source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

alias ta="tmux attach"
alias tw="~/.scripts/tmux-project-workspace.sh"
alias ls="eza --icons"
alias ll="eza --icons --no-user --long --git --time-style=long-iso"

export PATH="/opt/yazi:$PATH"

export EDITOR="hx"

[ -s "/home/luisl/.bun/_bun" ] && source "/home/luisl/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# wal -b '#1d1d1d' -neqi $(gsettings get org.gnome.desktop.background picture-uri | cut -c 9- | rev | cut -c 2- | rev)
fastfetch -c paleofetch

