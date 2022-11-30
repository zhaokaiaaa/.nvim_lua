<<<<<<< HEAD
-- 配置文件入口,主要负责加载其他配置文件
require("basic")
require("keybindings")
require("autocmd")
require("plugins")
require("plugin-config/tokyonight")
require("plugin-config/buffer")
require("plugin-config/nvimtree")
require("plugin-config/lualine")
require("plugin-config/dashboard")
require("plugin-config/whichkey")
require("plugin-config/toggleterm")
require("plugin-config/telescope")
require("plugin-config/auto_session")
require("plugin-config/treesitter")
require("plugin-config/cmp")
require("plugin-config/lspsaga")
require("plugin-config/symbols_outline")
require("plugin-config/mason")
require("plugin-config/dap-config")
require("plugin-config/dap-ui")

-- 启用主题
=======
-- 配置文件入口,主要负责加载其他配置文件
require("basic")
require("keybindings")
require("autocmd")
require("plugins")
require("plugin-config/tokyonight")
require("plugin-config/buffer")
require("plugin-config/nvimtree")
require("plugin-config/lualine")
require("plugin-config/dashboard")
require("plugin-config/whichkey")
require("plugin-config/toggleterm")
require("plugin-config/telescope")
require("plugin-config/auto_session")
require("plugin-config/treesitter")
require("plugin-config/cmp")
require("plugin-config/lspsaga")
require("plugin-config/symbols_outline")
require("plugin-config/mason")
require("plugin-config/dap-config")
require("plugin-config/dap-ui")

-- 启用主题
>>>>>>> c55dfe196161d075ee4258a0b846acfdf8ed5f10
vim.cmd[[colorscheme tokyonight]]