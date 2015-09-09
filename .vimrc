"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration Begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" get Vundle.vim from github first
"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Solarized 配色
Plugin 'altercation/vim-colors-solarized'

" tag 高亮
Plugin 'vim-scripts/TagHighlight'

" 配合 ctags
Plugin 'vim-scripts/taglist.vim'

" Doxygen注释
Plugin 'vim-scripts/DoxygenToolkit.vim'

" Python 自动补全
Plugin 'davidhalter/jedi-vim'

" 状态栏
Plugin 'bling/vim-airline'

" 注释
Plugin 'scrooloose/nerdcommenter'

call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Display Begin
"""""""""""""""""""""""""""""""""""""""""""""""""

" 字体
set guifont=Consolas:11

" 开启 xterm 256 色
set t_Co=256

" 开启语法高亮
syntax on

" 行号
set number

" 背景
set background=dark

" 突出显示当前行
set cursorline              

" 打开状态栏标尺
set ruler 

" 搜索高亮
set hlsearch

" 帮助文档
set helplang=cn

"
" Display End
"""""""""""""""""""""""""""""""""""""""""""""""""

"
" Tab & Indent Begin
"""""""""""""""""""""""""""""""""""""""""""""""""

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 在行和段开始处使用制表符
set smarttab

" 自动缩进
set cindent

"
" Tab & Indent End
"""""""""""""""""""""""""""""""""""""""""""""""""


" 增量搜索
set incsearch

" 搜索忽略大小写
set ignorecase

" 历史记录数
set history=1000

" 修正退格键
set backspace=indent,eol,start


" 退出提示
set confirm

" 去掉输入错误的提示声音
set noeb

" 编码
set encoding=utf-8
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 括号匹配
set showmatch

" 匹配时间(单位1/10秒)
set matchtime=1

" 完成提示选项
set completeopt=preview,menu 

" 正则表达式，除了 $ . * ^ 之外其他元字符都要加反斜杠 
set magic

" 设置CTags
set tags=./tags,tags

" 显示命令
set showcmd

"共享剪贴板  
set clipboard+=unnamed 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration Begin 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 总是显示状态栏
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '>'
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_right_sep = '<'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.branch = '$'
let g:airline_symbols.paste = 'p'
let g:airline_symbols.whitespace = '='


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration End 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
let g:solarized_termcolors=256
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist Configuration Begin 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 按照名称排序
let Tlist_Sort_Type = "name"

" 在右侧显示窗口
let Tlist_Use_Right_Window = 1

" 压缩方式
let Tlist_Compart_Format = 1

" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0

" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

let Tlist_Show_menu = 1

" 0为同时显示多个文件函数列表,1则只显示当前文件函数列表
let Tlist_Show_one_File = 1

" 如果taglist是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdCommenter Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"默认情况下 <leader> = \

"<leader>cc			注释当前行
"<leader>cn			Nested注释
"<leader>c<space>	切换选定代码行注释
"<leader>cu			取消注释
"<leader>ca			在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
"<leader>cA			在当前行尾添加注释符，并进入Insert模式

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdCommenter Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:DoxygenToolkit_authorName="Chris Cheng, gemini2015@hotmail.com"
let g:DoxygenToolkit_versionString="1.0.0"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
