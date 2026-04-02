local function map(m, k, v, d)
  d = d or v
  vim.keymap.set(m, k, v, { noremap = true, silent = true, desc = d })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clear pattern search highlight
map("n", "<ESC>", ":noh<CR>")

-- buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>", "close buf")
map("n", "<leader>Q", ":BufferClose!<CR>", "close buf!")
map('n', '<leader>sv', ':vsplit<CR>:bnext<CR>', "vertical split")  --ver split + open next buffer
map('n', '<leader>sh', ':split<CR>:bnext<CR>', "horizontal split") --hor split + open next buffer

-- move focus
map({ "i", "n", "v", "x" }, "<C-h>", "<C-w><C-h>")
map({ "i", "n", "v", "x" }, "<C-j>", "<C-w><C-j>")
map({ "i", "n", "v", "x" }, "<C-k>", "<C-w><C-k>")
map({ "i", "n", "v", "x" }, "<C-l>", "<C-w><C-l>")

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

-- fzf
map("n", "<C-F>", ":FzfLua live_grep<CR>", "Find")
map("n", "<leader>f", ":FzfLua files<CR>", "Find files")
map("n", "<leader>b", ":FzfLua buffers<CR>", "Buffers")
-- misc
map("n", "<leader>t", ":NvimTreeFocus<CR>", "Open file explorer")
map("n", "<leader>P", ":PlugInstall<CR>", "Install plugins")
map("n", "<leader>R", ":so ~/.config/nvim/init.lua<CR>", "Reload config")
map("n", "<leader>W", ":set wrap!<CR>", "Toggle wrap")
map("n", "<leader>gb", ":FzfLua git_branches<CR>", "Branches")

-- decisive csv
map("n", "<leader>csa", ":lua require('decisive').align_csv({})<cr>", "Align table")
map("n", "<leader>csA", ":lua require('decisive').align_csv_clear({})<cr>", "Undo align table")
-- map("n", "[c", ":lua require('decisive').align_csv_prev_col()<cr>")
-- map("n", "]c", ":lua require('decisive').align_csv_next_col()<cr>")

map("n", "<leader><S-F>", vim.lsp.buf.format, 'Format buffer')

-- System clipboard
map({ "n", "v", "x" }, "<leader>y", '"+y', "Yank to system clipboard")
map({ "n", "v", "x" }, "<leader>d", '"+d', "Delete to system clipboard")
map({ "n", "v", "x" }, "<leader>p", '"+p', "Paste from system clipboard")

-- Diagnostics and symbols
map("n", "<leader>vd", ":Trouble diagnostics toggle focus=true<CR>", "View diagnostics")
map("n", "<leader>vs", ":Trouble symbols toggle<CR>", "View symbols")

-- Diagnostic virtual lines
map("n", "<leader>od", function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, "Toggle virtual line diagnostics")

-- Lint
map("n", "<leader>lp", ":!pylint %<CR>", "pylint")

map("n", "<leader><leader>b", ":e ~/Bookmarks<CR>", "bookmarks")
map("n", "<leader><leader>n", ":e ~/.config/nvim<CR>", "nvim config")
map("n", "<leader><leader>t", ":e ~/Bookmarks/todo/current.md<CR>", "todo")
map("n", "<leader><leader>s", ":e ~/.local/share/nvim/plugged/friendly-snippets/snippets<CR>", "snippets")
