"vimrc
"Sharang Phadke

" set solarized color theme, syntax highlighting, pathogen
set nocompatible
set t_Co=16
syntax on
set background=dark
call pathogen#infect()

" TODO: fix
" solarized options 
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorscheme solarized
colorscheme desert

filetype plugin indent on
set autoread
set noswapfile
set hidden


" Set map leader for quick combos
let mapleader = ","
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>bc :bp\|bd #<cr>
nmap <leader>pp :setlocal paste!<cr>
nmap <leader>ss :setlocal spell!<cr>

" Search, highlight, and line numbers
set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set number
nnoremap <space> /

" No sound on errors
set noerrorbells
set visualbell

" Tabs and indents
set autoindent
set copyindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set wrap

" html tabs
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab

"crontab editing
autocmd filetype crontab setlocal nobackup nowritebackup

" Better splits and menu
set splitbelow
set splitright
set wildmenu

" keep 5 lines visible below cursor
set scrolloff=5

" show current line and col
set cursorline
set cursorcolumn

"
" Folding
"
set foldenable
" hide fold column on start
set foldcolumn=0
" set folds by syntax
set foldmethod=syntax
" start with all folds open
set foldlevelstart=99
" specify commands which open folds
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
" make foldcolumn 4 characters wide
let g:last_fold_column_width = 4
function! FoldColumnToggle()
  if &foldcolumn
    let g:last_fold_column_width = &foldcolumn
    setlocal foldcolumn=0
  else
    let &l:foldcolumn = g:last_fold_column_width
  endif
endfunction


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
let g:syntastic_loc_list_height = 4

"
" Airline
"
set guifont=Monaco\ for\ Powerline:h14
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'

"
" CtrlP
"
let g:ctrlp_max_files = 100000

"
" vim-gitgutter
"
set updatetime=250
