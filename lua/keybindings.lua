-- 快捷键配置
-- 设置 leader key 和 localleader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 移动操作
vim.api.nvim_set_keymap("n", "J", "5j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", "5k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "W", "5w", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "B", "5b", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gh", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gl", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "gl", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-d>", "<Delete>", { noremap = true, silent = true })
-- ================================================================================================
-- = Resize splits with arrow keys =====================================
-- ================================================================================================
vim.api.nvim_set_keymap("n", "<Up>", ":res +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", ":res -5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", ":vertical resize-5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", ":vertical resize+5<CR>", { noremap = true, silent = true })

-- lsp 快捷键定义
local lspKeyBinds = {}

lspKeyBinds.set_keymap = function(bufnr)
    print("set lsp keymap")
    -- 跳转到声明
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true, noremap = true })

    -- 跳转到定义
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true, noremap = true })
    -- 显示注释文档
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true, noremap = true })
    -- 跳转到实现
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true, noremap = true })
    -- 跳转到引用位置
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true, noremap = true })
    -- 以浮窗形式显示错误
    vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { silent = true, noremap = true })

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(bufnr, "v", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true, noremap = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true, noremap = true })
    -- dap
    vim.keymap.set({ "i", "n", "v" }, "<F5>", "<cmd>lua require'dap'.continue()<CR>", { silent = true, noremap = true, buffer = bufnr })
    vim.keymap.set({ "i", "n", "v" }, "<F10>", "<cmd>lua require'dap'.step_over()<CR>", { silent = true, noremap = true, buffer = bufnr })
    vim.keymap.set({ "i", "n", "v" }, "<F11>", "<cmd>lua require'dap'.step_into()<CR>", { silent = true, noremap = true, buffer = bufnr })
    vim.keymap.set({ "i", "n", "v" }, "<F12>", "<cmd>lua require'dap'.step_over()<CR>", { silent = true, noremap = true, buffer = bufnr })
    vim.keymap.set({ "i", "n", "v" }, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true, noremap = true, buffer = bufnr })
end
vim.cmd [[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
vim.cmd [[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
vim.cmd [[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]
vim.cmd [[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]

-- dap keymaps
return lspKeyBinds
