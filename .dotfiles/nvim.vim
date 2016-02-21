" Note: Often commented out settings were "sane settings" included with the
" plugin documentation.

call plug#begin('~/.vim/plugged')

" GIT
	Plug 'tpope/vim-fugitive' " Git wrapper

	Plug 'airblade/vim-gitgutter' " Git diff sidebar markers

" EDITING HELP
	Plug 'kshenoy/vim-signature' " Mark sidebar markers

	Plug 'ap/vim-css-color' " Hex code colour highlighting (fast fork)

	Plug 'tpope/vim-surround' " Bindings for bracket wrapping, etc.
	" Plug 'tpope/vim-repeat'

	Plug 'rstacruz/sparkup', {'rtp': 'vim/'} " HTML tag expansion

	Plug 'tomtom/tcomment_vim' " or commentary.vim

	Plug 'Raimondi/delimitMate' " Auto close brackets

	Plug 'easymotion/vim-easymotion' " Fast jumping

" WORKFLOW SUPPORT
	Plug 'ctrlpvim/ctrlp.vim' " Fast file open
		" let g:ctrlp_match_window = 'bottom,order:ttb'
		" let g:ctrlp_switch_buffer = 0
		" let g:ctrlp_working_path_mode = 0

	Plug 'scrooloose/nerdtree' " File navigation sidebar
		map <C-n> :NERDTreeToggle<CR>
		autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" APPEARANCE
	Plug 'mhinz/vim-startify' " Nice startup screen

	Plug 'bling/vim-airline' " Nice status bar
		set noshowmode
		let g:airline_powerline_fonts = 1
		" set guifont=Liberation\ Mono\ for\ Powerline\ 10

	Plug 'Yggdroot/indentLine' " Indent flagging 
		let g:indentLine_char = '·'
	
	Plug 'morhetz/gruvbox' " The One True Scheme
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
	Plug 'endel/vim-github-colorscheme'
	Plug 'zeis/vim-kolor'

" SYNTAX / LINTING
	Plug 'sheerun/vim-polyglot'
		" set tabstop=4
		" set softtabstop=4
		" set shiftwidth=4
		" set expandtab
	
	Plug 'hdima/python-syntax'
		let python_highlight_all = 1
	
	Plug 'scrooloose/syntastic'
		set statusline+=%#warningmsg#
		set statusline+=%{SyntasticStatuslineFlag()}
		set statusline+=%*
		let g:syntastic_always_populate_loc_list = 1
		let g:syntastic_auto_loc_list = 1
		" let g:syntastic_check_on_open = 1
		let g:syntastic_check_on_wq = 0
		let g:syntastic_python_python_exec = '/usr/local/bin/python3'

" COMPLETION
	imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
	" inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

	Plug 'ervandew/supertab'
		let g:SuperTabDefaultCompletionType = "<c-n>"

	" Plug 'Valloric/YouCompleteMe' ", { 'for': ['c', 'cpp'] }
	
	" Plug 'rdnetto/YCM-Generator'

	
call plug#end()

" EDITING
	set hidden

" SEARCHING
	set ignorecase

" APPEARANCE
	set number
	set cursorline
	set showcmd
	set wildmode=full

" BINDINGS
	let mapleader = " "

	command Day set background=light | colorscheme GitHub
	command Night set background=dark | colorscheme gruvbox

	" SPLITS
		noremap <C-h> <C-w>h
		noremap <C-j> <C-w>j
		noremap <C-k> <C-w>k
		noremap <C-l> <C-w>l
		" tnoremap <A-h> <C-\><C-n><C-w>h
		" tnoremap <A-j> <C-\><C-n><C-w>j
		" tnoremap <A-k> <C-\><C-n><C-w>k
		" tnoremap <A-l> <C-\><C-n><C-w>l
		" nnoremap <A-h> <C-w>h
		" nnoremap <A-j> <C-w>j
		" nnoremap <A-k> <C-w>k
		" nnoremap <A-l> <C-w>l
 

		set splitbelow
		set splitright

" COLORSCHEME SETTINGS
	colorscheme gruvbox
		set background=dark
		let g:gruvbox_contrast_dark='hard'
		let g:gruvbox_contrast_light='hard'
		" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
		highlight VertSplit cterm=none gui=none
		set fillchars+=vert:\ 

