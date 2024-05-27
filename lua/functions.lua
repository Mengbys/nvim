vim.api.nvim_set_keymap('n','<F2>',':call FormatCode()<CR>',{noremap=true,silent=true})

vim.cmd[[
" Code formating
" Need astyle
" Need autopep8(use pip install)
func! FormatCode()
  exec "w"
  if &filetype == 'c'
    exec "silent !astyle --style=allman -p -n %"
  elseif &filetype == 'cpp'
    exec "silent !astyle --style=allman -p -n %"
  elseif &filetype == 'python'
    exec "silent !autopep8 --in-place --aggressive --aggressive %"
  endif
  exec "e"
endfunc
]]
