vim.api.nvim_set_keymap(''  , ';;' , '<Plug>(easymotion-prefix)'    , {silent=true})
-- vim.api.nvim_set_keymap(''  , '/'  , '<Plug>(easymotion-sn)'        , {silent=true})
-- vim.api.nvim_set_keymap('o' , '/'  , '<Plug>(easymotion-tn)'        , {silent=true})
vim.api.nvim_set_keymap(''  , ';w' , '<Plug>(easymotion-bd-w)'      , {silent=true})
vim.api.nvim_set_keymap('n' , ';w' , '<Plug>(easymotion-overwin-w)' , {silent=true})
vim.api.nvim_set_keymap(''  , ';e' , '<Plug>(easymotion-bd-e)'      , {silent=true})
vim.api.nvim_set_keymap(''  , ';f' , '<Plug>(easymotion-bd-f)'      , {silent=true})
vim.api.nvim_set_keymap('n' , ';f' , '<Plug>(easymotion-overwin-f)' , {silent=true})
vim.api.nvim_set_keymap(''  , ';j' , '<Plug>(easymotion-bd-jk)'     , {silent=true})

