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

  -- TODO: 
  -- 1. How to use with `/` and `?`?
  -- 2. Write a config file.
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  -- TODO:
  -- 1. Learn it and write a config for it.
  -- 2. Confirm trigger cmds.
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
      keys = 'etovxqpdygfblzhckisuran'
    }
  },

},

{
  root=Plugins_dir;
}
)
