vim.api.nvim_set_keymap('n','<leader>n',':NvimTreeToggle<CR>',{noremap=true,silent=true})
-- quit on open option has move to setup
-- vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_icons = {
  git = {
    unstaged = "★",
    untracked = "✗",
  }
}

-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  hijack_cursor       = false,
  open_on_setup       = false,
  open_on_tab         = false,
  update_cwd          = true,
  ignore_ft_on_setup  = {},
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  },
  actions = {
      open_file = {
          quit_on_open = true
      }
  }
}
