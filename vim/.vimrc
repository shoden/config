runtime! debian.vim " Don't remove this line!

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Load indentation rules according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" General options
set showcmd	    	" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch		" Highlight search matches
set autowrite		" Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)
set number          " Show line numbers
set expandtab       " ...
set tabstop=2	    " Indentation
set shiftwidth=2	" Indentation
set textwidth=80    " Line width
set history=1000    " History
set undolevels=1000 " undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*~
set nobackup        " Don't create backup files
set noswapfile      " Don't create swap files
"set background=dark " Dark background
set splitright     " split window to the right

" Color scheme
if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

" Syntax highlighting
if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" KEYBINDINGS
" New tab
nnoremap <silent> <F2> :tabe<CR>:E<CR>
" Toggle between .cpp and .h
nnoremap <silent> <F3> :A<CR>
" Toggle List
nnoremap <silent> <F9> :TlistToggle<CR>
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Toglle paste mode
set pastetoggle=<F12>
" sudo
cmap w!! w !sudo tee % >/dev/null

" Nerd tree
nmap <silent> <c-n> :NERDTreeToggle<CR>
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>
" nnoremap <esc> :noh<return><esc>

" Pathogen 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
