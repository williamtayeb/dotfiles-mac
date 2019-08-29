" Enabling filetype support provides filetype-specific indenting, syntax
filetype plugin indent on
syntax on

set number 		      " Show current line number
set relativenumber 	" Show relative line numbers

set tabstop=2		    " Number of visual spaces per tab
set softtabstop=0	  " Number of visual spaces per tab
set shiftwidth=2	  " Indents will have a width of 4
set expandtab		    " Tabs are spaces

set autoindent      " Minimal automatic indenting for any filetype.
set ruler           " Shows the current line number at the bottom.
set wildmenu        " Great command-line completion, use '<Tab>' to
                    " move around and '<CR>' to validate

set showcmd		      " Show last command in the bottom bar
set cursorline		  " Highlight current line

"set lazyredraw	    " Redraw only when we need to

set incsearch		    " Search as characters are entered
set hlsearch		    " Highlight matches
set autochdir       " sets the cwd to whatever file is in view.
                    " This allows better omni completion

set timeoutlen=1000 ttimeoutlen=0   " Eliminate delays on ESC in vim
set backspace=indent,eol,start      " Proper backspace behavior

" Leader is comma
let mapleader=" "

nnoremap <leader>a :Ack!<Space>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>

function! GetVimPlugs()
  Plug 'rking/ag.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'elzr/vim-json'
  Plug 'vim-airline/vim-airline'
  Plug 'ajh17/VimCompletesMe'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'lyuts/vim-rtags'
  Plug 'leafgarland/typescript-vim'

  Plug 'joshdick/onedark.vim'
  Plug 'fxn/vim-monochrome'
  Plug 'lurst/austere.vim'
  Plug 'atelierbram/vim-colors_atelier-schemes'
  Plug 'ntk148v/vim-horizon'
endfunc

call plug#begin('~/.vim/plugged')
call GetVimPlugs()
call plug#end()

" You Complete Me
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1

" CtrlP Configuration
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrl_working_path_mode = 0
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Ag
let g:ag_working_path_mode="r"

if executable('ag')
	let g:ackprg = 'ag --vimgrep'

  " Use ag over grep "
  set grepprg=ag\ --nogroup\ --nocolor\ --column

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore "
  let g:ctrl_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache "
  let g:ctrlp_use_caching = 0
endif

" For simple sizing of splits.
map - <C-W>-
map + <C-W>+

" Remaps
nmap <leader>pf :CtrlP<CR>
nmap <leader>ps :Ag<SPACE>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
nmap <leader><leader> V
vmap <Leader>y "+y

" Colors & Theme Config
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set background=dark

colorscheme Atelier_SulphurpoolDark
let g:airline_theme='Atelier_SulphurpoolDark'
let g:airline_powerline_fonts = 1
