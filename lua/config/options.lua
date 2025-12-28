-- [[ Setting options ]] See `:h vim.o`
-- NOTE: You can change these options as you wish!
-- For more options, you can see `:help option-list`
-- To see documentation for an option, you can use `:h 'optionname'`, for example `:h 'number'`
-- (Note the single quotes)

-- Print the line number in front of each line
vim.o.number = true

-- Use relative line numbers, so that it is easier to jump with j, k. This will affect the 'number'
-- option above, see `:h number_relativenumber`
-- vim.o.relativenumber = true

vim.o.signcolumn = "yes"

-- йцукенгшщзхъ
vim.o.langmap =
"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

---- Visuals
vim.o.termguicolors = true
-- colorscheme
-- vim.cmd("colorscheme dracula")
vim.cmd("colorscheme retrobox")
-- vim.cmd("colorscheme nord")
-- vim.cmd("colorscheme kanagawa-dragon")
-- Highlight the line where the cursor is on
vim.o.cursorline = true
vim.cmd("hi clear CursorLine")
vim.cmd("hi CursorLine gui=underline cterm=underline")
-- window borders
vim.o.winborder = "rounded"

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Color column offset
vim.o.colorcolumn = "89"

-- Show <tab> and trailing spaces
vim.o.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
}
