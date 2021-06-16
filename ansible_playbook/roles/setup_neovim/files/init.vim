" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

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
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" ---------- Keyboard bindings ---------- 
" Tab bindings
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <Silent> <A-t> :tabnew<CR>
nnoremap <Silent> <A-h> :tabmove -<CR>
nnoremap <Silent> <A-l> :tabmove +<CR>

" Split resize
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
