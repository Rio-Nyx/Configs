" Toggle 'default' terminal
" " nnoremap <M-`> :call ChooseTerm("term-slider", 1)<CR>
" nnoremap <A-t> :call ChooseTerm("term-slider", 1)<CR>
" " Start terminal in current pane
" nnoremap <M-CR> :call ChooseTerm("term-pane", 0)<CR>
"
" function! ChooseTerm(termname, slider)
"     let pane = bufwinnr(a:termname)
"     let buf = bufexists(a:termname)
"     if pane > 0
"         " pane is visible
"         if a:slider > 0
"             :exe pane . "wincmd c"
"         else
"             :exe "e #"
"         endif
"     elseif buf > 0
"         " buffer is not in pane
"         if a:slider
"             :exe "topleft split"
"         endif
"         :exe "buffer " . a:termname
"     else
"         " buffer is not loaded, create
"         if a:slider
"             :exe "topleft split"
"         endif
"         :terminal
"         :exe "f " a:termname
"     endif
" endfunction

" ------------------------------------------------
"  Togglable terminal created with map A-t
" function! Terminal(height)
"     if win_gotoid(g:term_win)
"         hide
"     else
"         botright new
"         exec "resize " . a:height
"         try
"             exec "buffer " . g:term_buf
"         catch
"             call termopen($SHELL, {"detach": 0})
"             let g:term_buf = bufnr("")
"         endtry
"         startinsert!
"         let g:term_win = win_getid()
"     endif
" endfunction
" "
" " nnoremap <A-t> :call Terminal(10)<cr>
" " tnoremap <A-t> :call Terminal(10)<cr>
"
" nnoremap <M-t> :call Terminal(10)<cr>
" tnoremap <M-t> <C-\><C-n>:call Terminal(10)<cr>
" --------------------------------------------------
" tnoremap <M-t> exit<cr>;<cr>

:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l

" C-l to clear screen _> default

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" au BufEnter vs term://bash
:nnoremap <silent> <A-t> :vs term://bash <cr>
