local function map(m, k, v, d)
  d = d or v
  vim.keymap.set(m, k, v, { noremap = true, silent = true, desc = d })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>", "close buf")
map("n", "<leader>Q", ":BufferClose!<CR>", "close buf!")
map('n', '<leader>sv', ':vsplit<CR>:bnext<CR>', "vertical split")  --ver split + open next buffer
map('n', '<leader>sh', ':split<CR>:bnext<CR>', "horizontal split") --ver split + open next buffer

-- buffer position nav + reorder
map('n', '<AS-h>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<AS-l>', '<Cmd>BufferMoveNext<CR>')
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')
map('n', '<A-p>', '<Cmd>BufferPin<CR>')

-- misc
map("n", "<leader>t", ":NvimTreeFocus<CR>", "Open file explorer")      --open file explorer
map("n", "<leader>P", ":PlugInstall<CR>", "Install plugins")           --vim-plug
map("n", "<leader>mv", ":!mv % ", "Rename buffer")                     --move a file to a new dir
map("n", "<leader>R", ":so %<CR>", "Reload config")                    --reload neovim config
map("n", "<leader>u", ':silent !xdg-open "<cWORD>" &<CR>', "Open URL") --open a url under cursor
-- map("v", "<leader>i", "=gv") --auto indent
map("n", "<leader>W", ":set wrap!<CR>", "Toggle wrap")                 --toggle wrap

-- decisive csv
map("n", "<leader>csa", ":lua require('decisive').align_csv({})<cr>", "Align table")
map("n", "<leader>csA", ":lua require('decisive').align_csv_clear({})<cr>", "Undo align table")
-- map("n", "[c", ":lua require('decisive').align_csv_prev_col()<cr>")
-- map("n", "]c", ":lua require('decisive').align_csv_next_col()<cr>")

map("n", "<leader>f", vim.lsp.buf.format, 'Format buffer')

-- System clipboard
map({ "n", "v", "x" }, "<leader>y", '"+y', "Yank to system clipboard")
map({ "n", "v", "x" }, "<leader>d", '"+d', "Delete to system clipboard")
map({ "n", "v", "x" }, "<leader>p", '"+p', "Paste form system clipboard")

-- Lint
map("n", "<leader>lp", ":!pylint %<CR>", "Lint python file")
