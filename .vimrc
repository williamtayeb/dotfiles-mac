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
endfunc

" Automatically install vim-plug for either vim or nvim
function! InitializeVimPlug(nvim)
	let l:vimPlugConfig = "~/.vim/autoload/plug.vim"
	let l:vimPlugPluginsPath = "~/.vim/plugged"

	if a:nvim
		let l:vimPlugConfig = "~/.local/share/nvim/site/autoload/plug.vim"
		let l:vimPlugPluginsPath = "~/.local/share/nvim/plugged"
	endif

	if empty(glob(l:vimPlugConfig))
	  execute 'silent !curl -fLo ' . l:vimPlugConfig . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      so $MYVIMRC
	endif

	call plug#begin(l:vimPlugPluginsPath)
	call GetVimPlugs()
	call plug#end()
endfunc

call InitializeVimPlug(has('nvim'))

" CtrlP Configuration
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrl_working_path_mode = 0
let g:ctrl_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

if (has("nvim"))
    colorscheme onedark
else
    colorscheme austere
endif
