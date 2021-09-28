#!/bin/sh

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
exec i3
