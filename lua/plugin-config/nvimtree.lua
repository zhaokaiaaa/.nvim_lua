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
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
