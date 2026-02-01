vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = false,
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

-- python
vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        autopep8 = {
          enabled = false,
        },
        pylint = {
          enabled = false,
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

vim.lsp.config('hls', {
  filetypes = { 'haskell', 'lhasekll', 'cabal' },
})

vim.lsp.enable({
  'lua_ls',
  'pylsp',
  'ruff',
  'marksman',
  'rumdl',
  'harper_ls',
  'bashls',
  'hls',
  'gopls',
  'golangci_lint_ls',
})
