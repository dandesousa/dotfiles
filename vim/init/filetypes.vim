" don't relay on context for md markdown extensions
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.sls set filetype=yaml
au BufNewFile,BufRead *.tmpl,*.j2 set ft=jinja 
