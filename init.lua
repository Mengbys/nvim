Plugins_dir=""
Snips_dir=""

Plugins_dir=vim.fn.stdpath("config").."/lazy"
Snips_dir=vim.fn.stdpath("config").."/snip"

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
