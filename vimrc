set relativenumber
set nocompatible
set autoindent
filetype indent on
set wrap
set mouse=a
syntax on
set visualbell
set laststatus=2
set backspace=indent,eol,start
set termguicolors
set matchpairs+=<:>
set t_Co=256
packadd! dracula " dracula temesının indirilmiş olamsı gerek
colorscheme dracula 
set showcmd
set smartindent
set shiftwidth=2
set nocompatible
set tabstop=4

"close bracket olayları
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

"plugin olayları"
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'


call plug#end()

" nerdtree keyboard shortcuts"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
