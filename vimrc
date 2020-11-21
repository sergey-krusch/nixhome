set nocompatible

set hlsearch

filetype plugin indent on

set <F13>=[27;5;9~ "xterm Ctrl+Tab
set <F14>=[27;6;9~ "xterm Ctrl+Shift+Tab
set <F17>=[27;5;96~ "xterm Ctrl+~
nnoremap <F13> gt
inoremap <F13> <ESC>gti
nnoremap <F14> gT
inoremap <F14> <ESC>gTi
nnoremap <C-t> :tabnew<CR>:tabmove<CR>
inoremap <C-t> <ESC>:tabnew<CR>:tabmove<CR>
nnoremap # :noh<CR>
