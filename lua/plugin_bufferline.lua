local bufferline=require("bufferline")
bufferline.setup {
  options = {
    mode = 'buffers',
    style_preset = bufferline.style_preset.default,
    themable = false,
    numbers = 'none',
    diagnostics = 'nvim_lsp',
    -- separator_style = {'',''},
    close_icon = "🚀",
    show_close_icon = true,
    indicator = {
      -- icon = '▎',
      -- style = 'icon',
      style='none',
    },
  },
  highlights = {
    indicator_selected = {
      fg = '#51afef',
    },
  }
}
