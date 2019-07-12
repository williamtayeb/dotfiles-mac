" Enabling filetype support provides filetype-specific indenting, syntax
" highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

set number 		" Show current line number
set relativenumber 	" Show relative line numbers

set tabstop=4		" Number of visual spaces per tab
set softtabstop=0	" Number of visual spaces per tab
set shiftwidth=4	" Indents will have a width of 4
set expandtab		" Tabs are spaces

set autoindent      " Minimal automatic indenting for any filetype.
set ruler           " Shows the current line number at the bottom.
set wildmenu        " Great command-line completion, use '<Tab>' to
                    " move around and '<CR>' to validate

set showcmd		" Show last command in the bottom bar
set cursorline		" Highlight current line

" set lazyredraw	" Redraw only when we need to

set incsearch		" Search as characters are entered
set hlsearch		" Highlight matches

set timeoutlen=1000 ttimeoutlen=0   " Eliminate delays on ESC in vim
set backspace=indent,eol,start      " Proper backspace behavior

" Move vertically by visual line
" nnoremap j gj
" nnoremap k gk

if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif

" Leader is comma
let mapleader=","

nnoremap <leader>a :Ack!<Space>

function! GetVimPlugs()
  Plug 'rking/ag.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'fxn/vim-monochrome'
  Plug 'lurst/austere.vim'
  Plug 'atelierbram/vim-colors_atelier-schemes'
  Plug 'vim-airline/vim-airline'
endfunc

call plug#begin('~/.vim/plugged')
call GetVimPlugs()
call plug#end()

" CtrlP Configuration
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrl_working_path_mode = 0
let g:ctrl_user_command = 'ag %s -l --nocolor --hidden -g ""'

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark

colorscheme Atelier_SulphurpoolDark
let g:airline_theme='Atelier_SulphurpoolDark'
let g:airline_powerline_fonts = 1
