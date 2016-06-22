#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# source everything in ~/.profile.d
for f in ~/.profile.d/*.bash; do
  . $f
done

if [ -f /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi

export PAGER=/usr/local/bin/vimpager
alias less=$PAGER
alias zless=$PAGER
