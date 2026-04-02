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
  settings = {
    haskell = {
      formattingProvider = "fourmolu",
    }
  }
})

vim.lsp.enable({
  'bashls',
  'clangd',
  'golangci_lint_ls',
  'gopls',
  'hls',
  'lua_ls',
  'marksman',
  'pylsp',
  'ruff',
  'rumdl',
  'tinymist',
})
