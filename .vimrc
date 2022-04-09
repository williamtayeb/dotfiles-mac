" Use vim settings, rather than vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible

" The following line enables 'detection', 'plugin' and 'indent' at once.
"
" Detection: Each time a new or existing file is edited, Vim will try to 
" recognize the type of the file and set the 'filetype' option.
"
" Plugin: When a file is edited its plugin file is loaded. (If there is 
" one of the detected filetype)
"
" Indent: When a file is edited its indent file is loaded. (If there is
" one for the detected filetype)
filetype plugin indent on

syntax on           " Enable syntax colors.

set noerrorbells    " Don't beep
set number 		      " Show current line number
set relativenumber 	" Show relative line numbers

set softtabstop=0	  
set tabstop=2		    " Number of visual spaces per tab
set shiftwidth=2	  " Indents will have a width of 2
set expandtab		    " Tabs are spaces

set autoindent      " Minimal automatic indenting for any filetype.
set ruler           " Shows the current line number at the bottom.
set wildmenu        " Make tab completion for files/buffers act like bash

set showcmd		      " Show last command in the bottom bar
set cursorline		  " Highlight current line
set showmatch       " Show matching parenthesis

set incsearch		    " Search as characters are entered
set hlsearch		    " Highlight matches
set autochdir       " sets the cwd to whatever file is in view.
                    " This allows better omni completion

set timeoutlen=1000 ttimeoutlen=0   " Eliminate delays on ESC in vim
set backspace=indent,eol,start      " Proper backspace behavior

function! GetVimPlugs()
  Plug 'morhetz/gruvbox'
endfunc

call plug#begin('~/.vim/plugged')
call GetVimPlugs()
call plug#end()

set background=dark
colorscheme gruvbox
