" Tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" For info on any of these, type 'help <command>' i.e. 'help exrc'
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
set statusline+=%#SpellCap#
set statusline+=\ %M
set statusline+=%#SpellBad#
set statusline+=\ %y
set statusline+=%#Conceal#
set statusline+=\ %F
set statusline+=%= " Right-allignment
set statusline+=%#SpellCap#
set statusline+=\ [%b:%B]
set statusline+=%#SpellBad#
set statusline+=\ %l/%L
set statusline+=\ [%c]
set statusline+=%#DiffText#
set statusline+=\ %p%%
set statusline+=%#TabLineSel#
set statusline+=\ [%n]

" Split settings
set splitbelow
set splitright

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

" Move highlighted text up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Source plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-settings/fzf-conf.vim
source $HOME/.config/nvim/plug-settings/polyglot-conf.vim

" Show color column for 80 chars
nnoremap <silent> <leader>c :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>

" Toggle file explorer
nnoremap <leader>e :Lex<CR>

" Show buffers
nnoremap <leader>b :buffers<CR>

" Exit terminal mode with ESC
tnoremap <ESC> <C-\><C-n>

colorscheme wal
