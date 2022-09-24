local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center"
      }
    },
  },
  highlights = {
    separator = {
      fg = '#32344a',
      bg = '#232433',
    },
    separator_selected = {
      fg = '#32344a',
    },
    background = {
      fg = '#657b83',
      bg = '#232433'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#32344a'
    },
    modified = {
      bg = '#232433'
    },
    modified_visible = {
      bg = '#232433'
    },
    pick = {
      bg = '#232433'
    },
    pick_visible = {
      bg = '#232433'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', 'gb', '<cmd>BufferLinePick<CR>', {silent = true})

