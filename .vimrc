"Load pathogen plugins
call pathogen#infect()

"Set term color
set t_Co=256

"Line numbers
set number
"Syntax highlighting
syntax on
"Theme
colors Tomorrow-Night

"Indentation 4 spaces
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

"Make backspace work like other apps
set backspace=indent,eol,start

"Turn off the blink in command mode
set gcr=n:blinkon0

"Load plugins
filetype plugin on
