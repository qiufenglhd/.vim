set nu
syntax on
set smarttab
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent
set mouse=a
set scrolloff=5

colorscheme dracula

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 简单配置C/C++
map<F8> :call C()<CR>
func! C()
    exec "w"
    exec "!gcc -std=c99 % -o %< && ./%<"
endfunc 
map<F9> :call CPP()<CR>
func! CPP()
    exec "w"
    exec "!g++ -O2 -std=c++11 % -o %< && ./%<"
endfunc


" 插件管理(vim-plug)
call plug#begin('~/.vim/plugged')
    Plug 'mhinz/vim-startify'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdcommenter'
    Plug 'easymotion/vim-easymotion'
    Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" vim-easymotion
nmap s <Plug>(easymotion-s2)
