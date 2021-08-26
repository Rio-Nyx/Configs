
" use alt+hjkl to move between split/vsplit panels
" tnoremap <A-h> <C-\><C-n><C-w>h
" tnoremap <A-j> <C-\><C-n><C-w>j
" tnoremap <A-k> <C-\><C-n><C-w>k
" tnoremap <A-l> <C-\><C-n><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l


" move line or visually selected block - alt+j/k
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" nnoremap <A-J> :m .+1<CR>==
" nnoremap <A-K> :m .-2<CR>==

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit.
inoremap ii <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" yank current directory path into the clipboard
" nnoremap yd :!echo -n %d | xclip -selection clipboard %i<cr>:echo expand('%"d') "is yanked to clipboard"<cr>

" yank current file path into the clipboard
" nnoremap yf :!echo -n %c:p | xclip -selection clipboard %i<cr>:echo expand('%"c:p') "is yanked to clipboard"<cr>
" set shell=bash\ --login
" :command! CopyBuffer let @+ = expand('%:p')
" copies filepath to clipboard
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" autocmd BufEnter * if (len(getbufinfo({'buflisted':1}))) |
"     \ let b:has_been_entered = 1 | !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' | endif
    " \ let b:has_been_entered = 1 | call input('First time entered!') | endif


" --------------------
" someone's

" Select all text
" noremap vA ggVG

" Keep search results at the center of screen
" nmap n nzz
" nmap N Nzz
" nmap * *zz
" nmap # #zz
" nmap g* g*zz
" nmap g# g#zz

" Disable search highlighting
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" Quick way to save file
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap ; Gzz
vnoremap ; Gzz
" let g:mapleader = "/<Space>"

" nnoremap m :m
