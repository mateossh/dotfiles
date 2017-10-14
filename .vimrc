
"====================================================
" Things
"====================================================

set nocompatible                " enable fetures not Vi compatible

" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*


"====================================================
" Spaces & Tabs
"====================================================

syntax enable			              " enable syntax processing
set tabstop=2			              " number of visual spaces per TAB
set softtabstop=2		            " number of spaces in tab when editing (propably set to 0 when want tabs)
set shiftwidth=2
set expandtab			              " tabs are spaces (noexpandtabs will set tabs)
set autoindent
set smartindent

"====================================================
" UI
"====================================================

set number			                  " show line numbers
set cursorline			              " highlight current line
filetype indent on		            " load filetype-specific indent files
set wildmenu			                " visual autocomplete for command menu
set lazyredraw			              " redraw only when we need to
set showmatch			                " highlight matching [{()}]
set nowrap                        " disable line wrapping
set nobackup                      " disable .swp files
set noswapfile                    " disable .swp files
set laststatus=2                  " status bar (this enables vim-airline)

" Let backspace delete indentations, newlines, and don't make it stop after
" reaching the start of your insert mode
set backspace=indent,eol,start

set colorcolumn=80                " set column width
highlight ColorColumn ctermbg=darkgray    " set column color

"====================================================
" Searching
"====================================================

set incsearch			                " search as characters are entered
set hlsearch			                " highlight matches

"====================================================
" Folding
"====================================================
"
set foldenable			              " enable folding
set foldlevelstart=10		          " open most folds by default
set foldnestmax=10		            " 10 nested fold max
set foldmethod=indent		          " fold based on indent level

" space open/close folds
nnoremap <space> za

"====================================================
" Movement
"====================================================

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

nnoremap <A-Up> :wincmd k<CR>
nnoremap <A-Down> :wincmd j<CR>
nnoremap <A-Left> :wincmd h<CR>
nnoremap <A-Right> :wincmd l<CR>

" use ; as :
nnoremap ; :

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall



"====================================================
" Leader Shortcuts
"====================================================

let mapleader=","		              " leader is comma

noremap <leader>q :bp<CR>         " buffer previous (?)
noremap <leader>w :bd<CR>         " close buffer
noremap <leader>e :bn<CR>         " buffer next (?)

noremap <leader>d :t.<CR>         " duplicate line
noremap <leader><f11> :Goyo<CR>   " distraction-free mode
noremap <leader>n :enew<CR>       " new blank buffer

" TODO changing indent
"noremap <leader><Tab> >><CR>      " decrease indent
"noremap <leader><S-Tab> <<<CR>    " increase indent

nnoremap <leader>s :mksession<CR> " save session
nnoremap <leader>/ :Commentary<CR>" comment line in normal mode
vnoremap <leader>/ :Commentary<CR>" comment selected in visual mod

"====================================================
" Plugins
"====================================================

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'boundincode/autofilename'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'amirh/HTML-AutoCloseTag'
Plug 'mattn/emmet-vim'
Plug 'breuckelen/vim-resize'
Plug 'gorodinskiy/vim-coloresque'           " color highlighter
Plug 'fatih/vim-go'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/calendar.vim'
Plug 'severin-lemaignan/vim-minimap'

Plug 'joshdick/onedark.vim'                 " color scheme
Plug 'w0ng/vim-hybrid'                      " color scheme

call plug#end()


" Color scheme
set background=dark               " set dark background
"colorscheme hybrid                " set colorscheme
colorscheme onedark                " set colorscheme

"====================================================
" Plugin's configs
"====================================================

" IntentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = "|"
let g:indentLine_faster = 1

" vim-airline
"let g:airline_theme='hybrid'
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

" NERDTree
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']

" CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/CtrlP'

" snippets
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<c-tab>'
let g:UltiSnipsEditSplit='vertical'

" YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" syntastic
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" limelight
let g:limelight_conceal_ctermfg = 'gray'

" goyo.vim + limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"====================================================
" Mappings
"====================================================

" Plugins

map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>

" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>


"====================================================
" Autogroup
"====================================================

augroup configgroup
  autocmd!
  autocmd FileType php setlocal noexpandtab tabstop=4 shiftwidth=4
  autocmd FileType html setlocal noexpandtab tabstop=2 softtabstop=2
  autocmd FileType c setlocal noexpandtab tabstop=4 softtabstop=4
augroup END

"====================================================
" Convenience variables
"====================================================

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
