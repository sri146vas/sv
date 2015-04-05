" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

"------------------------------------------------------------
" Mapping Ctrl-Bksp, Ctrl-Del
:imap <C-BS> <C-W>
:imap <C-Del> <C-O>dw

" Mapping Ctrl-s to save
:nmap <C-S> :w<CR>
:imap <C-S> <Esc>:w<CR>a
:imap <C-S> <Esc><C-S>
:inoremap <C-S> <C-O>:update<CR>

" Mapping Ctrl-z to undo
:imap <C-z> <Esc>ui

" Mapping Ctrl-q to save and quit
:imap <C-q> <Esc>:wqa<CR>
:map <C-q> :wqa<CR>

" Mapping Ctrl-d to duplicate present line
:imap <C-d> <Esc>yypi

" Mapping Ctrl-t to toggle lines
:imap <C-t> <Esc>ddkPi

"Mapping Ctrl-C and Ctrl-V for copy and paste - clipboard
:map <C-c> "+y
:map <C-v> "+p
"------------------------------------------------------------
" Code Folding
set foldmethod=indent
set foldnestmax=5
set foldcolumn=2
set foldlevel=5

"------------------------------------------------------------
" Fonts and Colors
if has('gui_running')
  set guifont=Courier\ 10\ Pitch\ 11
endif

colorscheme desert "elflord

"------------------------------------------------------------
" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
"set hlsearch
"------------------------------------------------------------
" Usability options {{{1
"
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Allow cursor to wrap around end of line
set whichwrap+=<,>,h,l,[,]

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
"set pastetoggle=<F11>

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=3
set softtabstop=3
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
set tabstop=3
"------------------------------------------------------------

