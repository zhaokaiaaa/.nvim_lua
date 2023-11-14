-- 快捷键配置
-- 设置 leader key 和 localleader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
-- 移动操作
vim.api.nvim_set_keymap("n", "J", "5j", opts)
vim.api.nvim_set_keymap("n", "K", "5k", opts)
vim.api.nvim_set_keymap("n", "W", "5w", opts)
vim.api.nvim_set_keymap("n", "B", "5b", opts)
vim.api.nvim_set_keymap("v", "J", "5j", opts)
vim.api.nvim_set_keymap("v", "K", "5k", opts)
vim.api.nvim_set_keymap("v", "W", "5w", opts)
vim.api.nvim_set_keymap("v", "B", "5b", opts)
vim.api.nvim_set_keymap("n", "gh", "^", opts)
vim.api.nvim_set_keymap("n", "gl", "$", opts)
vim.api.nvim_set_keymap("v", "gh", "^", opts)
vim.api.nvim_set_keymap("v", "gl", "$", opts)
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", opts)
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", opts)
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", opts)
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", opts)
vim.api.nvim_set_keymap("i", "<C-d>", "<Delete>", opts)
-- ================================================================================================
-- = Resize splits with arrow keys =====================================
-- ================================================================================================
vim.api.nvim_set_keymap("n", "<Up>", ":res +5<CR>", opts)
vim.api.nvim_set_keymap("n", "<Down>", ":res -5<CR>", opts)
vim.api.nvim_set_keymap("n", "<Left>", ":vertical resize-5<CR>", opts)
vim.api.nvim_set_keymap("n", "<Right>", ":vertical resize+5<CR>", opts)


-- lsp 快捷键定义
local pluginKeys = {}

pluginKeys.nvimTreeList = {
    -- 打开文件或文件夹
    --{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" },
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" },
    { key = "e", action = "edit" },
    -- 分屏打开文件
    { key = "s", action = "vsplit" },
    -- 显示隐藏文件
    { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
    { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
    -- 文件操作
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    { key = "o", action = "system_open" },
}
return pluginKeys
