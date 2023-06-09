"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/


" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=v
set encoding=utf-8

set clipboard+=unnamed


" ===
" === Main code display
" ===
set number
set relativenumber
set ruler
set cursorline
set cursorcolumn
syntax enable
syntax on

set background=dark
" ===
" === Editor behavior
" ===
" Better tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" Prevent auto line split
set wrap
set tw=0

set indentexpr=
set backspace=indent,eol,start

set foldmethod=indent
set foldlevel=1
set foldlevelstart=99
nnoremap \ za


" ===
" === Status/command bar
" ===
set laststatus=2
set autochdir
set showcmd

" Show command autocomplete
set wildmenu
set wildmode=longest,list,full

" Searching options
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
exec "nohlsearch"


" ===
" === map
" ===

let mapleader=" "
map R :source $MYVIMRC<CR>
nnoremap <LEADER>rc :e ~/.vimrc<CR>
imap jj <Esc>
map s <nop>
map S :w<CR>
map Q :q<CR>
noremap J 5j
noremap K 5k
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>l <C-w>l
map ss <C-w>w
noremap wk <C-w>t<C-w>K
noremap wl <C-w>t<C-w>L
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tt :tabnext<CR>
map tmp :-tabmove<CR>
map tmn :+tabmove<CR>


"inoremap ' ''<++><Esc>4hi
"inoremap " ""<++><Esc>4hi
"inoremap ( ()<++><Esc>4hi
"inoremap { {}<++><Esc>4hi
"inoremap [ []<++><Esc>4hi
"inoremap ;{ {<CR>}<Esc>O

map sm :r !figlet
nnoremap <LEADER><CR> :set hlsearch!<CR>
nnoremap color :colorscheme peachpuff<CR>
nnoremap shell :!


call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'rhysd/vim-clang-format'
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'morhetz/gruvbox'
call plug#end()


:source ~/Desktop/vim-yrxns/markdown.vim


"COC
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"vim-clang-format
" clang-format -style=google -dump-config > .clang-format
let g:clang_format#detect_style_file = 1
" let g:clang_format#auto_format_on_insert_leave = 1
nnoremap clang :ClangFormat<CR>


"nerdtree
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>

let NERDTreeMinimalUI = 1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_transparent_bg=1
colorscheme gruvbox
