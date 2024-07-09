" Set the number of lines to display before and after the cursor
set scrolloff=8

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Set colorscheme
colorscheme ron

" Enable mouse support
set mouse=a

" Set tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight search results
set hlsearch

" Ignore case in search patterns
set ignorecase

" Override ignorecase if search pattern contains uppercase letters
set smartcase

" Enable incremental search
set incsearch

" Show matching brackets
set showmatch

" Set status line
set laststatus=2

" Enable auto-completion for command mode
set nowildmenu

" Save undo history
set undofile

" Set clipboard to use system clipboard
set clipboard=unnamedplus

" Auto-indent new lines
set autoindent
set smartindent

" Disable audible bell
" set noerrorbells
" set visualbell

" Enable line wrapping
set wrap

" Enable auto-completion for code
filetype plugin on
filetype indent on

" Set a map for easy save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Move to the window to the left
nnoremap <C-h> <C-w>h

" Move to the window to the right
nnoremap <C-l> <C-w>l

call plug#begin('~/.vim/plugged')

" Add this line to install auto-pairs
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdtree'

Plug 'Yggdroot/indentLine'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'

call plug#end()

" NERDTree configurations
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr('$') == 1 && &filetype == 'nerdtree') | q | endif

" coc.nvim configurations
nmap <silent> <space>c :call coc#toggle()<CR>
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" lightline configurations
set laststatus=2 " Always show the status line
set noshowmode " Hide default mode indicator
