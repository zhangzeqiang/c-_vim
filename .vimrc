set ts=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set cursorline " 突出显示当前行
set mouse=a
colorscheme delek
set number

syntax enable 

" pathogen
call pathogen#infect()  
syntax on  
filetype plugin indent on  

map <F1> :NERDTreeToggle<CR>
map <F2> :NERDTree<CR>
map <F3> :TlistToggle<CR>

let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "-"

:set tag=~/source/pkg/boost_1_62_0/boost/tags

let Tlist_Show_One_File=1   
let Tlist_Exit_OnlyWindow=1 
let Tlist_Use_Right_Window=1 
let Tlist_Sort_Type="name"

filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2    
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteScope = 1  
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"]"

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set autoindent " 自动缩进
set cindent " 对C语言自动缩进
set so=7 " 光标到第7行后自动滚动

" 设置编译快捷键
map <F4> :call Compile()<CR>
func! Compile()
    exec "make"
endfunc
