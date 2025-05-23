" Increase command-line history
set history=1000

" Disable error bells
set belloff=all

" Syntax highlighting on
syntax on

" Filetype support
filetype plugin indent on

" Intuitive backspace
set backspace=indent,eol,start

" Spaces instead of tabs
set expandtab

" Tab equals 4 spaces
set tabstop=4
set shiftwidth=4

" Smart tab
set smarttab

" Smart indentation
set autoindent
set smartindent

" Word wrapping
set wrap

" Line numbering
set number
set relativenumber
highlight LineNr ctermfg=darkgrey guifg=#444444

" No relative line numbers in Insert mode
augroup LineNumberToggle
  autocmd!
  autocmd InsertEnter * set norelativenumber
  autocmd InsertLeave * set relativenumber
augroup END

" Highlight current line
set cursorline
set cursorlineopt=number
highlight CursorLineNr ctermfg=grey guifg=#888888 cterm=NONE gui=NONE

" Search settings
set incsearch " Search while typing query
set hlsearch " Highlighting
set ignorecase " Case insensitive search
set smartcase " Only case insensitive when lowercase

" Enable wildmenu
set wildmenu
set wildignore=*.o,*.obj,*.pyc

" Support multiple unsaved buffer
set hidden

" Built-in matchit macro
runtime macros/matchit.vim

" Command :W to save as sudo
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
