set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" Specify a directory for plugins
"
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'  
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
"" Initialize plugin system
call plug#end()

colorscheme gruvbox
inoremap jk <ESC>

let g:NERDTreeWinSize=20
"let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"
let g:NERDTreeIgnore = ['^node_modules$']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"
" Prettier config
let g:prettier#config#tab_width = 2
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 1

" jsx auto complete
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
 

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
nmap <F2> <Plug>(coc-rename)
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
set autoindent

