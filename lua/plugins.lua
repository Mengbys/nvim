local Plug = vim.fn['plug#']
vim.call('plug#begin', 'C:/Users/12048/AppData/Local/nvim/plugged')

-- new
-- plugins using lua
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'simrat39/symbols-outline.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'karb94/neoscroll.nvim'
Plug 'glepnir/dashboard-nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do']=vim.fn[':TSUpdate']})
Plug 'ellisonleao/glow.nvim'
Plug 'numToStr/FTerm.nvim'
-- Plug 'akinsho/toggleterm.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'

-- new find engine
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })
Plug 'junegunn/fzf.vim'
-- linux, macos can use
-- Plug 'ibhagwan/fzf-lua'

-- Plug 'mhinz/vim-startify'
Plug 'cocopon/iceberg.vim'
Plug 'overcache/NeoSolarized'
Plug 'pineapplegiant/spaceduck'
Plug 'liuchengxu/space-vim-dark'
Plug 'folke/tokyonight.nvim'
-- Plug 'vim-airline/vim-airline'
-- Plug 'vim-airline/vim-airline-themes'
-- Plug 'ryanoasis/vim-devicons'
-- Plug 'preservim/nerdtree'
-- Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
-- Plug 'SirVer/ultisnips'
-- Plug 'mengbys/vim-snippets'
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
-- Plug 'sheerun/vim-polyglot'
Plug('iamcco/markdown-preview.nvim', { ['do'] = vim.fn['mkdp#util#install'], ['for'] = {'markdown', 'vim-plug'} })
Plug 'lyokha/vim-xkbswitch'
vim.call('plug#end')
