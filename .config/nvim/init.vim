set number
set list
set expandtab
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
let mapleader=','
set spell
set backupdir=~/.config/nvim/.backup// " Double // causes backups to use full file path
set directory=~/.config/nvim/.swap//
set tags=~/.config/nvim/.tags//
set foldmethod=syntax
set nofoldenable
set cursorline
set history=1000
set completeopt+=noinsert,noselect
set diffopt+=vertical
set mouse=a
set hidden" Required for operations modifying multiple buffers like rename.

let $PATH = expand('$HOMEBREW_PREFIX/anaconda3/envs/nvim/bin') . ':' . $PATH

" ~/.local/share/nvim/plugged/
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ericbn/vim-solarized'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'preservim/nerdcommenter'
call plug#end()


