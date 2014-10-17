syntax on
set number
filetype plugin on

highlight LineNr guibg=grey

set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf8
set laststatus=2

let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=1
let g:clang_complete_auto=1
set completeopt-=preview

autocmd vimenter * color jellybeans
autocmd vimenter * NERDTree ~/workspace

