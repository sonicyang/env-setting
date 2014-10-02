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
Bundle 'altercation/vim-colors-solarized'

Bundle 'othree/html5.vim'
Bundle 'ap/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'vim-scripts/python.vim'
Bundle 'vim-scripts/xml.vim'

Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdtree'

Bundle 'terryma/vim-multiple-cursors'
Bundle 'Rip-Rip/clang_complete'

Bundle 'majutsushi/tagbar'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/L9'

Bundle 'vim-scripts/bufexplorer.zip'

Bundle 'vim-scripts/Auto-Pairs'
Bundle 'vim-scripts/Syntastic'

set background=dark
colorscheme solarized

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

autocmd! bufwritepost .vimrc source ~/.vimrc

let OS = substitute( system( 'uname'  ), "\n", "", "" )

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

 set cursorline
 set spell

"Code Fold Config
" set foldenable 
" set foldmethod=syntax 
" set foldcolumn=0 
" nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo') 

"AutoCompile
" autocmd BufRead *.py nmap <F5> :w !python3 % <CR>
" autocmd FileType c nmap <F5> :w !make <CR>
" autocmd FileType cpp nmap <F5> :w !make <CR>

let python_highlight_all = 1

"indent in normal mode
 map<tab> v>
 map<s-tab> v<

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
 nmap <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Auto close vim if NT left only

"Tag List Key Config
 nmap <F8> :TagbarToggle<CR>
 let g:tagbar_width = 30

 if OS == "Linux"
     let g:tagbar_ctags_bin='ctags'
 elseif OS == "Darwin"
     let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8/bin/ctags'
 endif
"nmap <F7> :TlistAddFilesRecursive ./ <BAR> :TlistToggle<CR>
"nmap <F8> :TlistSessionLoad .ctags<CR>
"nmap <F8> :TlistSessionSave .ctags<CR>

" clang completition setting
 let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
 let g:clang_jumpto_declaration_key = '<C-]>'
 let g:clang_jumpto_declaration_in_preview_key = '<C-W>]'
 let g:clang_jumpto_back_key = '<C-W>['
 let g:clang_snippets_engine = 'dummy'
 let g:clang_snippets_engine = 'clang_complete'
 let g:clang_conceal_snippets = has('conceal')
"BufExplorer Key Config
 nmap <c-a> :BufExplorer <CR>

"FuzzyFinder Keyy Config
 nnoremap ff  :FufFile

"LineNumber Config 
 nnoremap <F3> :set paste<CR>
 nnoremap <F4> :set nopaste<CR>

 let mapleader= "/"
"Windows Movement 
 nmap <s-up> :wincmd k <CR>
 nmap <s-down>  :wincmd j <CR>
 nmap <s-right> :wincmd l <CR>
 nmap <s-left> :wincmd h <CR>

 nmap <c-left> gT <CR>
 nmap <c-right> gt <CR>

