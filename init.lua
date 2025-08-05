vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.cmd("colorscheme sorbet")
vim.cmd("syntax enable")
vim.opt.termguicolors = true

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', "'", "''<Left>", { noremap = true })
vim.api.nvim_set_keymap('i', '`', '``<Left>', { noremap = true })

vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true

vim.opt.laststatus = 3
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.mouse = "a"
