-- NOTE: autocommands

local autocmd = vim.api.nvim_create_autocmd

-- Highlight when yanking
autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Disable comment on new line
autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general,
  desc = "Disable New Line Comment",
})

-- 2-space indentation for lua and markdown
autocmd("FileType", {
  pattern = "lua,markdown",
  callback = function()
    vim.opt.sw = 2
    vim.opt.tabstop = 2
    vim.opt.expandtab = true
  end,
})

-- Enable treesitter highlighting
autocmd('FileType', {
  pattern = "python",
  callback = function()
    vim.treesitter.start()
  end,
})
