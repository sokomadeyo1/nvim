-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '


-- vim-plug
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colorschemes
Plug('mofiqul/dracula.nvim')
Plug('shaunsingh/nord.nvim')
Plug('rebelot/kanagawa.nvim')
Plug('AlphaTechnolog/pywal.nvim')

Plug('nvim-tree/nvim-web-devicons')
Plug('folke/which-key.nvim')                      --mappings popup
Plug('romgrk/barbar.nvim')                        --bufferline
Plug('nvim-tree/nvim-tree.lua')                   --file explorer
Plug('windwp/nvim-autopairs')                     --autopairs
Plug('lewis6991/gitsigns.nvim')                   --git
Plug('lukas-reineke/virt-column.nvim')            --colorcolumn
Plug('folke/todo-comments.nvim')                  --todo-comments
Plug('numToStr/Comment.nvim')                     --easier comments
Plug('norcalli/nvim-colorizer.lua')               --color highlight
Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
Plug('emmanueltouzery/decisive.nvim')             --view csv files
Plug('neovim/nvim-lspconfig')                     --lsp
Plug('nvim-treesitter/nvim-treesitter')           --better syntax highlighting
Plug('folke/trouble.nvim')                        --diagnostics

vim.call('plug#end')


require('config.options')
require('config.keymaps')
require('config.autocmd')
require('config.lsp')

require('plugins.barbar')
require('plugins.comment')
require('plugins.colorizer')
require('plugins.gitsigns')
require('plugins.todo-comments')
require('plugins.autopairs')
require('plugins.whichkey')
require('plugins.virtcolumn')
require('plugins.nvim-tree')
require('plugins.nvim-treesitter')
require('plugins.trouble')
