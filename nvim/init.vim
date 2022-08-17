set nocompatible
filetype off

let g:ale_disable_lsp = 1

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'liuchengxu/vim-which-key'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/preservim/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neoclide/coc.nvim'

Plug 'dracula/vim', { 'name': 'dracula' }


call plug#end()

filetype plugin indent on

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree | wincmd p
autocmd BufWinEnter * silent NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <F8> :TagbarToggle<CR>


" coc commands
nmap la <Plug>(coc-codeaction)              " line action
nmap gd <Plug>(coc-definition)              " definition
nmap gr <Plug>(coc-references)              " references

let g:which_key_map = {}
let g:which_key_map.l = {
	\ 'name' : '+lsp',
	\ 't' : ['<Plug>(coc-type-definition)'        , 'type definition'] ,
	\ 'R' : ['<Plug>(coc-rename)'                 , 'rename']          ,
	\ 'D' : ['<Plug>(coc-declaration)'            , 'declaration']     ,
	\ 'i' : ['<Plug>(coc-implementation)'         , 'implementation']  ,
	\ 'F' : ['<Plug>(coc-format)'                 , 'format']          ,
	\ 'q' : ['<Plug>(coc-fix-current)'            , 'quickfix']        ,
	\ 'l' : ['<Plug>(coc-codelens-action)'        , 'code lens']       ,
	\ 'n' : ['<Plug>(coc-diagnostic-next)'        , 'next diagnostic'] ,
	\ 'N' : ['<Plug>(coc-diagnostic-next-error)'  , 'next error']      ,
	\ }

let g:mapleader = "\<Space>"
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

call which_key#register('<Space>', "g:which_key_map")

colorscheme dracula

let g:airline_theme='deus'

luafile $HOME/.config/nvim/lua/treesitter.lua

let g:airline#extensions#tabline#enabled = 1

set nu rnu
set mouse=a

syntax enable
set backspace=indent,eol,start
