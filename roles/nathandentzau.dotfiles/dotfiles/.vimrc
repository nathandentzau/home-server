" Colors
colorscheme solarized       " awesome colorscheme
syntax enable               " enable syntax processing

" Spaces & Tabs
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces

" User Interface
set number                  " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
filetype indent on          " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.
set showmatch               " highlight matching [{()}]

" Search
set incsearch               " search as characters are entered
set hlsearch                " highlight matches

nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight

" Folding
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set foldmethod=indent       " fold based on indent level

nnoremap <space> za         " space open/closes folds

" Leader
let mapleader=","           " leader is comma
