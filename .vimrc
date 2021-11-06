" 不与 vi 兼容
set nocompatible

" 文件更改后自动 reload
set autoread

" 覆盖文件时不备份
set nobackup

" 不创建交换文件
set noswapfile

" 默认寄存器使用系统剪贴板
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" 错误时不响起提示音不闪烁屏幕
set noeb vb t_vb=

" 内部字符编码
set encoding=utf-8

" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full

" 显示光标所在位置的行号和列号。如果还有空间，在最右端显示文本在文件中的相对位置。
set ruler

" 语法高亮
syntax enable

" 显示行号
set number

" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber

" 超过窗口宽度的行不自动回绕显示
set nowrap

" 在屏幕最后一行显示 (部分的) 命令
set showcmd

" 在插入、替换和可视模式里，在最后一行提供消息
set showmode

" 将搜索结果高亮显示
set hlsearch

" 根据已经在查找域中输入的文本，预览第一处匹配目标
set incsearch

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

" 若搜索中包含大写，则区分大小写，否则不区分大小写
set ignorecase smartcase

" 自动缩进
filetype indent on

" 执行普通模式下的缩进操作 ( << 和 >> 命令 ) 时缩进的列数
set shiftwidth=4

" Tab 字符的显示宽度
set tabstop=4

" 输入Tab字符时，自动替换成空格
set expandtab

" 上一选项开启时，Tab 转换为多少个空格。softtabstop的值为负数，会使用shiftwidth的值，两者保持一致，方便统一缩进
set softtabstop=-1

" 自动插入成对括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ) <RIGHT>
inoremap ] <RIGHT>
inoremap } <RIGHT>