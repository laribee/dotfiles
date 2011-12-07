set nocompatible
filetype off

set rtp+=~/.vim/vundle/
call vundle#rc()
runtime vundle.vim

filetype plugin indent on

runtime general_config.vim
runtime ui_config.vim
runtime plugin_config.vim
runtime key_mappings.vim

set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
