set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'molokai'

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'SirVer/ultisnips'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0
"basic config
syntax on
set tabstop=4
set softtabstop=4

set shiftwidth=4
set autoindent
set nu

" Backspace deletes like most programs in insert mode
set backspace=2
" " Show the cursor position all the time
set ruler
" " Display incomplete commands
set showcmd
" " Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5
"
" filetype plugin indent on
"
" " Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
"
" " Display extra whitespace
set list listchars=tab:»·,trail:·
"
" " Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
"
" " Numbers
set number
set numberwidth=5
"
set matchpairs+=<:>
set hlsearch

"Hightlight currernt line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
