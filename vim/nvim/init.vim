set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'alvan/vim-closetag' "auto closing tag 
"" Initialize plugin system
call plug#end()

:let g:NERDTreeWinSize=20
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"
let g:NERDTreeIgnore = ['^node_modules$']

" Prettier config
let g:prettier#config#tab_width = 2
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0


colorscheme gruvbox
inoremap <silent><expr> <c-space> coc#refresh()
inoremap jk <ESC>
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
set number
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamedplus
