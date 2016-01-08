"basic setting
set nocompatible            " 关闭兼容模式

filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"my Plugin here:
" original repos on github
Plugin 'kien/ctrlp.vim'
"Plugin 'sukima/xmledit'
"Plugin 'sjl/gundo.vim'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'klen/python-mode'
Plugin 'Valloric/ListToggle'
Plugin 'ervandew/supertab'
"#NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
Plugin 'The-NERD-Commenter'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
"Plugin 't9md/vim-quickhl'
" Plugin 'Lokaltog/vim-powerline'
"Plugin 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
"Plugin 'YankRing.vim'
"Plugin 'vcscommand.vim'
Plugin 'ShowPairs'
"Plugin 'SudoEdit.vim'
Plugin 'dkprice/vim-easygrep'
"Plugin 'VOoM'
"Plugin 'VimIM'
Plugin 'vim-scripts/The-NERD-tree'
"..................................
" non github repos
" Plugin 'git://git.wincent.com/command-t.git'
"......................................
call vundle#end() 
filetype plugin indent on

color desert
filetype off
"filetype indent on
set autoindent              " 自动缩进
set number              " 显示行号
syntax on

" 设置检测的文件编码
set fileencodings=utf-8,ucs-bom,gbk,gb18030,big5

" 将tab显示为4个空格宽度
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" search
set incsearch                           " 搜索即显示
set hlsearch                            " 搜索结果高亮
"set ignorecase smartcase       "
" 搜索字符串只包含小字字母时不区分大小写，否则区分

" 状态栏
set laststatus=2      " 总是显示状态栏
set statusline=[%n]\ %f%m%r%h\ \|%=\|\ %l,%c\ %p%%\ %{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ 
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue

" mouse
"set mouse=v
set ttymouse=xterm2  " 可拖动切屏大小

" 将F6映射为格式化键
" map <F6> :call FixStyle() <CR>

set tags=/home/zhengwei11/test/www/tags
" Use CTRL-Q to do what CTRL-V used to do 
"noremap <C-Q> <C-V> 

" ctrl+\垂直分屏并跳转
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" quick php comment
map <C-m> oecho '<pre>';var_dump();echo '</pre>';exit;<ESC>hhhhhhhhhhhhhhhhhhhhi
noremap <C-n> : set nu!<CR>

" 配置Syntastic支持PHP语法检查
"在打开文件的时候检查
let g:syntastic_check_on_open=1
"phpcs，tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"

let mapleader=","

" CtrlP快捷键修改
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 当前所在行显示下划线
set cursorline

" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w

" 按下 F2 调出/隐藏 NERDTree
"map  :silent! NERDTreeToggle
nnoremap <C-x> :exe 'NERDTreeToggle'<CR> 

" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
"let NERDTreeWinPos="right"

" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1

"nmap <silent> <leader>t :NERDTree<cr>
"tab切换
"nnoremap <leader>t gt  
nnoremap gr gT

