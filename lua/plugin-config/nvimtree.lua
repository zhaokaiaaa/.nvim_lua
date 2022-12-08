require("nvim-tree").setup({
    filters = {
        dotfiles = true,
        custom = {
            ".git/"
        },

        exclude = {
            ".gitignore"
        },
    },
    git = {
        enable = true
    },
})
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- 设置 termguicolors 以启用高亮组
vim.opt.termguicolors = true
