" Configuration file for VIM

" Vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"/iPlugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

"	" git repos on your local machine (i.e. when working on your own plugin)
"	Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}


" indentation ? 
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'Raimondi/delimitMate'

Plugin 'scrooloose/syntastic'	
" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1


Plugin 'Lokaltog/vim-distinguished'

"Plugin 'Valloric/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetsDir="snippets"
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.vim/mysnippets']

Plugin 'garbas/vim-snipmate'

Plugin 'tomtom/tlib_vim'

Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'bonsaiben/bootstrap-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" end of Vundle configuration


set nocompatible
set bs=2		" allow backspacing over everything in insert mode
set ai			" set autoindeting on
" set backup
set nobackup		" do not keep a backup file	
set history=256
set ruler		" show the cursor position all the time
set tabstop=4
set shiftwidth=4
set nowrap
set visualbell		" no bel
set background=light
"set background=dark
syntax on
set guifont=Lucida_Console
if has("gui_running")
	set lines=50 columns=120
else
endif

" for Windows - some improvments in font displaying needed 
" - there are hashes for displayed PL characters in VIM, 
"   but file content is OK
"
setglobal fileencoding=windows-1250

if has("multi_byte")
	if &termencoding == ""
		let &termencoding = &encoding
	endif
	"set encoding=windows-1250 "utf-8
	setglobal fileencoding=utf-8
	"setglobal bomb
	set fileencodings=ucs-bom,utf-8,latin1
endif

if &filetype=='pas'
	"set encoding=windows-1250
	set encoding = utf-16le
	"setglobal fileencodings=utf-16le
	set fileencoding=utf-16le
	let &termencoding = ANSI
	"setglobal encoding=utf-16le
endif

filetype indent on
set et
set sw=4
set smarttab
map <F2> :w\|!python %
set t_Co=256
set background=dark
colorscheme distinguished


" auto closing {
imap <C-c> <CR><Esc>O

