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
      "hrsh7th/cmp-vsnip",
    },
    config = function()
      require("plugin_nvim_cmp")
    end,
  },

  -- TODO: When type `s` in ps1 file, get an error.
  {
    "hrsh7th/vim-vsnip",
    event="InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      vim.g.vsnip_snippet_dir=Snips_dir
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
},

{
  root=Plugins_dir;
}
)
