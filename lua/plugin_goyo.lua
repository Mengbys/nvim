vim.cmd[[
function! Goyo_enter()
    set nocursorline
    set fillchars+=eob:\ 
endfunction

autocmd! user GoyoEnter nested call Goyo_enter()
]]

vim.api.nvim_set_keymap('n','gy',':Goyo<CR>',{noremap=true,silent=true})
