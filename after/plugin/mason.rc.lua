local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tailwindcss", "astro" },
}

local ft_to_parser = require('nvim-treesitter.parsers').filetype_to_parsername
ft_to_parser.astro = "tsx"

vim.filetype.add({
    extension = {
        astro = "astro"
    }
})

vim.cmd[[  
  autocmd BufRead,BufEnter *.astro set filetype=astro
]]
