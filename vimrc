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
