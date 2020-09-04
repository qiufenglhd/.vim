set nu
syntax on
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set cindent
set mouse=a
set scrolloff=5

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 简单配置C/C++/Python
map<F8> :call F()<CR>
func! F()
    exec "w"
    if &filetype == "c"
        exec "!clang -std=c99 % -o %< && ./%<"
    elseif &filetype == "cpp"
        exec "!clang++ -O2 -std=c++11 % -o %< && ./%<"
    elseif &filetype == "python"
        exec "!python -u %"
    endif
endfunc 


" 插件管理(vim-plug)
call plug#begin('~/.vim/plugged')
    Plug 'mhinz/vim-startify'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdcommenter'
    Plug 'easymotion/vim-easymotion'
call plug#end()

" Theme
" colorscheme elflord

" NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" vim-easymotion
nmap s <Plug>(easymotion-s2)
