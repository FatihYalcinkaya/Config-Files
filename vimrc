set number
set tabstop=4
set autoindent
set mouse=a
syntax on
set termguicolors
colo molokai
set laststatus=2
set wrap


packadd! dracula
syntax enable
colorscheme dracula

call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()




nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>






