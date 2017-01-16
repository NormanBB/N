
"常用配置


set nocompatible "不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
" 显示光标当前位置
set ruler
" 开启行号显示
set number
set shortmess=atI "启动vim时不显示援助乌干达儿童提示
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
set nowrap "不自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用
" 总是显示状态栏
set laststatus=2
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

"************配色***************


" 配色方案	
syntax enable  "开启高亮
set t_Co=256   "使用256色
let g:solarized_termtrans=1
" let g:solarized_termcolors=256
set background=dark "黑色背景
colorscheme solarized "使用solarized





