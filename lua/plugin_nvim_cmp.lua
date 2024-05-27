local kind_icons = {
  Text = "",
  Method = "",
  Function = "󰊕",
  Constructor = "",
  Field = "",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = ""
}

-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  sources = {
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
  },
  mapping = {
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),{'i','c'}),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),{'i','c'}),
    ['<C-x>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4),{'i','c'}),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4),{'i','c'}),
  },
  formatting = {
    format = function(_, vim_item)
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
      return vim_item
    end
  },
})

-- Use buffer source for `/` and `?`.
cmp.setup.cmdline({ '/','?' }, {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
  sources = {
    {name = 'path'},
    -- Do not show completion for words starting with '!'
    {name = 'cmdline', keyword_pattern = [[\!\@<!\w*]]},
  },
  formatting = {
    format = function(entry, vim_item)
      if (vim_item.kind=="Variable") then
        vim_item.kind = ' cmd'
      else
        vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
      end
      return vim_item
    end
  },
})


-- Set lsp keymapping.

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

end

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- python lsp pyright
require'lspconfig'.pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach
}
-- c family lsp clangd
require'lspconfig'.clangd.setup {
  capabilities = capabilities,
  on_attach = on_attach
}
-- lua lsp sumneko
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
      -- enable snippet
      completion = {
        callSnippet = 'Replace'
      }
    },
  },
}
