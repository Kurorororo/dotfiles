augroup filetypedetect
  au BufRead, BufNewFile *.py setfiletype python
  au BufNewFile,BufRead *.cu set ft=cpp
augroup END
