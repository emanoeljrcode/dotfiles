" === Plugins imports ===

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
call plug#end()

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
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

" === Gruvbox as main theme ===

set termguicolors
colorscheme gruvbox
set background=dark

lua << EOF
  require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF

nnoremap <silent> <C-p> :FZF<CR>
