-- float terminal
require'FTerm'.setup({
  cmd = vim.o.shell,
  hl = 'NormalSB',
  border = 'shadow',
  dimensions  = {
    height = 0.8,
    width = 0.8,
  },
})

-- Example keybindings
vim.keymap.set('n', '<C-\\>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-\\>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
