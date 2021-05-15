cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'scrooloose/nerdtree'  " file list
Plug 'majutsushi/tagbar'  " show tags in a bar (functions etc) for easy browsing
Plug 'vim-airline/vim-airline'  " make statusline awesome
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "to highlight files in nerdtree
Plug 'lifepillar/vim-solarized8'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" python only
" =========================================================
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
" =========================================================================

set splitright
set updatetime=300
set cmdheight=2
set hidden
set clipboard+=unnamedplus
set encoding=utf-8

set nobackup
set nowritebackup
set noswapfile

set scrolloff=8
set backspace=indent,eol,start
set splitright
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set number
set completeopt=menuone,noselect,noinsert
set shortmess+=c
filetype indent on
filetype plugin indent on
syntax on

set background=dark
colorscheme solarized8_high

"" NERDTree configuration
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeMinimalUI=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 32
let NERDTreeQuitOnOpen=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

nnoremap <silent> <F2> :NERDTreeToggle<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <C-Left> :bp!<CR>
nmap <C-Right> :bn!<CR>
nmap <C-c> :bd<CR>

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" Coc
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
