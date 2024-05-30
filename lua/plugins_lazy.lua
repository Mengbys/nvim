require("lazy").setup(
{
  {
    "folke/tokyonight.nvim",
    lazy=false,
    config=function()
      require("plugin_tokyonight")
    end,
  },

  {
    "EdenEast/nightfox.nvim",
    lazy=false,
    config=function()
      require("plugin_nightfox")
    end,
  },

  {
    "catppuccin/nvim",
    name="catppuccin",
    lazy=false,
    config=function()
      require("plugin_catppuccin")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    lazy=false,
    config=function()
      require("plugin_lualine")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    lazy=false,
    config=function()
      require("plugin_bufferline")
    end,
  },

  {
    "kyazdani42/nvim-web-devicons",
    lazy=true,
    config=function()
      require("plugin_nvim_web_devicons")
    end,
  },

  {
    "kyazdani42/nvim-tree.lua",
    cmd="NvimTreeToggle",
    config=function()
      require("plugin_nvim_tree")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy=false,
    config=function()
      require("plugin_nvim_treesitter")
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd="SymbolsOutline",
    config=function()
      require("plugin_symbols_outline")
    end,
  },

  {
    "glepnir/dashboard-nvim",
    lazy=false,
    config=function()
      require("plugin_dashboard")
    end,
  },

  {
    "ibhagwan/fzf-lua",
    cmd="FzfLua",
    config=function()
      require("plugin_fzf_lua")
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config=function()
      require("plugin_nvim_autopairs")
    end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy=false,
    config=function()
      require("plugin_nvim_lspconfig")
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    lazy=false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("plugin_nvim_cmp")
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    version = "v2.3",
    -- build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    event="InsertEnter",
    config = function()
      require("plugin_luasnip")
    end,
  },

  {
    "folke/todo-comments.nvim",
    lazy=false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugin_todo_comments")
    end,
  },

  {
    'numToStr/Comment.nvim',
    event="InsertEnter",
    config = function()
      require("plugin_comment")
    end,
  },

  {
    'stevearc/oil.nvim',
    cmd="Oil",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugin_oil")
    end,
  },

  {
    "folke/flash.nvim",
    keys = {
      { "<space>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "<space>a", mode = { "n", "x", "o" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    },
    config=function()
      require('plugin_flash')
    end,
  },

  {
    'smoka7/hop.nvim',
    version = "*",
    keys = {
      { "<space>w", mode = { "n", "x", "o" }, "<cmd>HopWordMW<cr>", desc = "Hop Word" },
      { "<space>l", mode = { "n", "x", "o" }, "<cmd>HopLine<cr>", desc = "Hop Line" },
    },
    config=function()
      require('plugin_hop')
    end,
  },

},

{
  root=Plugins_dir;
}
)
