vim.o.encoding       = 'utf-8'
vim.o.fileencoding   = 'utf-8'
vim.o.fileencodings  = 'utf-8,ucs-bom,gb18030,gbk,gb2312,cp936'
vim.o.tabstop        = 4
vim.o.softtabstop    = 4
vim.o.shiftwidth     = 4
vim.o.smarttab       = true
vim.o.expandtab      = true
vim.o.number         = true
vim.o.relativenumber = true
vim.o.cursorline     = true
vim.o.background     = 'dark'
vim.o.autoread       = true
vim.o.autoindent     = true
vim.o.smartindent    = true
vim.o.compatible     = false
vim.o.ignorecase     = true
vim.o.smartcase      = true
vim.o.incsearch      = true
vim.o.wrap           = false
vim.o.undofile       = false
vim.o.backup         = false
vim.o.swapfile       = false
vim.o.hls            = true
vim.o.spr            = true
vim.o.sb             = true
vim.o.signcolumn     = 'number'
vim.o.whichwrap      = '<,>,[,]'
vim.o.laststatus     = 3
vim.o.showtabline    = 1
vim.o.cmdheight      = 1
vim.o.linespace      = 0
vim.o.wildmenu       = true
vim.o.termguicolors  = true
vim.o.scrolloff      = 5
vim.o.mouse          = 'a'
vim.o.ruler          = false



vim.api.nvim_create_autocmd('FileType', {
  pattern='help',
  callback=function()
    vim.api.nvim_buf_set_keymap(0,'n','q',':bd!<CR>',{noremap=true, silent=true})
  end
})

-- file type according indentation
vim.api.nvim_create_autocmd('FileType', {
  pattern='vim,sh,lua,yaml',
  callback=function()
    vim.bo.tabstop=2
    vim.bo.shiftwidth=2
    vim.bo.softtabstop=2
  end
})

vim.cmd[[
" When open a file, always jump to the last cursor position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" Session save and load
set sessionoptions-=blank
if has('win32')
  command QS mks! ~/AppData/Local/nvim/tmp/session0.vim | wqa
  command LS so ~/AppData/Local/nvim/tmp/session0.vim
else
  command QS mks! ~/.config/nvim/tmp/session0.vim | wqa
  command LS so ~/.config/nvim/tmp/session0.vim
endif


autocmd FileType dashboard setlocal fillchars+=eob:\ 
autocmd FileType dashboard setlocal nowrap
]]
