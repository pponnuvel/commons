set cursorline
set expandtab
set hlsearch
set number
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set spell
set tabstop=4
syntax enable

highlight tws ctermbg=red guibg=red
match tws /\s\+$/
autocmd BufWinEnter * match tws /\s\+$/
autocmd InsertEnter * match tws /\s\+\%#\@<!$/
autocmd InsertLeave * match tws /\s\+$/
autocmd BufWinLeave * call clearmatches()

fun! Trim()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun


autocmd BufWritePre *.cpp %s/\s\+$//e
autocmd BufWritePre *.hpp %s/\s\+$//e
autocmd BufWritePre *.c %s/\s\+$//e
autocmd BufWritePre *.h %s/\s\+$//e
autocmd BufWritePre *.py %s/\s\+$//e
autocmd BufWritePre *.sh %s/\s\+$//e
autocmd BufWritePre *.go %s/\s\+$//e

autocmd BufWinLeave *.go !gofmt -s -w *.go
