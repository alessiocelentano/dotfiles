alias l="ls -a --color"
function c () {
    cd "$@" && l
}
alias ..="c .."
alias pipupg="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias apikay="c /home/cele/dev/apikay/scripts"
alias rotomgram="c /home/cele/dev/rotomgram/src"
alias vnbot="c /home/cele/dev/vinylnewsbot/src"
alias vstbot="c /home/cele/dev/vstbot/src"
LS_COLORS="no=37:di=92;1:*.py=93";
export LS_COLORS
export PS1='\[\e[1;36m\][Cele \w] $\[\e[m\] '
shopt -s checkwinsize
