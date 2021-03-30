" Make Vim more useful
set nocompatible

" Enable syntax highlighting
syntax on

set cursorline          " highlight the current line
set autoread            " watch for file changes
set showmatch           " show matching brackets
"set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins
" tabs and indenting
set expandtab           " spaces instead of tabs
set tabstop=2           " 2 spaces for tabs
set shiftwidth=2        " 2 spaces for indentation


set backspace=indent,eol,start " Backspace key won't move from current line 
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed
set showmatch           " show matching bracket
set laststatus=2 " Always show status line
set nostartofline " Don’t reset cursor to start of line when moving around.
set ruler " Show the cursor position
set showmode " Show the current mode
set showcmd " Show the (partial) command as it’s being typed
set clipboard=unnamed   " allow yy, etc. to interact with OS X clipboard

set background=dark
colorscheme solarized



" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

