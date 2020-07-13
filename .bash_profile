[[ -f ~/.bashrc ]] && . ~/.bashrc
if systemctl -q is-active multi-user.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
fi

export PATH="$HOME/.cargo/bin:$PATH"
