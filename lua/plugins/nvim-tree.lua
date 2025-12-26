require('nvim-tree').setup {
  filters = { dotfiles = true },
}

-- Automatically close nvim-tree
vim.api.nvim_create_autocmd({"QuitPre"}, {
  callback = function() vim.cmd("NvimTreeClose") end,
})
