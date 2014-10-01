set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set t_Co=256
set laststatus=2
set nu


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'itchyny/lightline.vim'
Bundle 'othree/html5.vim'
Bundle 'ap/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'vim-scripts/Syntastic'
Bundle 'vim-scripts/xml.vim'
Bundle 'vim-scripts/python.vim'
Bundle 'altercation/vim-colors-solarized'

set background=dark
colorscheme solarized

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
"
"Tab Setting
 set tabstop=4
 set shiftwidth=4
 set expandtab

"Code Fold Config
" set foldenable 
" set foldmethod=syntax 
" set foldcolumn=0 
" nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo') 

"AutoCompile
 autocmd BufRead *.py nmap <F5> :w !python3 % <CR>
 autocmd FileType c nmap <F5> :w !make <CR>
 autocmd FileType cpp nmap <F5> :w !make <CR>

let python_highlight_all = 1

"Syntastic Plugin Enable
 let g:syntastic_check_on_open = 1 

"LightLine Config
 let g:lightline = {
       \ 'colorscheme': 'solarized_dark',
       \ 'component': {
       \   'readonly': '%{&readonly?"⭤":""}',
       \ },
       \ }

"NERD Tree Config
 autocmd vimenter * if !argc() | NERDTree | endif " Autoopne if no file
 nmap <silent> <C-n> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Auto close vim if NT left only

"Tag List Key Config
 nmap <F8> :TagbarToggle<CR>
"nmap <F7> :TlistAddFilesRecursive ./ <BAR> :TlistToggle<CR>
"nmap <F8> :TlistSessionLoad .ctags<CR>
"nmap <F8> :TlistSessionSave .ctags<CR>

"BufExplorer Key Config
 nmap <C-a> :BufExplorer <CR>

"FuzzyFinder Keyy Config
 nnoremap ff  :FufFile

"LineNumber Config 
 nnoremap <F3> :set nu<CR>
 nnoremap <F4> :set nu!<CR>

 let mapleader= "/"
"Windows Movement 
 nmap <leader><up> :wincmd j <CR>
 nmap <leader><down>  :wincmd k <CR>
 nmap <leader><right> :wincmd l <CR>
 nmap <leader><left> :wincmd h <CR>

 nmap <F6> gT <CR>
 nmap <F7> gt <CR>

