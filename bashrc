#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# source everything in ~/.profile.d
for f in ~/.profile.d/*.bash; do
  . $f
done

source ~/liquidprompt/liquidprompt

export PAGER=/usr/bin/vimpager
alias less=$PAGER
alias zless=$PAGER
