--[[local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("没有找到 dashboard")
    return
end]]
local db = require('dashboard')
db.custom_header = {
    [[]],
    [[          ▀████▀▄▄              ▄█ ]],
    [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    [[   █   █  █      ▄▄           ▄▀   ]],
}

db.custom_center = {
    {icon = "  ", desc = 'Recently lastest session    ', shortcut = "leader fs", action = "RestoreSession"},
    {icon = "  ", desc = "Recently opened files       ", shortcut = "leader fr", action = "Telescope oldfiles"},
    {icon = "  ", desc = "Find File                   ", shortcut = "leader ff", action = "Telescope find_files"},
    {icon = "  ", desc = "File Browser                ", shortcut = "leader fb", action = "Telescope file_browser"},
    {icon = "  ", desc = "Find Word                   ", shortcut = "leader fw", action = "Telescope live_grep"},
    {icon = "  ", desc = "Open Personal dotfiles      ", shortcut = "leader vi", action = "edit $MYVIMRC"}
}

db.custom_footer = { '', '🎉 Have fun with neovim' }
