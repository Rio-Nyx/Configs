" alias mvim='vim --cmd "let vim_maximal=1" '

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set incsearch               " from ben awad
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set relativenumber         " use relative lines numbering
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" set showmode                 " Display options
" set showcmd

call plug#begin("~/.vim/plugged")
  " Plugin Section
     Plug 'SirVer/ultisnips'
     Plug 'honza/vim-snippets'
     Plug 'preservim/nerdcommenter'
     Plug 'mhinz/vim-startify'
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
     Plug 'ryanoasis/vim-devicons'
     Plug 'vim-airline/vim-airline'
     " Plug 'morhetz/gruvbox'
     Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
     " Plug 'junegunn/goyo.vim'
     " Plug 'xolox/vim-notes'
     Plug 'dracula/vim'
     " Plug 'tpope/vim-fugitive'
     " Plug 'scrooloose/nerdtree'
     " Plug 'junegunn/fzf.vim'
     " Plug 'yggdroot/indentline'
     " Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }
     " Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
     " Plug 'scrooloose/syntastic'
     " Plug 'liuchengxu/vim-which-key'
     " Plug 'chxuan/vimplus-startify'
     " Plug 'valloric/youcompleteme'
     " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
     " Plug 'rbgrouleff/bclose.vim'

 call plug#end()

"Config Section

 source ~/.config/nvim/key-mappings.vim
 source ~/.config/nvim/NerdCommenter.vim
 source ~/.config/nvim/startify.vim
 source ~/.config/nvim/UltiSnips.vim
 source ~/.config/nvim/coc.vim
 source ~/.config/nvim/functions/trailing-spaces.vim
 source ~/.config/nvim/netrw.vim
 " source ~/.config/nvim/terminal.vim
 " source ~/.config/nvim/NerdTree.vim
 
" source ~/.config/nvim/markdown.vim
" color schemes

 if (has("termguicolors"))
  set termguicolors
 endif
 syntax enable

" colorscheme evening
colorscheme dracula
" colorscheme morning
" colorscheme gruvbox

" TERMINAL
" ctrl+n -- opens terminal, ctrl+w+w -- closes terminal, esc -- esc insert mode in terminal
" open new split panes to right and below
set splitright
set splitbelow
" start terminal in insert mode
" open terminal on alt+t
" let g:term_buf = 0
" let g:term_win = 0

