call plug#begin('~/.config/nvim/autoload/plugged')

    " Be able to surround text with char
    Plug 'tpope/vim-surround'
    " Pywal color scheme
    Plug 'dylanaraps/wal.vim'
    " Better syntax support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for braces
    Plug 'jiangmiao/auto-pairs'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

call plug#end()
