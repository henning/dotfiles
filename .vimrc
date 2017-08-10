syntax on               " enable syntax highlighting
set cursorline          " highlight the current line
set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
set showmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set scrolloff=5         " show at least 5 lines above/below
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins
" colorscheme cobalt      " requires cobalt.vim to be in ~/.vim/colors

" column-width visual indication
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#001D2F

" tabs and indenting
set smarttab            " better backspace and tab functionality
set autoindent          " auto indenting
set smartindent         " smart indenting
set expandtab           " spaces instead of tabs
set tabstop=2           " 2 spaces for tabs
set shiftwidth=2        " 2 spaces for indentation

" bells
set noerrorbells        " turn off audio bell

" search
set hlsearch            " highlighted search results
set showmatch           " show matching bracket

" clipboard
set clipboard=unnamed   " allow yy, etc. to interact with OS X clipboard

" shortcuts
"map <F2> :NERDTreeToggle<CR>

" remapped keys
"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}

" TODO: would be best to have this as a key command?!
set lines=999 columns=9999
"set lines=999 columns=80
set guifont=Menlo:h16
