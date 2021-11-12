" Jon's Neovim configurations

" If you're using python3 that came from pyenv, set this variable
" Also run
"     $ pyenv install 3.10.0 --verbose
"     $ pip install --upgrade pip
"     $ pip install pynvim
"
let g:python3_host_prog = expand('~/.pyenv/shims/python')

call plug#begin(stdpath('data') . '/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'sheerun/vim-polyglot'  " It has a lot of syntax handling
Plug 'Yggdroot/indentLine'  " Show ident blocks as lines
Plug 'airblade/vim-gitgutter' " Shows GIT differences (add, removals)
Plug 'wesQ3/vim-windowswap'  " Swap between layouts: Go to window, <leader>ww, go to another window, <leader>ww
Plug 'vimlab/split-term.vim'  " run :term; :VTerm <command>

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" Color Schemes
Plug 'crusoexia/vim-monokai'
Plug 'jacoborus/tender.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Go Support
Plug 'fatih/vim-go'

" Rust Support
Plug 'rust-lang/rust.vim'

call plug#end()

"
" General Setup
"
" Tabs to spaces
command Tabs2Spaces execute ':1,$s/\t/  /g'

" 2 spaces to 4 spaces
command TwoSpaces2FourSpaces execute ':%s/^\s*/&&/g'

" Enable Powerline
let g:airline_powerline_fonts = 1

" Enable Tab Bar line for airline
let g:airline#extensions#tabline#enabled = 1

" Enable Deoplete support
let g:deoplete#sources#jedi#enable_typeinfo = 0
let g:deoplete#enable_at_startup = 1

"
"
" GENERAL CONFIGS
" 	
"

" UTF-8 encoding
set encoding=utf-8

" Change <Leader>
let mapleader = ","

noremap <leader>. :NERDTreeToggle<CR>

" Undo levels
set history=300
set undolevels=300

" Don't break lines in the middle of words
set linebreak

" TABs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Line numbers
set number
set relativenumber

" Identing
set autoindent


" Folding and unfolding

" za : toggle folding
" zM : fold everything
" zR : unfold everything
" zm & zr : get those folds just right
"
" http://stackoverflow.com/a/10644424/922143
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=0         "this is just what i use"

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Adding mouse support into vim
set mouse=a

" Jedi vim specific configs
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1


" Theme
syntax on
"colorscheme monokai

"set background=light
"colorscheme PaperColor

colorscheme zenburn

