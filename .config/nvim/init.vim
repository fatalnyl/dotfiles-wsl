" Set compatibility to Vim only.
"specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
"   " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" - Vim tmux navigator 
Plug 'christoomey/vim-tmux-navigator' 
" - Vim sensible 
Plug 'tpope/vim-sensible'
" - Some colorschemes
Plug 'flazz/vim-colorschemes'

" Initialize plugin system
call plug#end()

set nocompatible

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Show line numbers
set number

" Display options
set showmode
set showcmd

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase
" Tab settings
set tabstop=4
set shiftwidth=4
" expand tabs to spaces
" set expandtab
" Enable mouse use in all modes
set mouse=a
" Send more characters for redraws
set ttyfast






" Bindings
"
" Bind <space> :Highlights off after search
nnoremap <leader><space> :nohlsearch<CR>
" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC
" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
" <Leader> is \ by default, so those commands can be invoked by doing \v and \s




" Themings
"
" Colorscheme
colors gruvbox
