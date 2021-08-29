"******************************************************************************
"" Plugin imports
"******************************************************************************
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'mattn/emmet-vim'
Plug 'lervag/vimtex'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" c and cpp
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'

" javascript and jsx
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'

" vuejs
Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'

call plug#end()
"******************************************************************************

"******************************************************************************
"" General config
"******************************************************************************
" Map leader to spacebar
let mapleader=' '

set nu rnu "Line number and relative line number

"" Identation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"" Searching
set incsearch
set nohlsearch

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

" === 
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

let g:UltiSnipsEditSplit="vertical"
"******************************************************************************

"******************************************************************************
"" Visual settings
"******************************************************************************
set termguicolors
colorscheme gruvbox
set background=dark
set colorcolumn=80

" vim-airline
let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
"******************************************************************************

"*****************************************************************************
"" Language servers
"*****************************************************************************
lua << EOF
  require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
  require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}
EOF
"*****************************************************************************

"*****************************************************************************
"" Mappings
"*****************************************************************************
nnoremap <silent> <C-p> :FZF ~<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Git commit --verbose<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"*****************************************************************************
"" Convenience variables
"*****************************************************************************
" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
