if &compatible
  set nocompatible
endif
"--------------- deinが入っていなかったらインストール＋ランタイムパスへの追加 ---------
" https://qiita.com/okamos/items/2259d5c770d51b88d75b

" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

"--------- deinの設定 ---------------------------
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " Unite.vimで最近使ったファイルを表示できるようにする
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
"  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#load_toml('~/.config/nvim/plugins.toml', {'lazy':0}) 
  call dein#load_toml('~/.config/nvim/plugins_lazy.toml', {'lazy':1}) 
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

"--------------- python pathの設定-----------------------
let g:python_host_prog = '/Usr/local/bin/python'
let g:python3_host_prog = '/Users/kawasaki/miniconda3/envs/nvim3/bin/python'

"----------------- 入ってないプラグインのインストール--------------
" https://qiita.com/okamos/items/2259d5c770d51b88d75b
" その他インストールしていないものはこちらに入れる
if dein#check_install()
  call dein#install()
endif

" ---------------- .vimファイルの読み込み----------------------
source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins_conf.vim
source ~/.config/nvim/map.vim

