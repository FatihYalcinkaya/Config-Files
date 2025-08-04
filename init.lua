vim.opt.number = true           -- Satır numarası
vim.opt.relativenumber = true   -- Relative satır numarası
vim.opt.tabstop = 4             -- Bir tab karakteri 4 boşluk
vim.opt.shiftwidth = 4          -- Otomatik girintilemede 4 boşluk
vim.opt.expandtab = true        -- Tab yerine boşluk kullan
vim.cmd("colorscheme slate")    -- Colorscheme
vim.cmd("syntax on")            -- Syntax

-- Otomatik parantez ve tırnak tamamlama 
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', "'", "''<Left>", { noremap = true })
vim.api.nvim_set_keymap('i', '`', '``<Left>', { noremap = true })
-- jj yi insert mode yapma
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

