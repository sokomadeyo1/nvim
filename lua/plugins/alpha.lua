local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = { "NVIM" }

dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", "<cmd>ene <CR>"),
  dashboard.button("s", "󰪺  Recent sessions", "<cmd>SessionManager load_session<CR>"),
  dashboard.button("t", "󱏒  File explorer", "<cmd>:NvimTreeOpen <CR>"),
  dashboard.button("b", "󰃀  Bookmarks", "<cmd>e ~/Bookmarks<CR>"),
  dashboard.button("T", "  Todo", "<cmd>e ~/Bookmarks/todo/current.md<CR>"),
  dashboard.button("n", "  Config Neovim", "<cmd>e ~/.config/nvim<CR>"),
  dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
}

require('alpha').setup(dashboard.config)
