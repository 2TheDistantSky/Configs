" 基础设置********************************************************************************************************

" 不与 vi 兼容
set nocompatible

" 文件更改后自动 reload
set autoread

" 覆盖文件时不备份
set nobackup

" 错误时不响起提示音
set noerrorbells

" 按键序列超时时间
set timeoutlen = 500

" ********** 编码设置

" 内部字符编码
set encoding=utf-8

" 终端字符编码
set termencoding=utf-8

" 参与自动检测换行符格式类型的备选列表
set fileformats=unix,dos,mac

" 检测文件编码备选字符编码列表
set fileencodings=ucs-bom,utf-8,gb18030,gbk,gb2312,big5,euc-jp,euc-kr,latin1,cp936

" 在任何值高于255的多字节字符上分行
set formatoptions+=m

" 在连接行时不要在两个多字节字符之间插入空格
set formatoptions+=B

" 界面设置********************************************************************************************************

" 显示光标所在位置的行号和列号。如果还有空间，在最右端显示文本在文件中的相对位置。
set ruler

" 语法高亮
syntax enable

" 显示行号
set number

" 超过窗口宽度的行不自动回绕显示
set nowrap

" 在屏幕最后一行显示 (部分的) 命令
set showcmd

“ 在插入、替换和可视模式里，在最后一行提供消息
set showmode

" 插入括号时短暂地跳转到与之匹配的对应括号
set showmatch

" 上一选项停留的时间
set matchtime=2

" 查找设置********************************************************************************************************

" 将搜索结果高亮显示
set hlsearch

" 根据已经在查找域中输入的文本，预览第一处匹配目标
set incsearch

" 若搜索中包含大写，则区分大小写，否则不区分大小写
set ignorecase smartcase

" 制表符与缩进设置********************************************************************************************************

“ 在插入模式下按下 Tab 键时，实际输入的都是空格
set expandtab

“ 插入 Tab 时使用 shiftwidth
set smarttab

“ 缩进列数对齐到 shiftwidth 值的整数倍
set shiftround

“ autoindent 设置新增加的行和前一行具有相同的缩进形式
set autoindent

“ smartindent 设置新增行时进行”智能”缩进
set smartindent 

" 执行普通模式下的缩进操作 ( << 和 >> 命令 ) 时缩进的列数
set shiftwidth=4

" 按下 Tab 键时，缩进的空格个数
set tabstop=4

" insert mode tab and backspace use 4 spaces
set softtabstop=4

" 光标设置********************************************************************************************************

" 高亮显示光标所在屏幕行
set cursorline

" 高亮显示光标所在列
set cursorcolumn


" 文件类型设置********************************************************************************************************

“ 文件类型检测功能开关
filetype on

“ 打开加载文件类型插件功能
filetype plugin on

“ 为不同类型的文件定义不同的缩进格式
filetype indent on

autocmd BufRead,BufNew *.md,*.mkd,*.markdown set filetype=markdown.mkd

“ 新建后缀为 .sh、.py 的文件时，自动执行 AutoSetFileHead 函数
autocmd BufNewFile *.sh,*.py exec \":call AutoSetFileHead()\"
function! AutoSetFileHead()
    " .sh "
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif                                                                                                                                                  
         
    " python "     
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")                                                                                                                                      
    let c = col(".")
    %s/\s\+$//e     
    call cursor(l, c)
endfun

" 按键映射设置********************************************************************************************************

“ jk 映射为 ESC
imap jk <ESC>

“ 命令行模式下按 <Ctrl> a 移动光标到最前面
cnoremap <C-a> <Home>

“ 命令行模式下按 <Ctrl> e 移动光标到最后面
cnoremap <C-e> <End>

" 空格键向上滚屏 光标不变
nnoremap <SPACE> 2<C-e>
noremap <C-j> 3<C-e>
noremap <C-k> 3<C-y>

" ctrl+h l 分别在插入模式下左右移动
imap <C-h> <ESC>i
imap <C-l> <ESC>la