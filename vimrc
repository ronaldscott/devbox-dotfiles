runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
set nobackup
set noswapfile
filetype plugin indent on
autocmd Filetype toml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
