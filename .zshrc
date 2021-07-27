if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"

plugins=(git)

alias pacman="pacman --color=always"
alias htop="htop --highlight-changes --sort-key=PERCENT_MEM --tree --user"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export ZSH="/home/cele/.oh-my-zsh"
export LS_COLORS="no=37:di=92;1:*.py=93";
export PS1="\[\e[1;36m\]\w $\[\e[m\] "
export EDITOR="vim"

fpath+=$HOME/.zsh/pure

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
