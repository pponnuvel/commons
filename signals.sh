#!/bin/bash
# Usage: $0 PID

# Credit: https://unix.stackexchange.com/a/85365

function sigparse
{
    i=0
    bits="$(printf "ibase=16; obase=2; %X\n" "0x$1" | bc)"
    while [ -n "$bits" ] ; do
        i="$(expr "$i" + 1)"
        case "$bits" in
            *1) printf " %s(%s)" "$(kill -l "$i")" "$i" ;;
        esac
        bits="${bits%?}"
    done
}

grep "^Sig...:" "/proc/$1/status" | while read a b ; do
        printf "%s%s\n" "$a" "$(sigparse "$b")"
    done | column -t

