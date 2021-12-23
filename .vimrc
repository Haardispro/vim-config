"My vimrc. This is not open source yet but I will get it open sourced
"
" _   _ __  __ 
"| | | |  \/  |
"| |_| | |\/| |
"|  _  | |  | |
"|_| |_|_|  |_|
"
set number
set shell=/usr/bin/fish
"syntax on
"packadd! dracula
syntax on 
set bg=dark
set cursorline
set splitbelow
"terminal
set mouse=a
let g:auto_save = 1
autocmd TextChanged,TextChangedI <buffer> silent write
"autocmd VimEnter * NERDTree
autocmd BufRead,BufNewFile * start
" Map Ctrl-Backspace to delete the previous word in insert mode.
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

autocmd VimEnter * NERDTreeVCS
autocmd VimEnter * wincmd p
nmap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20

let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ ]
source $HOME/.config/nvim/plug-config/coc.vim

"Plugins 
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug '907th/vim-auto-save'
Plug 'townk/vim-autoclose'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/Conque-Shell'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'rhysd/open-pdf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/tomorrow-theme'
call plug#end()
colorscheme gruvbox 
