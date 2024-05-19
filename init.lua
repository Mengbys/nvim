Plugins_dir=""
Snips_dir=""

if (vim.loop.os_uname().sysname == 'Windows_NT') then
  Plugins_dir=vim.fn.fnamemodify("D:/Neovim/lazy/", ":p")
  Snips_dir=vim.fn.fnamemodify("D:/Neovim/vsnip/", ":p")
else
  Plugins_dir=vim.fn.fnamemodify("~/.config/nvim/lazy/", ":p")
  Snips_dir=vim.fn.fnamemodify("~/.config/nvim/vsnip/", ":p")
end

local lazypath=Plugins_dir .. "/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("settings")
require("keymappings")
require("functions")

require("plugins_lazy")

require("colorscheme")
