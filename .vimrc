"语法高亮
set term=ansi
syntax on
syntax enable


"插件配置
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype off
filetype plugin on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif

set shortmess=atI "启动vim时不显示援助乌干达儿童提示
autocmd bufread,bufRead *.md,*.mkd,*.markdown set filetype=markdown

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 配色方案 
colorscheme solarized
let g:rehash256 = 1
set background=dark
set t_Co=256
set nocompatible "不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
set nowrap "不自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用
set smartindent 
set foldenable 

set nowrap
" 自适应不同语言的智能缩进
 filetype indent on
" 将制表符扩展为空格
 set expandtab
"  设置编辑时制表符占用空格
 set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
set smarttab
set autoindent
" 关闭右侧滚动条
set guioptions-=r

let g:solarized_termtrans=1
set wildmenu 
set ignorecase
let g:solarized_termcolors=256

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'   "youcompleteme 配置




