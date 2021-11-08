vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides            = true,
    auto_preview           = false,
    position               = 'right',
    width                  = 20,
    show_numbers           = false,
    show_relative_numbers  = false,
    show_symbol_details    = true,
    preview_bg_highlight   = 'Pmenu',
    keymaps                = { -- These keymaps can be a string or a table for multiple keys
        close              = {"<Esc>", "q"},
        goto_location      = "<Cr>",
        focus_location     = "o",
        hover_symbol       = "<C-space>",
        toggle_preview     = "K",
        rename_symbol      = "r",
        code_actions       = "a",
    },
    lsp_blacklist     = {},
    symbol_blacklist  = {},
    symbols = {
        File          = {icon = "", hl    = "TSURI"},
        Module        = {icon = "", hl    = "TSNamespace"},
        Namespace     = {icon = "", hl    = "TSNamespace"},
        Package       = {icon = "", hl    = "TSNamespace"},
        Class         = {icon = "C", hl    = "TSType"},
        Method        = {icon = "ƒ", hl    = "TSMethod"},
        Property      = {icon = "", hl    = "TSMethod"},
        Field         = {icon = "", hl    = "TSField"},
        Constructor   = {icon = "", hl    = "TSConstructor"},
        Enum          = {icon = "ℰ", hl    = "TSType"},
        Interface     = {icon = "ﰮ", hl    = "TSType"},
        Function      = {icon = "", hl    = "TSFunction"},
        Variable      = {icon = "", hl    = "TSConstant"},
        Constant      = {icon = "", hl    = "TSConstant"},
        String        = {icon = "ş", hl    = "TSString"},
        Number        = {icon = "#", hl    = "TSNumber"},
        Boolean       = {icon = "⊨", hl    = "TSBoolean"},
        Array         = {icon = "", hl    = "TSConstant"},
        Object        = {icon = "⦿", hl    = "TSType"},
        Key           = {icon = "", hl   = "TSType"},
        Null          = {icon = "NULL", hl = "TSType"},
        EnumMember    = {icon = "", hl    = "TSField"},
        Struct        = {icon = "S", hl    = "TSType"},
        Event         = {icon = "", hl    = "TSType"},
        Operator      = {icon = "+", hl    = "TSOperator"},
        TypeParameter = {icon = "", hl    = "TSParameter"}
    }
}

-- key mappings
vim.api.nvim_set_keymap('n','<leader>t',':SymbolsOutline<cr>',{noremap=true,silent=true})

