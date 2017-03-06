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
colorscheme evening
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
"set mouse=all 

"set gfn=Bitstream\ Vera\ Sans\ Mono\ 10

set showmatch

set tags=tags;
set tags+=/home/lijing/work/New/empyrean/share/oa-dm4/oa-all-22.43p029/oa/src/tags
set tags+=/home/lijing/work/New/empyrean/share/qt/qt-everywhere-opensource-src-4.8.7/src/tags
set tags+=/home/lijing/work/New/empyrean_dman/share/svn/subversion-1.9.3/subversion/tags
set tags+=/home/lijing/work/New/empyrean_dman/share/apr/apr-1.5.2/tags
set tags+=/home/lijing/work/New/empyrean_dman/share/apr-util/apr-util-1.5.4/tags
"set autochdir

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

filetype plugin indent on
set fileformats=unix,dos

"for go
  if exists("g:did_load_filetypes")
    filetype off
    filetype plugin indent off
  endif
  set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of: go env GOROOT
  filetype plugin indent on
  syntax on

