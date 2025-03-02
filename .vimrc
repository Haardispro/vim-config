" _   _ __  __ 
"| | | |  \/  |
"| |_| | |\/| |
"|  _  | |  | |
"|_| |_|_|  |_|
"
set number 

syntax on
filetype on
filetype on 
filetype indent on 
filetype plugin on 

set mouse=a 
set bg=dark
set cursorline

set splitbelow
set splitright 

set tabstop=4

set incsearch 
set hlsearch 

nnoremap <esc><esc> :silent! nohls<cr>

" NERDTree Config
" uncomment below line to open NERDTree on vim startup
" autocmd VimEnter * NERDTreeVCS
autocmd VimEnter * wincmd p
nmap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20

" COC Config 
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Shift-Tab>
      \ coc#pum#visible() ? coc#pum#next(0) :
      \ CheckBackspace() ? "\<Shift-Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<Tab>"

" Airline config 
let g:airline_powerline_fonts = 1

" FZF Config 
nnoremap <C-f> :GFiles<CR>

"Plugins 
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
colorscheme gruvbox-material
