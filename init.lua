-- When you change to other platform, you need to change
-- the path setting in "init.lua, settings.lua, plugins.lua".

require('plugins')
require('impatient')
require('settings')
require('keymappings')
require('functions')
require('colorscheme')
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
-- require('plugin_fzf_lua')
require('plugin_fzf_vim')
require('plugin_fterm')

-- re: setting
vim.o.laststatus = 3

-- some plugin settings
-- auto-pairs
vim.g.AutoPairsFlyMode=1

-- clever-f
vim.g.clever_f_across_no_line=1

-- vsnip
vim.g.vsnip_snippet_dir = 'C:/Users/12048/AppData/Local/nvim/vsnip'

-- glow
vim.g.glow_binary_path='D:/glow/'
vim.api.nvim_set_keymap('n','gl',':Glow<CR>',{noremap=true,silent=true})

-- markdown preview
vim.g.mkdp_browser = 'C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe'
vim.g.mkpd_port = '20000'

