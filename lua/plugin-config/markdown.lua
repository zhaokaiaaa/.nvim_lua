--=================================================================================
--=================markdown===========================
--=================================================================================
--====vim-markdown====
--选项仅控制 Vim Markdown 特定折叠配置。
vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_folding_style_pythonic = 1
--======md-img-pasete.vim====
--设置快捷键 Ctrl+p  粘贴剪切板中的图片
vim.api.nvim_set_keymap("n", "<C-p>", ":call mdip#MarkdownClipboardImage()<CR><ESC>j", { noremap = true, silent = true })
--设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
--======MarkdownPreview====
--[[
    zr: 降低整个缓冲区的折叠级别
    zR: 打开所有折叠
    zm: 增加整个缓冲区的折叠级别
    zM: 一路折叠一切
    za: 打开你光标所在的折叠
    zA: 递归地打开你的光标所在的折叠
    zc：关闭光标所在的折叠
    zC：递归关闭光标所在的折叠
]]
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_browser = ''
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_open_to_the_world = 0
vim.g.mkdp_echo_preview_url = 0
vim.g.mkdp_browserfunc = ''
vim.g.mkdp_page_title = '「${name}」'

vim.api.nvim_set_keymap("i", ",r", "<ESC>:MarkdownPreview<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", ",rs", "<ESC>:MarkdownPreviewStop<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",r", ":MarkdownPreview<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",rs", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
-- ==== vim-markdown-toc =====================
vim.api.nvim_set_keymap("n", ",gtc", "magg:GenTocMarked<CR>g'a", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",utc", ":UpdateToc<CR>", { noremap = true, silent = true })
-- === vim-table-mode
vim.api.nvim_set_keymap("n", ",tm", ":TableModeToggle<CR>", { noremap = true, silent = true })