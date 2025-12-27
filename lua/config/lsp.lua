vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true,
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
vim.lsp.config('lua_ls', {
  -- Command and arguments to start the server.
  cmd = { 'lua-language-server' },

  -- Filetypes to automatically attach to.
  filetypes = { 'lua' },
})

-- python
vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        autopep8 = {
          enabled = false,
        },
        pylint = {
          enabled = true,
        },
        pycodestyle = {
          enabled = false,
        }
      }
    }
  }
})

-- vim.lsp.config('ruff', {
--   init_options = {
--     settings = {
--       --
--     }
--   }
-- })

vim.lsp.enable({ 'lua_ls', 'pylsp', 'ruff' })
