vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = ' ',
      [vim.diagnostic.severity.WARN] = ' ',
    },
    linehl = {
      [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
    },
    numhl = {
      [vim.diagnostic.severity.WARN] = 'WarningMsg',
    },
  }
})

-- lua
vim.lsp.config['lua_ls'] = {
  -- Command and arguments to start the server.
  cmd = { 'lua-language-server' },

  -- Filetypes to automatically attach to.
  filetypes = { 'lua' },
}
vim.lsp.enable({ 'lua_ls', 'ruff' })
