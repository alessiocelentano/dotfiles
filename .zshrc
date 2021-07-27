# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias pacman="pacman --color=always"
alias htop="htop --highlight-changes --sort-key=PERCENT_MEM --tree --user"

export ZSH="/home/cele/.oh-my-zsh"
export LS_COLORS="no=37:di=92;1:*.py=93";
export PS1="\[\e[1;36m\]\w $\[\e[m\] "
export EDITOR="vim"
shopt -s checkwinsize

fpath+=$HOME/.zsh/pure

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
