call plug#begin('~/.vim/plugged')

    Plug 'tpope/vim-fugitive' " Git wrapper

    Plug 'ctrlpvim/ctrlp.vim' " Fast file open
        let g:ctrlp_match_window = 'bottom,order:ttb'
        let g:ctrlp_switch_buffer = 0
        let g:ctrlp_working_path_mode = 0

    Plug 'git://git.wincent.com/command-t.git' " Fast file navigation

    Plug 'rstacruz/sparkup', {'rtp': 'vim/'} " HTML tag expansion

    Plug 'tomtom/tcomment_vim'

    Plug 'airblade/vim-gitgutter'

    Plug 'scrooloose/nerdtree'
        map <C-n> :NERDTreeToggle<CR>
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    Plug 'bling/vim-airline'
        set noshowmode
        let g:airline_powerline_fonts = 1
        " set guifont=Liberation\ Mono\ for\ Powerline\ 10

    Plug 'easymotion/vim-easymotion'

    Plug 'Yggdroot/indentLine'
        let g:indentLine_char = '·'

    Plug 'ervandew/supertab'
        let g:SuperTabDefaultCompletionType = "<c-n>"

    Plug 'hdima/python-syntax'
        let python_highlight_all = 1

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'endel/vim-github-colorscheme'
    Plug 'morhetz/gruvbox'
    Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
    Plug 'zeis/vim-kolor'

call plug#end()

" COLORSCHEME SETTINGS
    colorscheme gruvbox
        set background=dark
        let g:gruvbox_contrast_dark='hard'
        let g:gruvbox_contrast_light='hard'
        " highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
        highlight VertSplit cterm=none gui=none
        set fillchars+=vert:\ 

" APPEARANCE
    set number
    set cursorline
    set showcmd
    set wildmode=full

" BINDINGS
    let mapleader = " "
    map ii <Esc>

    command Day set background=light | colorscheme GitHub
    command Night set background=dark | colorscheme gruvbox

    " SPLITS
        noremap <C-h> <C-w>h
        noremap <C-j> <C-w>j
        noremap <C-k> <C-w>k
        noremap <C-l> <C-w>l
        set splitbelow
        set splitright

" EDITING
    set hidden
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

" SEARCHING
    set ignorecase

