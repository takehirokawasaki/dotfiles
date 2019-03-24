"--------- Lieader------------
let mapleader = "\<Space>"

"------ ウィンドウ移動--------------
" https://liginc.co.jp/409849
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"-------折り返し行移動----------
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" ---------挿入モードからjjでノーマルモード移行＋保存
inoremap <silent> jj <ESC>:<C-u>w<CR>
