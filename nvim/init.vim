call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'JuliaEditorSupport/julia-vim'
Plug 'scrooloose/nerdtree' 
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" color scheme
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

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
set mouse=a
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

" julia
let g:latex_to_unicode_auto = 1
let g:default_julia_version = '1.0'

" language server
let g:deoplete#enable_at_startup = 1

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
\   'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
\       using LanguageServer;
\       using Pkg;
\       import StaticLint;
\       import SymbolServer;
\       env_path = dirname(Pkg.Types.Context().env.project_file);
\       
\       server = LanguageServer.LanguageServerInstance(stdin, stdout, env_path, "");
\       server.runlinter = true;
\       run(server);
\   ']
\ }

nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


"" NERDTree configuration
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeMinimalUI=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 32
let NERDTreeQuitOnOpen=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

nnoremap <silent> <F1> :NERDTreeToggle<CR>
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
