"解决win下，字符乱码问题"
if has("multi_byte") 
    " UTF-8 编码 
    set encoding=utf-8 
    set termencoding=utf-8 
    set formatoptions+=mM 
    set fencs=utf-8,gbk 
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)' 
        set ambiwidth=double 
    endif 
    if has("win32") 
        source $VIMRUNTIME/delmenu.vim 
        source $VIMRUNTIME/menu.vim 
        language messages zh_CN.utf-8 
    endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif

"显示行号
set nu

"背景色设置为暗色
colorscheme desert 

"语法高亮
syntax enable 
syntax on

"设置字体格式
set guifont=Courier\ New:h12

"设置倒数第二行显示文件名
set laststatus=2 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
"set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 

" 不要用空格代替制表符 
"set noexpandtab 

" 不要换行 
set nowrap 

" 在行和段开始处使用制表符 
set smarttab 
set nobackup

"set for Makefile
autocmd FileType makefile set noexpandtab