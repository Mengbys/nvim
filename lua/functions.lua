vim.api.nvim_set_keymap('n','<F2>',':call FormatCode()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F5>',':call FunctionF5()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F6>',':call FunctionF6()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F8>',':call FunctionF8()<CR>',{noremap=true,silent=true})

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

" Compile C/C++ files
" Run python file
" Open markdown preview
" % is filename, %< is file name without suffix
func FunctionF5()
  exec "w"
  if(&filetype=='c' || &filetype=='cpp')
    exec "!g++ % -o %<"
  elseif(&filetype=='python')
    exec "!python %"
  elseif(&filetype=='markdown')
    exec "MarkdownPreviewToggle"
  endif
endfunc

" Run the executable file from C/C++ files
func FunctionF6()
  exec "w"
  if(&filetype=='c' || &filetype=='cpp')
    exec "!%<"
  endif
endfunc

" Compile then run(serve for C/C++ files)
func FunctionF8()
  exec "w"
  if(&filetype=='c' || &filetype=='cpp')
    exec "!g++ % -o %< && %<"
  endif
endfunc
]]
