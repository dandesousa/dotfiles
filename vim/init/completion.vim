" completion remaps for Ctrl+Space, smarter completion, enter remap in menu
let g:AutoComplPop_CompleteoptPreview = 1

" when I add preview it causes the menu to not appear sometimes
set completeopt=longest,menuone
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Better command-line completion
set wildmenu
