" Note: Often commented out settings were "sane settings" included with the
" plugin documentation.

call plug#begin('~/.vim/plugged')

	Plug 'tpope/vim-fugitive' " Git wrapper

	Plug 'tpope/vim-surround'

	" Plug 'tpope/vim-repeat'

	Plug 'rstacruz/sparkup', {'rtp': 'vim/'} " HTML tag expansion

	Plug 'tomtom/tcomment_vim' " or commentary.vim

	Plug 'airblade/vim-gitgutter'

	Plug 'easymotion/vim-easymotion'

	Plug 'ctrlpvim/ctrlp.vim' " Fast file open
		" let g:ctrlp_match_window = 'bottom,order:ttb'
		" let g:ctrlp_switch_buffer = 0
		" let g:ctrlp_working_path_mode = 0

	Plug 'scrooloose/nerdtree'
		map <C-n> :NERDTreeToggle<CR>
		autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

	Plug 'bling/vim-airline'
		set noshowmode
		let g:airline_powerline_fonts = 1
		" set guifont=Liberation\ Mono\ for\ Powerline\ 10

	Plug 'Yggdroot/indentLine'
		let g:indentLine_char = '·'

	Plug 'hdima/python-syntax'
		let python_highlight_all = 1

	Plug 'sheerun/vim-polyglot'
		" set tabstop=4
		" set softtabstop=4
		" set shiftwidth=4
		" set expandtab
	
	Plug 'scrooloose/syntastic'
		set statusline+=%#warningmsg#
		set statusline+=%{SyntasticStatuslineFlag()}
		set statusline+=%*
		let g:syntastic_always_populate_loc_list = 1
		let g:syntastic_auto_loc_list = 1
		" let g:syntastic_check_on_open = 1
		let g:syntastic_check_on_wq = 0
		let g:syntastic_python_python_exec = '/usr/local/bin/python3'
		
	Plug 'Raimondi/delimitMate'
	
	Plug 'ervandew/supertab'
		let g:SuperTabDefaultCompletionType = "<c-n>"

	" Plug 'Valloric/YouCompleteMe' ", { 'for': ['c', 'cpp'] }
		imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
		" inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
	
		
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

" SEARCHING
	set ignorecase

