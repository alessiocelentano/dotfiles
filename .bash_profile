[[ -f ~/.bashrc ]] && . ~/.bashrc
if systemctl -q is-active multi-user.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi
