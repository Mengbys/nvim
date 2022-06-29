local plugins_install_dir
if vim.fn.has('win32') then
  plugins_install_dir = 'C:/Users/12048/AppData/Local/nvim/plugged'
elseif vim.fn.has('linux') then
  plugins_install_dir = '~/.config/nvim/plugged'
end

local Plug = vim.fn['plug#']
vim.call('plug#begin', plugins_install_dir)

-- plugins using lua
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'simrat39/symbols-outline.nvim'
Plug 'neovim/nvim-lspconfig'
-- Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'karb94/neoscroll.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do']=vim.fn[':TSUpdate']})
Plug 'ellisonleao/glow.nvim'
Plug 'numToStr/FTerm.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'lewis6991/impatient.nvim'

Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })
if vim.fn.has('win32') then
  Plug 'junegunn/fzf.vim'
elseif vim.fn.has('linux') then
  Plug 'ibhagwan/fzf-lua'
end

-- Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
Plug 'cocopon/iceberg.vim'
Plug 'overcache/NeoSolarized'
Plug 'pineapplegiant/spaceduck'
Plug 'liuchengxu/space-vim-dark'
Plug 'folke/tokyonight.nvim'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'rhysd/clever-f.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/goyo.vim'
Plug 'dstein64/vim-startuptime'
-- Plug 'gcmt/taboo.vim'
Plug('iamcco/markdown-preview.nvim', { ['do'] = vim.fn['mkdp#util#install'], ['for'] = {'markdown', 'vim-plug'} })
vim.call('plug#end')
