"vimrc
"Sharang Phadke

" set solarized color theme, syntax highlighting, pathogen
set nocompatible
set t_Co=16
call pathogen#infect()
syntax on
set background=dark
colorscheme solarized
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set map leader for quick combos
let mapleader = ","
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>pp :setlocal paste!<cr>
nmap <leader>ss :setlocal spell!<cr>

" Search, highlight, and line numbers
set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set nu "set line numbers

" No sound on errors
set noerrorbells
set novisualbell

" Tabs and indents
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
"set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"
" Navigation
"
" Moving between windows with control
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Moving between tabs
nmap <leader>z :bp<cr>
nmap <leader>x :bn<cr>
" Moving between lines if text wraps
map j gj
map k gk

"
" Nerdtree
"
" start nerdtree on start if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close nerdtree if its the only tab open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" shortcut to open nerdtree
map <C-n> :NERDTreeToggle<CR>

"
" NerdCommenter
"
nmap <C-_> ,ci<Space>
vmap <C-_> ,ci<Space>

"
" Syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
" Airline
"
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
