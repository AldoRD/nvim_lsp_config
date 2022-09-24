require("tokyonight").setup({
  style = "storm",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
})

vim.cmd([[colorscheme tokyonight]])

--require('nightfox').setup({
--  options = {
--    transparent = true,
--    styles = {
--      comments = "italic",
--      keywords = "bold",
--      types = "italic,bold",
--    }
--  }
--})
--
--vim.cmd("colorscheme nightfox")
