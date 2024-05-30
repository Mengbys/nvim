Plugins_dir=""
Snips_dir=""
Tmp_dir=""
Session_file=""


local nvim_config_path=vim.fn.stdpath("config")
Plugins_dir=nvim_config_path .. "/lazy"
Snips_dir=nvim_config_path .. "/snip"
Tmp_dir=nvim_config_path .. "/tmp"
Session_file=nvim_config_path .. "/tmp/session0.vim"

local lazypath=Plugins_dir .. "/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
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

if not vim.uv.fs_stat(Session_file) then
  vim.uv.fs_mkdir(Tmp_dir,755)
  local file=vim.uv.fs_open(Session_file,"w",755)
  vim.uv.fs_close(file)
end


require("settings")
require("keymappings")
require("functions")

require("plugins_lazy")

require("colorscheme")
