set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'molokai'
Plugin 'tagbar'

"for vim 7+
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ctags.vim'
Plugin 'bling/vim-airline'

"Plugin 'SirVer/ultisnips'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" Restore last edit pos
autocmd BufReadPost *
      \ if line("'\"")>0&&line("'\"")<=line("$") |
      \ exe "normal g'\"" |
      \ endif
colorscheme molokai
"basic config
syntax on
set tabstop=4
set softtabstop=4

set shiftwidth=4
set autoindent
set nu

"GoInstallBinaries

" Backspace deletes like most programs in insert mode
set backspace=2
" " Show the cursor position all the time
set ruler
" " Display incomplete commands
set showcmd
" " Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5
"
"
 filetype plugin indent on
"
" " Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
"
" " Display extra whitespace
"saet list listchars=tab:»·,trail:·
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


let NERDChristmasTree=0
let NERDTreeWinSize=40
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
autocmd vimenter * if !argc() | NERDTree | endif " Automatically open a NERDTree if no files where specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if the only window left open is a NERDTree
nmap <F5> :NERDTreeToggle<cr>
" ctags
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28                    "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1            "在右侧窗口中显示taglist窗口
let Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口
" vim-airline
set laststatus=2
" gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
