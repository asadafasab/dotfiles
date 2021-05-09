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
Plug 'dense-analysis/ale' " linters
Plug 'airblade/vim-gitgutter'  " show git changes to files in gutter
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sbdchd/neoformat'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

call plug#end()


" python only
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
" ------

set clipboard+=unnamedplus
set encoding=utf-8
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

colorscheme dracula

" ncm2 settings
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
"inoremap <c-c> <ESC>
" make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
let g:ncm2#matcher = 'substrfuzzy'

let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "2"


" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Formatter
let g:neoformat_enabled_python = ['black', 'docformatter']
augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END

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
nmap <C-Left> :bp<CR>
nmap <C-Right> :bn<CR>
nmap <C-c> :bd<CR>

let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_map_keys = 0

" ale
let g:ale_linters={}
:call extend(g:ale_linters, {
            \'python': ['pylint'], })

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

