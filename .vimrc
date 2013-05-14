execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on
color xoria256

set number
set wrap
set linebreak
set ruler
set showmatch  
set mat=5  
set backspace=indent,eol,start
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set matchpairs+=<:>
set hlsearch 
set incsearch
set ignorecase  
set smartcase 
set smartindent
set autoindent
set foldmethod=manual 
set foldlevel=2      
set foldopen=block,hor,mark,percent,quickfix,tag 
set sidescrolloff=2
set numberwidth=2
set softtabstop=2
set shiftwidth=2
set tabstop=2
set noexpandtab
set mouse=a
set ttyfast
set smarttab
set magic
set history=1000
set lazyredraw
set backupdir=~/.vim/backup
set directory=~/.vim/backup

if has('persistent_undo')
	set noundofile
endif

if exists(":Tabularize")
	nmap <Leader>=== :Tabularize /=<CR>
	vmap <Leader>=== :Tabularize /=<CR>
	nmap <Leader>::: :Tabularize /:\zs<CR>
	vmap <Leader>::: :Tabularize /:\zs<CR>
endif

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
:highlight Search cterm=underline gui=underline ctermbg=none guibg=none ctermfg=none guifg=none

let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let g:CommandTMaxHeight=20
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:JSLintHighlightErrorLine = 0
let mapleader = ","

nmap <silent> <leader>/ :nohlsearch<CR>
nmap <Leader>tt :TagbarToggle<CR>

map <silent> <leader><cr> :noh<cr>
map <left> h
map <down> j
map <up> k
map <right> l
map <Leader>n :NERDTreeToggle<CR>



