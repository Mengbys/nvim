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
vim.o.laststatus              = 2
vim.o.showtabline             = 1
vim.o.cmdheight               = 1
vim.o.linespace               = 0
vim.o.wildmenu                = true
vim.o.termguicolors           = true
vim.o.scrolloff               = 5
vim.g.loaded_python_provider  = 0
vim.g.python3_host_skip_check = 1
vim.g.python3_host_prog       = 'D:\\python39\\python.exe'

-- other autocommands and commands
vim.cmd[[
autocmd filetype markdown,text setlocal textwidth=78
autocmd filetype help,vim-plug,startuptime nnoremap <silent><buffer> q :exit<CR>

" When open a file, always jump to the last cursor position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" Session save and load
set sessionoptions-=blank
command QS mks! ~\AppData\Local\nvim\tmp\session0.vim | wqa
command LS so ~\AppData\Local\nvim\tmp\session0.vim

" dashboard
autocmd FileType dashboard nnoremap <silent><buffer> m :DashboardFindHistory<CR>
autocmd FileType dashboard nnoremap <silent><buffer> f :DashboardFindFile<CR>
autocmd FileType dashboard nnoremap <silent><buffer> q :exit<CR>
autocmd FileType dashboard nnoremap <silent><buffer> e :ene<CR>
autocmd FileType dashboard nnoremap <silent><buffer> l :LS<CR>
autocmd FileType dashboard set showtabline=0 | autocmd BufLeave <buffer> set showtabline=2
autocmd FileType dashboard set laststatus=0 | autocmd BufLeave <buffer> set laststatus=2
autocmd FileType dashboard set noruler | autocmd BufLeave <buffer> set ruler
autocmd filetype dashboard setlocal fillchars+=eob:\ 
autocmd filetype dashboard setlocal nowrap
]]
