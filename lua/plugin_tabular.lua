vim.cmd[[
func! CallTabular()
  let x=nr2char(getchar())
  exec "Tabularize /".x
endfunc
]]
vim.api.nvim_set_keymap('n','<leader>/',':call CallTabular()<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>///',':Tabularize /\\/\\/<cr>',{noremap=true,silent=true})
