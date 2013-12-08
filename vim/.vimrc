filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on

set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [%l,%v][%p%%]\ [LEN=%L]
set laststatus=2
set scrolloff=3
set wildmenu
set wildmode=list:longest
set visualbell
set nu
set nocp
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
"屏幕显示的编码
set encoding=utf-8
"正在编辑的文件的编码，决定新文件的编码。如果为空，则与coding相同,如果不同，需要在保存和读取时做二者之间的转换
set fileencoding=utf-8
"尝试的编码表，如果没有发生错误，就设置当前的fileencoding为与该项相同的值,如果均失败，fileencoding为空
set fileencodings=ucs-bom,utf-8,gb18030,cp936,big5,euc-jp,euc-kr,latin1
set sw=4
set ts=4
set sts=4

autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType php setlocal et sta sw=4 sts=4
autocmd FileType sh setlocal et sta sw=4 sts=4

set ignorecase 
set smartcase

set	incsearch 
set showmatch
set hlsearch  "高亮显示

set shell=bash\ --login
colorscheme evening

set nowrap

set tags+=/home/work/nifeng/tags/tags_sitemap_foundation_protected
set tags+=/home/work/nifeng/tags/tags_yii

"使用perl/python regex format
nnoremap / /\v
vnoremap / /\v

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap jj <ESC>

nnoremap <tab> %
vnoremap <tab> %

let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.vimrc<cr>
nnoremap <leader>w <C-w>v<C-w>l

nmap <leader>tb :TagbarToggle<CR>   "设置快捷键
let g:tagbar_width = 40       "设置宽度，默认为40
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开tagbar
let g:tagbar_left = 1         "在左侧
"let g:tagbar_right = 1        "在右侧

"autocmd vimenter * NERDTree
nmap <leader>nt :NERDTreeToggle<CR>
