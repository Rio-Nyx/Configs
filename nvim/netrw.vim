let g:netrw_banner = 0

" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 4

let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 10

nnoremap <C-b> :Vexplore <cr>
nnoremap <leader>b :Vexplore <cr>
let g:netrw_dirhistmax = 0

" u = go up a directory
" <cr> = enter a directory
" c = changes directory to current 
" d = new directory
