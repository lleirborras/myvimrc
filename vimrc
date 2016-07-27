set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My plugins
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'pangloss/vim-javascript'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-unimpaired'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'w0ng/vim-hybrid'
Plugin 'tpope/vim-haml'
Plugin 'elixir-lang/vim-elixir'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

syntax on

let mapleader=","
imap jj <Esc>

set number
set ruler
set paste
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nocursorline

" No backup
set nobackup
set nowritebackup

" Tab completion options
set wildmode=list:longest,list:full
"set wildignorecase
set complete=.,w,t
set wildmenu
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*

"statusline setup
let encoding = '[' . (&fenc==''?&enc:&fenc) . ((exists('+bomb') && &bomb) ? ',B' : '') . ']'

set statusline=%f                         "tail of the filename
set statusline+=%y                        "filetype
set statusline+=%{encoding}               "encoding
set statusline+=%{fugitive#statusline()}
set statusline+=%m                        "modified flag
set statusline+=%=                        "left/right separator
set statusline+=%c,                       "cursor column
set statusline+=%l/%L                     "cursor line/total lines
set statusline+=\ %P                      "percent through file
set laststatus=2

set linespace=1
set guifont=Monaco:h12
set t_Co=256
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

" Display extra whitespace
set list listchars=tab:..,trail:·

" Keep visual mode after indenting
vmap < <gv
vmap > >gv

" shift+arrow-keys to select text
set keymodel=startsel

" Show the next match while entering a search
set incsearch

"Highlighting search matches
set hlsearch

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
map <C-n> :NERDTreeToggle<CR>

set history=1000
