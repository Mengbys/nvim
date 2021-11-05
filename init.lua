require('settings')
require('plugins')
require('keymappings')
require('colorscheme')
require('plugin_airline')
require('plugin_lspconfig')
require('plugin_nvim_cmp')
require('plugin_nerdtree')
require('plugin_symbols_outline')
require('plugin_easymotion')
require('plugin_neoscroll')
vim.cmd[[source C:\Users\12048\AppData\Local\nvim\colorscheme.vim]]
vim.cmd[[source C:\Users\12048\AppData\Local\nvim\plugin_tabular.vim]]


-- some plugin settings
-- auto-pairs
vim.g.AutoPairsFlyMode=1
-- clever-f
vim.g.clever_f_across_no_line=1
-- ultisnips
vim.g.UltiSnipsExpandTrigger       = "<c-x>"
vim.g.UltiSnipsJumpForwardTrigger  = "<c-b>"
vim.g.UltiSnipsJumpBackwardTrigger = "<c-z>"
-- vim.g.UltiSnipsSnippetDirectories  = ["UltiSnips", "mycoolsnippets"]
-- goyo
vim.api.nvim_set_keymap('n','gy',':Goyo<CR>',{noremap=true,silent=true})
