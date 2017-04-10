autocmd BufWritePost *.py call Flake8()
" removes all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
