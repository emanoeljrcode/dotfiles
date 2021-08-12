" === Plugins imports ===

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
call plug#end()

" === Gruvbox as main theme ===

set background=dark
colorscheme gruvbox

" === General config ===

set nu rnu "Line number and relative line number

" === Indentation ===

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

" === 

nnoremap <silent> <C-p> :FZF<CR>
