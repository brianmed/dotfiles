export VIMINIT='source $HOME/.vim/vimrc'
export EDITOR="vim"
export VISUAL="vim"
export PAGER="env TERM=linux less -s"
export LESS="-X -S -i"

unset LANG

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH="${HOME}/bin:${PATH}"
fi

if [ -d /usr/local/bin ] ; then
    PATH="/usr/local/bin:${PATH}"
fi

# for admin stuff
PATH="${PATH}:/usr/sbin:/sbin:/usr/local/sbin"

typeset -U path
typeset -U PATH
typeset -U MANPATH
typeset -U DYLD_LIBRARY_PATH
