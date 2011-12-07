" remap leader to ,
  let mapleader = ","

" get out of insert mode with cmd-i
  imap <D-i> <Esc>

" redo with U
  nmap U :redo<cr>

" switch windows with g+movement
  nmap gj j
  nmap gk k
  nmap gh h
  nmap gl l

  nmap gq ^Wq

" swap windows
  nmap gS 

" close all other windows (in the current tab)
  nmap gW :only<cr>

" close all other tabs
  nmap gT :tabonly<cr>

" previous/next buffer (for going without tabs)
  nmap g[ :bp<cr>
  nmap g] :bn<cr>

" ack for project-wide searching
  nmap g/ :LAck

  nmap g* :LAck <C-R><C-W>
  nmap ga :LAckAdd
  nmap gn :lnext<cr>
  nmap gp :lprev<cr>

" shortcuts for frequenly used files
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>

" align pipe-separated tables for cucumber or textile with g| in visual mode
	vmap g\| :Align \|<cr>

" insert blank lines without going into insert mode
  nmap go o<esc>
  nmap gO O<esc>

" open the source in a browser for distribution or copying as RTF
  nmap gH :OpenHtml<cr>

" scroll up/down one line at a time
  nmap <Up> 
  nmap <Down> 

" scroll left/right
  nmap <Left> zh
  nmap <Right> zl

" Make NERDTree a bit easier to use
  nmap <Leader>n :NERDTree<cr>
  nmap <Leader>f :NERDTreeFind<cr>

" search for the word under the cursor
  nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

" remove search hilighting
  nmap <silent> <Leader>h :silent :nohlsearch<CR>

" Bubble single lines (uses unimpaired.vim)
  nmap <C-Up> [e
  nmap <C-Down> ]e
" Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv

