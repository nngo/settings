" Vim resource configuration / custom settings
" Global system-wide for all users are either at /etc/vim/vimrc or /etc/vimrc

" Use Vim defaults (much better!)
set nocompatible

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
" For plug-ins to load correctly
filetype plugin indent on


"""" Display settings """"

" set colorscheme to dark background
" see /usr/share/vim/vim74/colors/*.vim for options
" or in vim use tab complete or ctrl-d to get a list, e.g
" :colo[rscheme] ctrl+d
" blue       default    desert     evening    morning    pablo      ron        slate      zellner
" darkblue   delek      elflord    koehler    murphy     peachpuff  shine      torte
colorscheme torte
" alternative way to use a dark background
" set background=dark

" show the cursor position all the time
set ruler

" Show matching brackets
set showmatch

" turn on line numbers
set number

" highlight current line
set cursorline

" always show statusline (even with only single window)
set laststatus=2

" Display different types of white spaces.
set list
" enter middle-dot '·' via ctrl+k then .M
" enter the right-angle-quote '»' via ctrl+k then >>
" enter the pilcrow mark '¶' via ctrl+k then PI
set listchars=tab:»·,trail:•,extends:#,nbsp:.
	" two tab before comment with trailing tabs (2) and spaces(2)		  

"""" Tab settings """"

" number of spaces when hitting tab key when editing
" and the number of spaces that are removed when you backspace
set softtabstop=2

" turns tab into spaces
"set expandtab

" copy indent from current line when starting a new line
"set autoindent


" even better autoindent (e.g. add indent after '{')
"set smartindent


"""" Search settings """"

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" References:
" * A Good Vimrc
"   https://dougblack.io/words/a-good-vimrc.html
" * Top 50 Vim Configuration Options
"   https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
" * Introduction To Vim Customization
"   https://www.linode.com/docs/tools-reference/tools/introduction-to-vim-customization/
