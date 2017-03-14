" Daniel DeSousa's vimrc.
" Solves the chicken and the egg problem thanks to
" http://gmarik.info/blog/2011/05/17/chicken-or-egg-dilemma

" Load the bundles by default
runtime! bundles.vim

"
" All other non-filetype settings follow below
"

" Enables syntax highlighting
syntax on
color desert-warm-256

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden
set nowrap

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" set confirm
set cmdheight=1

" Display line numbers on the left
set number

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Creates a backup directory in the vim folder that stores the last saved copy
" of any editted file. This acts as a form of disaster recovery.
let preferred_dir = expand("~/.vim/backup")
   if !isdirectory(preferred_dir)
      if exists("*mkdir")
         echo "Creating preferred backup file location: " . preferred_dir
         call mkdir(preferred_dir,"p",0700)
      else
         echo "Cannot create directory: " . preferred_dir . " because the mkdir function does not exist"
      endif
   endif
set backup
set writebackup
set backupdir=~/.vim/backup

" 7.4 syntax highlighting is slow, this improves it by going back to old
" regexengine
set regexpengine=1

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Tab spacing set to 4 by default
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set tabstop=4

" Explicitly set the filetypes for certain file extensions
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.sls set filetype=yaml
au BufNewFile,BufRead *.tmpl,*.j2 set ft=jinja 


"
" Key Bindings
"
"
map <C-n> :NERDTreeToggle<CR>
