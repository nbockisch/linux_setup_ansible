" Tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" For info on any of these, type 'help <command>' i.e. 'help exrc'
set exrc
set number relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=2
let g:netrw_altv=1
let g:netrw_winsize=25
augroup VimExplorer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END
