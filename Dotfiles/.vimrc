" ----------------------------- "
" Mah .vimrc
" By Moconinja
" ----------------------------- "
" ----------------------------- "
" General options and behaviour
" ----------------------------- "
set nocompatible
set nobackup
set nowritebackup
set noswapfile
" ----------------------------- "
" Formatting, tabs and the likes
" ----------------------------- "
set autoindent              " autoindent always ON.
set expandtab               " expand tabs
set shiftwidth=4            " spaces for autoindenting
set tabstop=4               " sets tabs to be this long
set softtabstop=4           " remove a full pseudo-TAB when i press <BS>
" ----------------------------- "
" UI, navigation and stuff
" ----------------------------- "
set showmode            " always show which more are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu
" set nowrap              " don't wrap long lines
set number              " show line numbers
set relativenumber      " show numbers as relative by default
set showmatch           " higlight matching parentheses and brackets
colorscheme desert
" ----------------------------- "
" Syntax, highlighting 'n shit 
" ----------------------------- "
 syntax on
" ----------------------------- "
" Display tabs, spaces 'n shit "
" ----------------------------- "
 set encoding=utf-8
 set list!
 set listchars=tab:>.,trail:*,extends:\#,nbsp:.,space:·,eol:$
" ----------------------------- "
" Specific spacing options for certain programming languages
" ----------------------------- "
autocmd FileType html,css,sass,scss,javascript setlocal sw=2 sts=2
autocmd FileType json setlocal sw=2 sts=2
autocmd FileType yaml setlocal sw=2 sts=2
" ----------------------------- "
