"Load pathogen plugins
call pathogen#infect()

"Set term color
set t_Co=256

"Line numbers
set number
"Syntax highlighting
syntax on
"Theme
let g:solarized_bold=1
let g:solarized_underline=1
if has('gui_running')
    set background=light
else
    set background=light
endif
colors solarized

"Indentation 4 spaces
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

"Set 2 space tabs for these filetypes
autocmd FileType css,html,xml,js,java,c setlocal tabstop=2 softtabstop=2 shiftwidth=2
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

"Custom mappings
let mapleader=','
"Edit current working directory.
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
"Split into working directory
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
"Vertical Split into working directory
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>

"Indent folding
nnoremap <space> za
vnoremap <space> zf
set foldnestmax=2

"Dash docset mappings
let g:dash_map={'python' : 'py'}

"Load plugins
filetype plugin on
