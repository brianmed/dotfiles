PS1="[%n@%m] c:%(4~#.../#)%3~>"

bindkey -e
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
bindkey "\CA" beginning-of-line
bindkey "\eOH" beginning-of-line
bindkey "\CE" end-of-line
bindkey "\eOF" end-of-line
bindkey "\e[3~" delete-char
bindkey "\CK" kill-line
bindkey "\Cb" backward-word
bindkey "\Cf" forward-word
bindkey "\CD" exit

alias ll='ls -lFa'

function lrt()
{
    if [[ "" == $1 ]]; then
        ls -lFa -rtc | tail
    else
        ls -lFa -rtc $1 | tail
    fi
}
