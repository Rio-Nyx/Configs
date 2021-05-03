set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
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

call plug#begin("~/.vim/plugged")
  " Plugin Section
    Plug 'dracula/vim'
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'junegunn/fzf.vim'
    Plug 'yggdroot/indentline'
    Plug 'scrooloose/syntastic'
    " Plug 'SirVer/ultisnips'
  "  Plug 'honza/vim-snippets'
    " Plug 'liuchengxu/vim-which-key'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    " Plug 'chxuan/vimplus-startify'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'valloric/youcompleteme'
    " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} 
"     Plug 'rbgrouleff/bclose.vim'
"     Plug 'francoiscabrol/ranger.vim'
call plug#end()

"Config Section

source ~/.config/nvim/NerdCommenter.vim
source ~/.config/nvim/NerdTree.vim
source ~/.config/nvim/startify.vim
" source ~/.config/nvim/ultsnips.vim
" source ~/.config/nvim/rnvimr.vim
" source ~/.config/nvim/terminal.vim

" color schemes
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula


" TERMINAL
" ctrl+n -- opens terminal, ctrl+w+w -- closes terminal, esc -- esc insert mode in terminal
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
" open terminal on alt+t
let g:term_buf = 0
let g:term_win = 0

function! Terminal(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction
"
" nnoremap <A-t> :call Terminal(10)<cr>
" tnoremap <A-t> :call Terminal(10)<cr>

nnoremap <M-t> :call Terminal(10)<cr>
tnoremap <M-t> <C-\><C-n>:call Terminal(10)<cr>
" tnoremap <M-t> exit<cr>;<cr>


" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" move line or visually selected block - alt+j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <C-H> <C-W>H
nnoremap <C-J> <C-W>J
nnoremap <C-K> <C-W>K
nnoremap <C-L> <C-W>L

" let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
