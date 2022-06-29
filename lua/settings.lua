vim.o.encoding                = 'utf-8'
vim.o.fileencoding            = 'utf-8'
vim.o.fileencodings           = 'utf-8,ucs-bom,gb18030,gbk,gb2312,cp936'
vim.o.tabstop                 = 4
vim.o.softtabstop             = 4
vim.o.shiftwidth              = 4
vim.o.smarttab                = true
vim.o.expandtab               = true
vim.o.number                  = true
vim.o.relativenumber          = true
vim.o.cursorline              = true
vim.o.background              = 'dark'
vim.o.autoread                = true
vim.o.autoindent              = true
vim.o.smartindent             = true
vim.o.compatible              = false
vim.o.ignorecase              = true
vim.o.smartcase               = true
vim.o.incsearch               = true
vim.o.wrap                    = true
vim.o.undofile                = false
vim.o.backup                  = false
vim.o.swapfile                = false
vim.o.hls                     = false
vim.o.spr                     = true
vim.o.sb                      = true
vim.o.signcolumn              = 'number'
vim.o.whichwrap               = '<,>,[,]'
vim.o.laststatus              = 3
vim.o.showtabline             = 1
vim.o.cmdheight               = 1
vim.o.linespace               = 0
vim.o.wildmenu                = true
vim.o.termguicolors           = true
vim.o.scrolloff               = 5
vim.o.mouse                   = 'a'
vim.g.loaded_python_provider  = 0
if (vim.loop.os_uname().sysname == 'Windows_NT') then
  vim.g.python3_host_skip_check = 1
  vim.g.python3_host_prog       = 'D:/python39/python.exe'
end

-- # other autocommands and commands
-- ## autocmd writed in lua
vim.api.nvim_create_autocmd('FileType', {
  pattern='vim-plug,startuptime',
  callback=function()
    vim.api.nvim_buf_set_keymap(0,'n','q',':q!<CR>',{noremap=true,silent=true})
  end
})

vim.api.nvim_create_autocmd('FileType', {
  pattern='help',
  callback=function()
    vim.api.nvim_buf_set_keymap(0,'n','q',':bd!<CR>',{noremap=true, silent=true})
  end
})

-- dashboard
vim.api.nvim_create_autocmd('FileType', {
  pattern='dashboard',
  callback=function()
    if (vim.loop.os_uname().sysname == 'Windows_NT') then
      vim.api.nvim_buf_set_keymap(0,'n','m',':History<CR>',{noremap=true,silent=true})
      vim.api.nvim_buf_set_keymap(0,'n','f',':Files<CR>',{noremap=true,silent=true})
    elseif (vim.loop.os_uname().sysname == 'Linux') then
      vim.api.nvim_buf_set_keymap(0,'n','m',':FzfLua oldfiles<CR>',{noremap=true,silent=true})
      vim.api.nvim_buf_set_keymap(0,'n','f',':FzfLua files<CR>',{noremap=true,silent=true})
    end
    vim.api.nvim_buf_set_keymap(0,'n','q',':exit<CR>',{noremap=true,silent=true})
    vim.api.nvim_buf_set_keymap(0,'n','e',':ene<CR>',{noremap=true,silent=true})
    vim.api.nvim_buf_set_keymap(0,'n','l',':LS<CR>',{noremap=true,silent=true})
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

-- ## autocmd writed in vimscript
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
elseif has('linux')
  command QS mks! ~/.config/nvim/tmp/session0.vim | wqa
  command LS so ~/.config/nvim/tmp/session0.vim
endif


" dashboard
" autocmd FileType dashboard set showtabline=0 | autocmd BufLeave <buffer> set showtabline=2
" autocmd BufEnter * if &ft=='dashboard' | set showtabline=0 | endif
" autocmd FileType dashboard set laststatus=0 | autocmd BufLeave <buffer> set laststatus=3
" autocmd BufEnter * if &ft=='dashboard' | set laststatus=0 | endif
" autocmd FileType dashboard set noruler | autocmd BufLeave <buffer> set ruler
" autocmd BufEnter * if &ft=='dashboard' | set noruler | endif
autocmd FileType dashboard setlocal fillchars+=eob:\ 
autocmd FileType dashboard setlocal nowrap

" fzf terminal buffer
" autocmd TermEnter * set laststatus=0 | autocmd BufLeave <buffer> set laststatus=3
]]
