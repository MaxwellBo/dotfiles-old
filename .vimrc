" http://dougblack.io/words/a-good-vimrc.html
" INSERTED FROM VIM-SENSIBLE

if has('autocmd')
    filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

" set autoindent
set backspace=indent,eol,start
set complete-=i
" set smarttab

set nrformats-=octals

set ttimeout
set ttimeoutlen=100

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set ruler
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>


" APPEARANCE
    set number
    set cursorline
    set fillchars+=vert:\ 
    
    set showcmd
    set wildmode=full
    set lazyredraw
        
" BINDINGS
    let mapleader = ","
    imap ii <Esc>
    
    " SPLITS
        noremap <C-h> <C-w>h
        noremap <C-j> <C-w>j
        noremap <C-k> <C-w>k
        noremap <C-l> <C-w>l
        set splitbelow
        set splitright


" EDITING
    set mouse=a
    set hidden
    set tabstop=4
    set softtabstop=4
    set expandtab

" FILES AND FILETYPES
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    set nobackup
    set nowritebackup
    set noswapfile
    filetype indent on

" VUNDLE 
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

" PLUGINS

    Plugin 'ctrlpvim/ctrlp.vim'
        let g:ctrlp_match_window = 'bottom,order:ttb'
        let g:ctrlp_switch_buffer = 0
        let g:ctrlp_working_path_mode = 0

    Plugin 'scrooloose/nerdtree'
        map <C-n> :NERDTreeToggle<CR>
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    Plugin 'tpope/vim-fugitive'

    Plugin 'bling/vim-airline'
        set laststatus=2
        set noshowmode
        let g:airline_powerline_fonts = 1
        " set guifont=Liberation\ Mono\ for\ Powerline\ 10 

    Plugin 'easymotion/vim-easymotion'

    Plugin 'L9'

    Plugin 'git://git.wincent.com/command-t.git'

    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

    Plugin 'nathanaelkane/vim-indent-guides'
        let g:indent_guides_enable_on_vim_startup = 1 
        let g:indent_guides_auto_colors = 0
        let g_indent_guides_start_level = 2 
        let g:indent_guides_guide_size = 1
        hi IndentGuidesOdd  ctermbg=black
        hi IndentGuidesEven ctermbg=black

    
    Plugin 'Valloric/YouCompleteMe'

" Plugin 'flazz/vim-colorschemes'
    Plugin 'NLKNguyen/papercolor-theme'
    Plugin 'endel/vim-github-colorscheme'
    Plugin 'morhetz/gruvbox' 
    Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}


call vundle#end()            " required
filetype plugin indent on    " required

" COLOURSCHEME SETTINGS 

colorscheme gruvbox
    set background=dark
    let g:gruvbox_contrast_dark='hard'
    let g:gruvbox_contrast_light='hard'
    highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
    highlight VertSplit cterm=none gui=none


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
