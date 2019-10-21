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

" Controlling the coding folding
set foldmethod=indent
set foldopen=block,hor,mark,percent,quickfix,tag 
set foldlevel=99

set sidescrolloff=2
set numberwidth=2
set softtabstop=4
set shiftwidth=4
set tabstop=4
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
set shiftround
set lazyredraw
set complete-=i
set cursorline
set noerrorbells
set visualbell
set title
set background=dark
set nospell
set wildmenu
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

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
:highlight Search cterm=underline gui=underline

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
noremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

let mapleader = ","
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let g:CommandTMaxHeight=20
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:JSLintHighlightErrorLine = 0
let g:UltiSnipsSnippetsDir="~/.vim/snips"
let g:UltiSnipsSnippetDirectories=["snips", "UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"

let g:prettier#config#tab_width = 4
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#parser = 'flow'
let g:prettier#config#print_width = 80

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

augroup autoformat_settings
  "autocmd FileType bzl AutoFormatBuffer buildifier
  "autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  "autocmd FileType dart AutoFormatBuffer dartfmt
  "autocmd FileType go AutoFormatBuffer gofmt
  "autocmd FileType gn AutoFormatBuffer gn
  "autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  "autocmd FileType java AutoFormatBuffer google-java-format
  "autocmd FileType python AutoFormatBuffer yapf
  "autocmd FileType vue AutoFormatBuffer prettier
  "autocmd FileType js,jsx AutoFormatBuffer prettier
augroup END



" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END
