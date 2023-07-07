--[[启动页]]
require('dashboard').setup({
    theme = 'hyper',
    config = {
        week_header = {
            enable = true,
        },
        project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
        shortcut = {
            { icon = "   ", group = "Label", desc = "Recently opened files", key = "fr", action = "Telescope oldfiles" },
            { icon = "  ", group = "@property", desc = "Find File", key = "ff", action = "Telescope find_files" },
            { icon = "  ", group = "DiagnosticHint", desc = "Find In Browser", key = "fb", action = "Telescope file_browser" },
            { icon = "  ", group = "Number", desc = "Open Personal dotfiles", key = "vi", action = "edit $MYVIMRC" }
        },
        footer = {
            '', '🎉 Have fun with neovim'
        }
    }
})