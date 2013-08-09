"" Custom Vim settings

"Open Vim at the last known cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Have Vim load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

"Enable plugins
set nocp 
filetype plugin on 

:syntax on         " Turn on syntax highlighting
set showcmd        " Show (partial) command in status line.
set showmatch      " Show matching brackets.
set autowrite      " Automatically save before commands like :next and :make
set hidden         " Hide buffers when they are abandoned
"set mouse=a        " Enable mouse usage (all modes)

"Use j and k to move by rows instead of by lines
nnoremap j gj
nnoremap k gk

"Searching
:set incsearch     "Turn on incremental searching
:set ignorecase    "Ignore case when searching
:set smartcase     "Ignore case when typing lowercase, otherwise match case
:set scrolloff=2   "Keep at least 2 lines of code before and after the cursor
:set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Indentation
:set autoindent    "Automatic line indentation
:set tabstop=4     "Set tab character to 4 characters
:set expandtab     "Turn tabs into whitespace
:set shiftwidth=4  "Indent width for autoindent

"Shortcuts
:nmap <F11> 1G=G
:imap <F11> <ESC>1G=Ga
:nnoremap <F8> :setl noai nocin nosi inde=<CR>
:nmap <F12> :setl expandtab | retab 4

"Pasting mode
:nnoremap <F2> :set invpaste paste?<CR>
:set pastetoggle=<F2>
:set showmode

"Backspace can delete
:set bs=2

"Don't highlight brace/bracket pairs
:set noshowmatch

"File handling
:set nobackup      "Do not litter my working dir with backup files

"Line numbers
:set number        "Turn on line numbering

"Line wrapping settings
:set wrap          "Turn on line wrapping
:set textwidth=0 wrapmargin=0
:set linebreak     "Do not break words

"Color scheme
:colorscheme desert

"Tab completion should mimic behaviour as in shell.
"First <TAB> press completes to longest common string,
"second <TAB> press lists files beginning with current string
set wildmode=longest,list

"Abbreviations
:ab #b /********************************************************************* 
:ab #e *********************************************************************/
:ab #l /*------------------------------------------------------------------*/

:ab abREADME 
\<F2>/*********************************************************************
\<CR> PROGRAM TITLE
\<CR>
\<CR> Author:   Mikhail Klassen
\<CR>           Dept. of Physics & Astronomy, McMaster University
\<CR> E-mail:   klassm@mcmaster.ca
\<CR> Created:  dd / MMMM / YYYY
\<CR>
\<CR> Description:
\<CR>
\<CR> 	Block description text.
\<CR> 
\<CR>*********************************************************************/<F2>

:ab pyHEADER 
\<F2>#!/usr/bin/env python
\<CR>'''
\<CR>PROGRAM TITLE
\<CR>
\<CR>Description:
\<CR>
\<CR>    Block description text.
\<CR>
\<CR>Usage:
\<CR>
\<CR>    ./program.py -flags
\<CR>
\<CR>Author:   Mikhail Klassen
\<CR>          Dept. of Physics & Astronomy, McMaster University
\<CR>E-mail:   klassm@mcmaster.ca
\<CR>Created:  dd / MMMM / YYYY
\<CR>'''<F2>
