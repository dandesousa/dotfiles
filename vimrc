" Dan De Sousa's vimrc.
" Solves the chicken and the egg problem thanks to
" http://gmarik.info/blog/2011/05/17/chicken-or-egg-dilemma

" Load the bundles by default
runtime! bundles.vim

" Load the rest of the files
runtime! init/**.vim
