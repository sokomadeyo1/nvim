-- [[ Setting options ]] See `:h vim.o`
-- NOTE: You can change these options as you wish!
-- For more options, you can see `:help option-list`
-- To see documentation for an option, you can use `:h 'optionname'`, for example `:h 'number'`
-- (Note the single quotes)

-- Print the line number in front of each line
vim.o.number = true

-- Use relative line numbers, so that it is easier to jump with j, k. This will affect the 'number'
-- option above, see `:h number_relativenumber`
vim.o.relativenumber = true

-- йцукенгшщзхъ
vim.o.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Visuals
-- colorscheme
vim.cmd("colorscheme dracula")
-- Highlight the line where the cursor is on
vim.o.cursorline = true
vim.cmd("hi clear CursorLine")
vim.cmd("hi CursorLine gui=underline cterm=underline")

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Show <tab> and trailing spaces
vim.o.list = true

-- Indentation
vim.o.shiftwidth = 4     -- operation >> indents 4 columns; << unindents 4 columns
vim.o.tabstop = 4        -- a hard TAB displays as 4 columns
vim.o.expandtab = true   -- insert spaces when hitting TABs
vim.o.softtabstop = 4    -- insert/delete 4 spaces when hitting a TAB/BACKSPACE
vim.o.shiftround = true  -- round indent to multiple of 'shiftwidth'
vim.o.autoindent = true  -- align the new line indent with the previous line
