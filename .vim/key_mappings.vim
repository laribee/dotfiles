" get out of insert mode with cmd-i
  imap <D-i> <Esc>

" redo with U
  nmap U :redo<cr>

" easy wrap toggling
  nmap gw :set wrap<cr>
  nmap gW :set nowrap<cr>

" switch windows
  nmap gj j
  nmap gk k
  nmap gh h
  nmap gl l

" ack for project-wide searching
  nmap ga :tabe<cr>:LAck 
  nmap gA :LAckAdd 
  nmap gn :lnext<cr>
  nmap gp :lprev<cr>

" scroll up/down one line at a time
  nmap <Up> 
  nmap <Down> 

" page up/down half page at a time
  nmap <S-Up> 
  nmap <S-Down> 

" Fuzzy Finder - ,t to launch; ,b just for buffers; cmd-enter to open selected file in new tab
  let g:FuzzyFinderOptions = { 'Base':{} }
  let g:FuzzyFinderOptions.Base.key_open_tab = '<D-CR>'
  nmap go :FuzzyFinderTextMate<cr> 
  nmap gb :FuzzyFinderBuffer<cr> 
  nmap gs :ruby finder.rescan!<cr>
  

