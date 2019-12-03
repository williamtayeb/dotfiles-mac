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
  Plug 'jparise/vim-graphql'
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'lervag/vimtex'

  Plug 'joshdick/onedark.vim'
  Plug 'fxn/vim-monochrome'
  Plug 'lurst/austere.vim'
  Plug 'atelierbram/vim-colors_atelier-schemes'
  Plug 'ntk148v/vim-horizon'
  Plug 'huyvohcmc/atlas.vim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'andreasvc/vim-256noir'
endfunc

call plug#begin('~/.vim/plugged')
call GetVimPlugs()
call plug#end()

" Vim-tex
let g:tex_flavor='latex'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]

" You Complete Me
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1

" CtrlP
let g:ctrlp_root_markers = ['.ctrlp']

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  "command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
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

" Autocompletion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Colors & Theme Config
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set background=dark

colorscheme atlas
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
