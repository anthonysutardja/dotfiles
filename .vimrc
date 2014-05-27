set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Let Vundle manage Vundle
Bundle 'gmarik/vundle'

"Original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'airblade/vim-gitgutter'
Bundle 'Valloric/YouCompleteMe'

"Set term color
set t_Co=256

"Line numbers
set number

set modeline

"Syntax highlighting
syntax on

"Theme
let g:solarized_bold=1
let g:solarized_underline=1
if has('gui_running')
    set background=light
else
    set background=dark
endif
colors solarized

"Indentation 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

set autoindent
set smarttab
set expandtab

"Indent folding
nnoremap <space> za
vnoremap <space> zf
set foldnestmax=2

"Paren matching
set showmatch

"Menu completion
set wildmenu
set wildmode=longest:list
set wildignore=*.swp,*.pyc,*.class

"Set 2 space tabs for these filetypes
autocmd FileType css,html,xml,js,c setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileTYpe python,c,java setlocal colorcolumn=80

"79 char limit - color inclusive
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.\+/
hi ColorColumn ctermfg=white

"Make backspace work like other apps
set backspace=indent,eol,start

"Make words wrap
set wrap
set linebreak
set nolist

"Turn off the blink in command mode
set gcr=n:blinkon0

"Intelligent case searching
set ignorecase
set smartcase
set incsearch
set hlsearch

"Undo settings
set undofile
set history=500

"Custom mappings
let mapleader=';'
nmap <Leader>g :GitGutterToggle<CR>
nmap <Leader>n :set number! number?<CR>
nmap <Leader>d :NERDTree<CR>
nmap <Leader>c :set cc=80<CR>
nmap <Leader>s :SyntasticToggleMode<CR>

nmap <Leader>S :set spell! spell?<CR>

nmap <Leader>/ :nohl<CR>
nmap <Leader>? :let @/ = ""<CR>

"Edit current working directory.
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
"Split into working directory
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
"Vertical Split into working directory
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>

"Dash docset mappings
let g:dash_map={'python' : 'py'}

"Load plugins
filetype plugin on

"Visual indent
vmap > >gv
vmap < <gv

"Allow hidden unsaved buffers
set hidden
set laststatus=2

"Ctrlp settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cust_ignore = 'venv'
let g:ctrlp_max_files = 10000
let g:ctrlp_user_command = 'find %s -type f'

"Disable gitgutter at start
let g:gitgutter_enabled = 0

"Syntastic settings
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_pep8_args='--ignore=E501,W191'
let g:syntastic_auto_loc_list=1

au FileType html let b:delimitMate_autoclose = 0 
autocmd Filetype gitcommit setlocal spell textwidth=72
