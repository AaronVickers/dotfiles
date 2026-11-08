# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HISTORY_IGNORE='(#i)(*token=*|*key=*|*key_id=*|*authorization:*|*curl*[ ]-u*|*curl*[ ]--user[ =]*)'
setopt EXTENDED_GLOB INC_APPEND_HISTORY HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE

# Bash-like navigation
autoload -U select-word-style
select-word-style bash

# Colourised commands
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls="ls --color=auto"
  alias dir="dir --color=auto"
  alias vdir="vdir --color=auto"
  alias grep="grep --color=auto"
  alias fgrep="fgrep --color=auto"
  alias egrep="egrep --color=auto"
fi

# Clear screen alias
alias cls="clear"

# Directory changing aliases
alias "~"="cd ~"
alias ".."="cd .."

# List aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

# Navigation bindings
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# powerlevel10k theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# You should use plugin
source ~/.zsh/zsh-you-should-use/you-should-use.plugin.zsh

# Autosuggestions plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
