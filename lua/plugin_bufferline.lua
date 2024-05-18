require("bufferline").setup{
  options = {
    mode = 'buffers',
    numbers = 'buffer_id',
    diagnostics = 'nvim_lsp',
    separator_style = {'/','/'},
    -- separator_style = 'thin',
    close_icon = "🚀",
    show_close_icon = true,
    indicator = {
      style = 'icon',
      -- icon = '▏'
      -- icon = '▎'
      -- icon = '▊'
      icon = ''
    },
  },
  highlights = {
    separator_selected = {
      -- bg='#ffffff',
      fg='#51afef'
    },
    separator_visible = {
      -- bg='#ffffff',
      -- fg='#ffffff'
    },
    separator = {
      -- bg='#ffffff',
      -- fg='#ffffff'
    },
  }
}
