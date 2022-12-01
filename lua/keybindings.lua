-- 快捷键配置
-- 设置 leader key 和 localleader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ================================================================================================
-- = No Leader Keymaps =====================================
-- ================================================================================================
-- last changed in current buffer(file)
vim.api.nvim_set_keymap("n", "ga", "'.", { noremap = true, silent = true })
--save
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
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



-- ================================================================================================
-- = Leader map =====================================
-- ================================================================================================
vim.api.nvim_set_keymap("n", "<leader><CR>", ":nohlsearch<CR>", { noremap = true, silent = true })


-- =select all=====================================
vim.api.nvim_set_keymap("n", "<leader>A", "maggVG", { noremap = true, silent = true })

-- Press space twice to jump to the next '<++>' and edit it
vim.api.nvim_set_keymap("n", "<leader>f", "<Esc>/<++><CR>:nohlsearch<CR>c4l", { noremap = true, silent = true })

-- Insert after (
vim.api.nvim_set_keymap("n", "<leader>i", "f(a", { noremap = true, silent = true })

-- PageDown
vim.api.nvim_set_keymap("n", "<leader>j", "<C-d>", { noremap = true, silent = true })

-- PageUp
vim.api.nvim_set_keymap("n", "<leader>k", "<C-u>", { noremap = true, silent = true })

-- PasteFromCopyAll
vim.api.nvim_set_keymap("n", "<leader>P", "\"bp", { noremap = true, silent = true })

-- CloseThis
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true })
-- CloseThis
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })

--w
--[[
\ 'c' : ['<C-W>c'     , 'CloseWindow']         ,
\ 'h' : ['<C-W>h'     , 'window-left']           ,
\ 'j' : ['<C-W>j'     , 'window-below']          ,
\ 'l' : ['<C-W>l'     , 'window-right']          ,
\ 'k' : ['<C-W>k'     , 'window-up']             ,
]]
vim.api.nvim_set_keymap("n", "<leader>wc", "<C-W>c", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wk", "<C-W>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wj", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wh", "<C-W>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wl", "<C-W>l", { noremap = true, silent = true })
--Y
vim.api.nvim_set_keymap("n", "<leader>Y", "maggVG\"by", { noremap = true, silent = true })

-- split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
vim.api.nvim_set_keymap("n", "s", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sj", ":set splitbelow<CR>:split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sk", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sl", ":set splitright<CR>:vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sh", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", { noremap = true, silent = true })

-- ===================================================================================
-- === Tab management ==========================
-- ===================================================================================
-- Create a new tab with tu
vim.api.nvim_set_keymap("n", "tu", ":tabe<CR>", { noremap = true, silent = true })
-- Move around tabs with H and L
vim.api.nvim_set_keymap("n", "H", ":-tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "L", ":+tabnext<CR>", { noremap = true, silent = true })
-- Move the tabs with tmn and tmi
vim.api.nvim_set_keymap("n", "tmn", ":-tabmove<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tmi", ":+tabmove<CR>", { noremap = true, silent = true })
-- ===================================================================================
--========= Insert map =========
--===================================================================================
vim.api.nvim_set_keymap("i", ",;", "<ESC>A;<ESC>", { noremap = true, silent = true });
-- 其他有用的绑定
-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", { noremap = true, silent = true })
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", { noremap = true, silent = true })
-- 快速打开vimrc文件
vim.api.nvim_set_keymap("n", "<leader>vi", ":vs $MYVIMRC<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lo", ":source $MYVIMRC<CR>", { noremap = true, silent = true })

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
