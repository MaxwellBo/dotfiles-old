" http://dougblack.io/words/a-good-vimrc.html

" APPEARANCE
    syntax on
    set t_Co=256
    set background=dark

    set number
    set numberwidth=9
    highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
    " set cursorline
    " set ruler
    
    highlight VertSplit cterm=none gui=none
    set fillchars+=vert:\ 
    
    set showcmd

    set wildmenu
    set wildmode=full
    set lazyredraw
        
" BINDINGS
    set timeoutlen=1000 ttimeoutlen=0
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
    set backspace=2

" SEARCHING
    set incsearch
    set ignorecase

" FILES AND FILETYPES
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    set autoread
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

    " Plugin 'flazz/vim-colorschemes'

    Plugin 'nathanaelkane/vim-indent-guides'
        " let g:indent_guides_enable_on_vim_startup = 1 
        let g:indent_guides_auto_colors = 0
        let g_indent_guides_start_level = 2 
        let g:indent_guides_guide_size = 1
        hi IndentGuidesOdd  ctermbg=black
        hi IndentGuidesEven ctermbg=black

    " Plugin 'godlygeek/csapprox'

call vundle#end()            " required
filetype plugin indent on    " required

" colorscheme default 

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
