if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set nocompatible
set encoding=utf-8
set hidden
set synmaxcol=2048                " Don't syntax highlight super-long lines (for performance) "

set backspace=indent,eol,start    " backspace behaves 'normally' "

set shiftwidth=4                  " [2] "
set tabstop=4                     " tab is 4 spaces [2] "
set noexpandtab                   " use tabs "
set clipboard=unnamedplus
set mouse=a

syntax on

set dir=~/.vim/swap//,/var/tmp//

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set textwidth=0
set nolinebreak
set nowrap

set visualbell
set t_vb=

set virtualedit=all               " Allow the cursor to go in to 'invalid' places "

set hlsearch                      " highlight search terms "
set incsearch                     " search incrementally "
set ignorecase                    " ignore case in searches... "
set smartcase                     " ...but not really. Case sensitive if capitals are included. "
set wrapscan                      " Set the search scan to wrap around the file "

set laststatus=2                  " always display a status line "

set relativenumber
set number                        " show line numbers "
set numberwidth=5
set ruler                         " display coordinates in status bar "
set showcmd                       " display unfinished commands "
set showmatch                     " show matching bracket briefly jump "
set showmode                      " display the current mode in the status bar "
"set title                         " show file in titlebar "
set scrolloff=3                   " When the page starts to scroll, keep the cursor 3 lines from top/bottom "
set cmdheight=1                   " Make command line two lines high "
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.swp,*.bak,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

filetype plugin on
colorscheme darkmate

let &titleold=getcwd()
