require("bufferline").setup{
  options = {
    mode = 'buffers',
    numbers = 'buffer_id',
    diagnostics = 'nvim_lsp',
    separator_style = 'thin',
    close_icon = "🚀",
    indicator_icon = '▏'
  },
  highlights = {
    separator_selected = {
      -- guibg='#ffffff',
      guifg='#51afef'
    },
    separator_visible = {
      -- guibg='#ffffff',
      -- guifg='#ffffff'
    },
    separator = {
      -- guibg='#ffffff',
      -- guifg='#ffffff'
    },
  }
}
