require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = { Snips_dir} })

local ls=require("luasnip")

vim.keymap.set({"i", "s"}, "<c-n>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<c-p>", function() ls.jump(-1) end, {silent = true})


