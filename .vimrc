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
set clipboard=unnamed
set pastetoggle=<F2>

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

let mapleader = ","
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let g:CommandTMaxHeight=20
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:JSLintHighlightErrorLine = 0
let g:user_emmet_install_global = 0
let g:UltiSnipsSnippetsDir="~/.vim/snips"
let g:UltiSnipsSnippetDirectories=["snips", "UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"

nmap <silent> <leader>/ :nohlsearch<CR>
nmap <Leader>tt :TagbarToggle<CR>

map <silent> <leader><cr> :noh<cr>
map <left> h
map <down> j
map <up> k
map <right> l
map <Leader>n :NERDTreeToggle<CR>

call pathogen#helptags()
call fake#define('sex', 'fake#choice(["male", "female"])')
call fake#define('male', 'fake#int(1) ? fake#gen("male_name")')
call fake#define('female', 'fake#int(1) ? fake#gen("female_name")')
call fake#define('fullname', 'fake#gen("name") . " " . fake#gen("surname")')
call fake#define('sentence', 'fake#capitalize('
                        \ . 'join(map(range(fake#int(3,15)),"fake#gen(\"nonsense\")"))'
                        \ . ' . fake#chars(1,"..............!?"))')
call fake#define('paragraph', 'join(map(range(fake#int(5,10)),"fake#gen(\"sentence\")"))')
call fake#define('lipsum', 'fake#gen("paragraph")')

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
autocmd FileType html,css EmmetInstall



