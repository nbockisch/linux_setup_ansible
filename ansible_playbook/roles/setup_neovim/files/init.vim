" Tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" For info on any of these, type 'help <command>' i.e. 'help exrc'
set colorcolumn=80
set exrc
set hidden
set incsearch
set nocompatible
set noerrorbells
set nohlsearch
set noswapfile
set nowrap
set number relativenumber
set scrolloff=8
set signcolumn=yes
set undodir=~/.config/nvim/undodir
set undofile

" Netrw settings
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=3
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_altfile=1

" Statusline
set statusline=
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %F
set statusline+=%= " Right-allignment
set statusline+=\ [%b:%B]
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" ---------- Keyboard bindings ---------- 
let mapleader = " "

" Tab bindings
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <A-t> :tabnew<CR>
nnoremap <silent> <A-h> :tabmove -<CR>
nnoremap <silent> <A-l> :tabmove +<CR>

" Split resize
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-settings/fzf-conf.vim

" Exit terminal mode with ESC
tnoremap <ESC> <C-\><C-n>

colorscheme wal
