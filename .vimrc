set cindent
autocmd FileType python setlocal foldmethod=indent smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class
syntax on
"filetype plugin indent on
au VimEnter * setlocal spell spelllang=en_ca " spell check on
set autochdir " automatically cd into file directory
set background=dark "change background?
set ruler " show line number
set smarttab " tab and backspace are smart
set undolevels=100000 " set undos
set showcmd " shows what you are typing as a command
set number " line numbers?
set hlsearch " highlight things found with search
" remap jj to escape because jj never gets typed?
inoremap jj <Esc>
nnoremap JJJJ <Nop>
set clipboard=unnamed

hi SpellBad cterm=underline,bold ctermbg=none  " changes how spell check highlights bad words
:map <F5> :setlocal spell! spelllang=en_ca<CR>  " shortcut to turn on spell check


" colorscheme solarized 
au BufRead,BufNewFile *.fountain set filetype=fountain
set splitbelow " make horizontal splits come in below
set splitright " make vertical split scome in to the right
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set t_Co=256 " set term colour to 256 colours instead of 16
set term=xterm-256color
set wrap linebreak nolist " soft wrap line text
set virtualedit=onemore " allow cursor beyond last character

set scrolloff=2 " start scrolling earlier

set incsearch " fuzzy search
set ignorecase " case insensitive search

set cursorline " Shows the line that the cursor is on
autocmd InsertEnter * set nocursorline " turn off cursor line in insert mode
autocmd InsertLeave * set cursorline " turn cursor line back on leaving insert mode


" Relative line numbering
" CTRL - n to activate


function! NumberToggle()
 if(&relativenumber == 1)
  set number
 else
  set relativenumber
 endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

