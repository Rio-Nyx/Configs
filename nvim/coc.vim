
 " coc config
 let g:coc_global_extensions = [
             \ 'coc-pairs',
             \ 'coc-snippets',
             \ 'coc-html',
             \ 'coc-tsserver',
             \ 'coc-css',
             \ 'coc-clangd',
             \ 'coc-json',
             \ 'coc-pyright',
             \ 'coc-sh',
             \ 'coc-flutter',
             \ ]
 " " from readme
 " " if hidden is not set, TextEdit might fail.
 " set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
 " set updatetime=300
 "
 " " don't give |ins-completion-menu| messages.
 " set shortmess+=c
 "
 " " always show signcolumns
 set signcolumn=yes
 " " Use <c-space> to trigger completion.
 " inoremap <silent><expr> <c-space> coc#refresh()
 " source ~/.config/nvim/rnvimr.vim

" Map <tab> for trigger completion, completion confirm, snippet expand and jump
" like VSCode. >

	inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ?
	  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	let g:coc_snippet_next = '<tab>'
