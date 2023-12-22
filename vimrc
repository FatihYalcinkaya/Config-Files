set relativenumber
set autoindent
set wrap
set mouse=a
syntax on
set laststatus=2
set termguicolors
packadd! dracula " dracula temesının indirilmiş olamsı gerek
colorscheme dracula 
set showcmd
set smartindent
set shiftwidth=2

"close bracket olayları
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
