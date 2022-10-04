local keymap = vim.keymap

vim.g.mapleader = ";"

-- Esc
keymap.set('i', 'jk', '<ESC>')

-- Save 
keymap.set('n', '<leader>w', ':w<cr>')

-- explorer
keymap.set('n', 'sf', '<Cmd>CocCommand explorer<CR>')

-- Exit
keymap.set('n', '<M-q>', ':q!<cr>')


keymap.set('n', 'x', '"_x')

-- Hop 
keymap.set('n','f','<cmd>HopWord<cr>')
keymap.set('n','F','<cmd>HopLine<cr>')
keymap.set('n','T','<cmd>HopChar2<cr>')

-- Spectre
keymap.set('n','<leader>S',"<cmd>lua require('spectre').open()<CR>")
keymap.set('n','<leader>sw',"<cmd>lua require('spectre').open_visual({select_word=true})<CR>")

-- movements in Insert Mode
keymap.set('i', '<M-h>', '<C-o>h')
keymap.set('i', '<M-j>', '<C-o>j')
keymap.set('i', '<M-k>', '<C-o>k')
keymap.set('i', '<M-l>', '<C-o>l')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Moving text
vim.cmd[[ 
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv
]]

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-left>', '<C-w><')
keymap.set('n', '<C-right>', '<C-w>>')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')
