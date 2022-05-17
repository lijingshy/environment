" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Jul 18
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent		" always set autoindenting on
set smartindent

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set ic              " ignorecase

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
"  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  "autocmd FileType text setlocal textwidth=78
  autocmd BufRead text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  "autocmd BufReadPost *
  "  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  "  \   exe "normal g`\"" |
  "  \ endif
  au BufReadPost * exe "normal! g`\""
endif " has("autocmd")

" Set my color scheme.
"colorscheme evening
"colorscheme desert
" colorscheme morning
" colorscheme darkblue
" Disable auto-backup.
set nobackup
" Set Tabstop.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Always enable the status line.
set laststatus=2
"set mouse=a

"set gfn=Bitstream\ Vera\ Sans\ Mono\ 10

set showmatch

set tags=tags;
"set tags+=/home/oasis/tags
"set autochdir

"set enc=utf-8
set fencs=utf-8,gbk,gb2312,gb18030,big5,cp936,utf-16

let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1

set nocp
set nu

nnoremap <C-TAB> :tabnext<CR>
nnoremap <C-S-TAB> :tabprev<CR>

"set tpm=200

"打开普通文件类型的自动缩进。 该自动缩进不如 cindent 智能， 但它可以为你编辑非 C/C++ 文件提供一定帮助。
set ai
set cino=:0g0t0(sus

set cst
set csto=1 
set nocsverb
set csverb
set et

"设置自动保存
set aw
set awa

set ws
set hls
set nocul
set is

"设置以backspace删除自动缩进的，行末回车，行首的字符，很有用
set backspace=indent,eol,start

set helplang=cn

"实现C程序的缩进(indent)
set cin 

"增强模式中的命令行自动完成操作,非常有用
set wildmenu

"设置编辑模式下状态栏标尺显示
"set ru "set ruler

"filetype plugin indent on
set fileformats=unix,dos

"for omnicppcomplete
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

filetype plugin on
                set completeopt=menu,menuone  
                let OmniCpp_MayCompleteDot=1    "打开.操作符
                let OmniCpp_MayCompleteArrow=1  "打开->操作符
                let OmniCpp_MayCompleteScope=1  "打开::操作符
                let OmniCpp_NamespaceSearch=1   "打开命名空间
                let OmniCpp_GlobalScopeSearch=1  
                let OmniCpp_DefaultNamespace=["std"]  
                let OmniCpp_ShowPrototypeInAbbr=1   "打开显示函数原型
                let OmniCpp_SelectFirstItem = 2     "自动弹出时自动跳至第一个

"for taglist
"设置ctags路径
let Tlist_Ctags_Cmd = '/usr/bin/ctags'


"启动vim后自动打开taglist窗口
let Tlist_Auto_Open = 1


"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File = 1


"taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1


"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window =1


"设置taglist窗口大小
"let Tlist_WinHeight = 100
let Tlist_WinWidth = 40


"设置taglist打开关闭的快捷键F8
noremap <F8> :TlistToggle<CR>

"更新ctags标签文件快捷键设置
"noremap <F6> :!ctags -R<CR>
noremap <F6> :!tag<CR>
  
"设置单击tab就调转到tag定义的位置
let Tlist_Use_SingleClick=1

"for go
  if exists("g:did_load_filetypes")
    filetype off
    filetype plugin indent off
  endif
  set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of: go env GOROOT
  filetype plugin indent on
  syntax on

