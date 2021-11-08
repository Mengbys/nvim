require('settings')
require('plugins')
require('keymappings')
require('colorscheme')
require('plugin_airline')
require('plugin_lspconfig')
require('plugin_nvim_cmp')
require('plugin_nvim_tree')
require('plugin_symbols_outline')
require('plugin_easymotion')
require('plugin_neoscroll')
require('plugin_dashboard')
require('plugin_tabular')
require('plugin_goyo')


-- some plugin settings
-- auto-pairs
vim.g.AutoPairsFlyMode=1
-- clever-f
vim.g.clever_f_across_no_line=1
-- ultisnips
vim.g.UltiSnipsExpandTrigger       = "<c-x>"
vim.g.UltiSnipsJumpForwardTrigger  = "<c-b>"
vim.g.UltiSnipsJumpBackwardTrigger = "<c-z>"
vim.g.UltiSnipsSnippetDirectories  = {"UltiSnips", "mycoolsnippets"}
-- fzf
vim.g.fzf_buffers_jump = 1
vim.g.fzf_preview_window = {'right:50%:hidden','ctrl-/'}
-- vim.g.fzf_preview_window = {}



-- other auto commands
vim.cmd[[
autocmd filetype markdown,text setlocal textwidth=78
autocmd filetype help,vim-plug,startuptime nnoremap <silent><buffer> q :exit<CR>
]]
