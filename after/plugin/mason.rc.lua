local status, mason = pcall(require, "mason")
if (not status) then return end

local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({})

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tailwindcss", "astro" },
}

-- FIX: for nvim-autotag - not actually working
local ts_utils = require("nvim-treesitter.ts_utils")
ts_utils.get_node_text = vim.treesitter.query.get_node_text

-- local ft_to_parser = require('nvim-treesitter.parsers').filetype_to_parsername
-- ft_to_parser.astro = "tsx"

-- Detect astro files and set filetype
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.astro" },
  callback = function()
    vim.cmd([[ set filetype=astro ]])
  end,
})
