-- When you change to other platform, you need to change
-- the path setting in "init.lua, settings.lua, plugins.lua".

require('settings')
require('plugins')
require('keymappings')
require('functions')
require('colorscheme')
-- require('plugin_airline')
require('plugin_lualine')
require('plugin_bufferline')
require('plugin_lspconfig')
require('plugin_nvim_cmp')
require('plugin_nvim_tree')
require('plugin_nvim_treesitter')
require('plugin_symbols_outline')
require('plugin_easymotion')
require('plugin_neoscroll')
require('plugin_dashboard')
require('plugin_tabular')
require('plugin_goyo')
require('plugin_fzf_vim')
require('plugin_fterm')

-- some plugin settings
-- auto-pairs
vim.g.AutoPairsFlyMode=1

-- clever-f
vim.g.clever_f_across_no_line=1

-- ultisnips
-- vim.g.UltiSnipsExpandTrigger       = "<c-x>"
-- vim.g.UltiSnipsJumpForwardTrigger  = "<c-b>"
-- vim.g.UltiSnipsJumpBackwardTrigger = "<c-z>"
-- vim.g.UltiSnipsSnippetDirectories  = {"UltiSnips", "mycoolsnippets"}

-- vsnip
vim.g.vsnip_snippet_dir = 'C:/Users/12048/AppData/Local/nvim/vsnip'

-- glow
vim.g.glow_binary_path='D:/glow/'
vim.api.nvim_set_keymap('n','gl',':Glow<CR>',{noremap=true,silent=true})

-- vim-xkbswitch
vim.g.XkbSwitchEnabled = 1
vim.g.XkbSwitchLib = 'D:/Neovim/bin/libxkbswitch64.dll' 
vim.g.XkbSwitchNLayout = 'us'
vim.g.XkbSwitchILayout = 'cn'
vim.g["airline#extensions#xkblayout#enabled"] = 0
