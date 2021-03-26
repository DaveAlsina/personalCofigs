"------------------------------------------------------------------
"http://vimdoc.sourceforge.net/htmldoc/autocmd.html#autocmd-buflocal
"------------------------------------------------------------------

syntax on

set noerrorbells 
set tabstop=4 softtabstop=4
set shiftwidth=4 
set laststatus=2  " always display the status line

set smartindent

"set line number 
set number relativenumber


"case sensitive searching
set smartcase 

set noswapfile
set number

"muestra automáticamente el menú de auto completado cuando se escribe en vim 
"https://youtu.be/2f8h45YR494
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set completeopt=menuone,longest
set shortmess+=c

"https://vim.fandom.com/wiki/C%2B%2B_code_completion
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
    autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
  augroup END
endif


call plug#begin('~/.vim/plugged')

Plug 'lyuts/vim-rtags'
Plug 'scrooloose/nerdtree'
Plug 'vim-utils/vim-man'
Plug 'vim-scripts/AutoComplPop'
"Plug 'ycm-core/YouCompleteMe'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'vim-latex/vim-latex'

call plug#end()


colorscheme gruvbox
set bg=dark
"hi Normal ctermbg=None

"------------------
"Definiciones
"------------------

let mapleader = " "

"------------------
"Remaps
"------------------
map <leader>h :wincmd h <CR>
map <leader>l :wincmd l <CR>
map <leader>k :wincmd k <CR>
map <leader>j :wincmd j <CR>

nmap <leader>tp :NERDTreeToggle<Enter>
nmap <leader>u :UndotreeShow<CR>

nmap <silent> <leader>+ :vertical resize +5<CR> 
nmap <silent> <leader>- :vertical resize -5<CR> 

"-------------------
"Python3 Remaps
"-------------------

autocmd FileType python nmap <buffer> <leader>r : w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"-------------------
"LATEX
"-------------------

"automatically compile and refresh xdvi whenever you write the current buffer 
au BufWritePost *.tex silent call Tex_RunLaTeX()
au BufWritePost *.tex silent !pkill -USR1 xdvi.bin

"Start a preview
autocmd FileType tex nmap <leader>r :LLPStartPreview <CR>		








