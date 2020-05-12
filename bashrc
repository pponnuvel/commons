stty erase '^?'
alias ll='ls -l'
alias vi='vim'

set -o vi

# git
alias gs='git status'
alias gb='git branch -vvv'

# Remove trailing whitespaces
tw()
{
    if [[ -${#@} -eq 0 ]]; then
        find . -type f -name '*.cpp' -exec sed --in-place 's/[[:space:]]\+$//' {} \+
    else
        for file in "$@"; do
            sed --in-place 's/[[:space:]]\+$//' "$file"
        done
    fi
}
