set nocompatible
filetype off

"let g:vundle_default_git_proto = 'http'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" manage vundle -- required
Plugin 'gmarik/Vundle.vim'

" ADD Plugins below
Plugin 'vim-neatstatus'
Plugin 'a.vim'
Plugin 'DoxygenToolkit.vim'
Plugin 'Markdown-syntax'
Plugin 'MatchTag'
Plugin 'minibufexpl.vim'
Plugin 'surround.vim'
Plugin 'TaskList.vim'
Plugin 'Jinja'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'klen/python-mode'
Plugin 'Yggdroot/indentLine' 
Plugin 'davidhalter/jedi-vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-unimpaired'

" colors
Plugin 'desert-warm-256'

call vundle#end()
filetype plugin indent on
