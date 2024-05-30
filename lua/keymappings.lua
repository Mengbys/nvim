-- normal
vim.g.mapleader=','

vim.api.nvim_set_keymap('n' , '<c-p>'              , ':bp!<cr>'      , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-n>'              , ':bn!<cr>'      , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>d'          , ':bd<cr>'       , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-j>'              , '<c-w>j'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-k>'              , '<c-w>k'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-h>'              , '<c-w>h'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-l>'              , '<c-w>l'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-down>'           , '<c-w>J'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-up>'             , '<c-w>K'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-left>'           , '<c-w>H'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<c-right>'          , '<c-w>L'        , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>e'          , ':tabn<cr>'     , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>q'          , ':tabp<cr>'     , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>w'          , ':tabc<cr>'     , {noremap=true , silent=true})
vim.api.nvim_set_keymap('v' , '<leader>y'          , '\"+y'          , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>ay'         , 'ggVG\"+y'      , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>p'          , '\"+p'          , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>P'          , '\"+P'          , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>s'          , ':wa<cr>'       , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>cd'         , ':cd %:p:h<cr>' , {noremap=true , silent=true})


-- dashboard
vim.api.nvim_set_keymap('n' , '<leader>h'  , ':Dashboard<cr>'            , {noremap=true , silent=true})


-- fzf
vim.api.nvim_set_keymap('n' , '<leader>fm' , ':FzfLua oldfiles<CR>' , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>ff' , ':FzfLua files<CR>'    , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>fb' , ':FzfLua buffers<cr>'  , {noremap=true , silent=true})
vim.api.nvim_set_keymap('n' , '<leader>fr' , ':FzfLua live_grep<cr>'  , {noremap=true , silent=true})


-- nvim-tree
vim.api.nvim_set_keymap('n','<leader>n',':NvimTreeToggle<CR>',{noremap=true,silent=true})

-- symbols-outline
vim.api.nvim_set_keymap('n','<leader>t',':SymbolsOutline<cr>',{noremap=true,silent=true})
