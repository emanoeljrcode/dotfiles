call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
call plug#end()

set background=dark
colorscheme gruvbox

set tabstop=2
set shiftwidth=2
set smarttab
set nu rnu

nnoremap <silent> <C-p> :FZF<CR>
