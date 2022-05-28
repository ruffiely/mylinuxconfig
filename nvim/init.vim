:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set softtabstop=4
:set mouse=a
:set path+=**
:set wildmenu
:set splitbelow
:set splitright
:set nobackup
:set noswapfile
:set autoread

let g:python_host_prog="/opt/homebrew/bin/python3"
let g:session_autosave = 'yes'
let g:session_autoload = 'yead'
let g:session_default_to_last = 1

call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/joonty/vdebug.git' " Vdebug for xdebug
Plug 'https://github.com/kien/ctrlp.vim' " Fuzzy file search
Plug 'https://github.com/vim-syntastic/syntastic.git' " Syntax checking on save
Plug 'mileszs/ack.vim' " Ack search
Plug 'https://tpope.io/vim/fugitive.git' " Fugitive

set encoding=UTF-8

call plug#end()

nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
:colorscheme jellybeans
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

command! MakeTags !ctags -R .

let g:vdebug_options = {
\ 'server': '0.0.0.0',
\}

let g:vdebug_options['port']=9003
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_quiet_messages = { "type": "style" }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
