set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" Specify a directory for plugins
"
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'  
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
"" Initialize plugin system
call plug#end()

colorscheme gruvbox
inoremap jk <ESC>

let g:NERDTreeWinSize=20
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"
let g:NERDTreeIgnore = ['^node_modules$']

" Prettier config
let g:prettier#config#tab_width = 2
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0


" Clang format options
let g:clang_format#style_options = {
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "AllowShortBlocksOnASingleLine": "Never",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Allman"}
let g:clang_format#auto_format = 1

inoremap <silent><expr> <c-space> coc#refresh()
" inoremap {<CR> {<CR>}<Esc>O<BS><Tab>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" inoremap {<CR> {<CR>}<Esc>ko
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
set number
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamedplus

