# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
export PATH=$PATH:/home/sylvi/bin
export PATH=$PATH:/home/sylvi/git/seamstress/zig-out/bin
export EDITOR=vim
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# pnpm
export PNPM_HOME="/home/sylvi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export EDITOR=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias copy='xclip -sel clip'
alias _cat=/usr/bin/cat
alias cat=/usr/bin/bat
export PATH=$PATH:/usr/local/go/bin
