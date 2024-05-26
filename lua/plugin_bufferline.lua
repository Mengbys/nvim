local bufferline=require("bufferline")
bufferline.setup {
  options = {
    mode = 'buffers',
    style_preset = bufferline.style_preset.default,
    themable = false,
    numbers = 'none',
    diagnostics = 'nvim_lsp',
    separator_style = {'/','/'},
    close_icon = "🚀",
    show_close_icon = true,
    indicator = {
      style='none',
    },
  },

  highlights = {
    fill = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    background = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    tab = {
      fg = '#636da6',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    tab_selected = {
      fg = '#82aaff',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    tab_separator = {
      fg = '#202328',
      bg = '#202328',
    },
    tab_separator_selected = {
      fg = '#202328',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      -- underline = '<colour-value-here>',
    },
    tab_close = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    close_button = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    close_button_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    close_button_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    buffer_visible = {
      -- fg = '#636da6',
      bg = '#202328',
    },
    buffer_selected = {
      fg = '#c8d3f5',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    numbers = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    numbers_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    numbers_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    diagnostic = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    diagnostic_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    diagnostic_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    hint = {
      -- fg = '<colour-value-here>',
      -- sp = '<colour-value-here>',
      bg = '#202328',
    },
    hint_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    hint_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    hint_diagnostic = {
      -- fg = '<colour-value-here>',
      -- sp = '<colour-value-here>',
      bg = '#202328',
    },
    hint_diagnostic_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    hint_diagnostic_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    info = {
      -- fg = '<colour-value-here>',
      -- sp = '<colour-value-here>',
      bg = '#202328',
    },
    info_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    info_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    info_diagnostic = {
      -- fg = '<colour-value-here>',
      -- sp = '<colour-value-here>',
      bg = '#202328',
    },
    info_diagnostic_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    info_diagnostic_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    warning = {
      -- fg = '<colour-value-here>',
      -- sp = '<colour-value-here>',
      bg = '#202328',
    },
    warning_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    warning_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    warning_diagnostic = {
      -- fg = '<colour-value-here>',
      -- sp = '<colour-value-here>',
      bg = '#202328',
    },
    warning_diagnostic_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    warning_diagnostic_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    error = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
    },
    error_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    error_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    error_diagnostic = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
    },
    error_diagnostic_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    error_diagnostic_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      -- sp = '<colour-value-here>',
      bold = true,
      italic = true,
    },
    modified = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    modified_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    modified_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    duplicate_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      italic = true,
    },
    duplicate_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      italic = true,
    },
    duplicate = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      italic = true,
    },
    separator_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    separator_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    separator = {
      -- fg = '<colour-value-here>',
      fg = '#7077a1',
      bg = '#202328',
    },
    indicator_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    indicator_selected = {
      -- fg = '#51afef',
      bg = '#202328',
    },
    pick_selected = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    pick_visible = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    pick = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
      bold = true,
      italic = true,
    },
    offset_separator = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    },
    trunc_marker = {
      -- fg = '<colour-value-here>',
      bg = '#202328',
    }
  };
}
