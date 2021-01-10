# Terminal
export LS_COLORS="no=37:di=92;1:*.py=93";
export PS1="\[\e[1;36m\]\w $\[\e[m\] "
export EDITOR="vim"
shopt -s checkwinsize

# Dirs
alias ls="ls -a --color"
alias ..="cd ../"

# Packages
alias pacman="pacman --color=always"
alias upg="sudo pacman -Syu && yay -Syu"
alias pipupg="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

# Htop
alias htop="htop --highlight-changes --sort-key=PERCENT_MEM --tree --user"

