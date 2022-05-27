set nocompatible
filetype off

call plug#begin('~/.vim/plugged')


Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'
Plug 'vim-airline/vim-airline-themes'

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

colorscheme dracula

let g:airline_theme='deus'


let g:airline#extensions#tabline#enabled = 1

set nu rnu
set mouse=a

syntax enable
set backspace=indent,eol,start
