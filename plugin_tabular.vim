func! CallTabular()
  let x=nr2char(getchar())
  exec "Tabularize /".x
endfunc
nnoremap <silent><leader>/ :call CallTabular()<cr>
nnoremap <silent><leader>/// :Tab /\/\/<cr>

