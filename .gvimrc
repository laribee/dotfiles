" make it pretty
  set guioptions=e
  set guioptions-=m
  set guifont=Inconsolata:h16
  set lines=30 columns=100

  if exists('+fuoptions')						" Fullscreen options for MacVim.
  	set fuoptions=maxvert,maxhorz,background:Normal
  endif

  colorscheme candy
