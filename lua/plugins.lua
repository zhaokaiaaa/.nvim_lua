-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/AppData/Local/nvim-data/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("正在安装Pakcer.nvim，请稍后...")
    paccker_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
    if not string.find(vim.o.runtimepath, rtp_addition) then
        vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
    end
    vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("没有安装 packer.nvim")
    return
end
-- 插件管理文件
packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --启动页面
    use { 'glepnir/dashboard-nvim' }
    --文件和文本搜索
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' }, {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                require('nvim-treesitter.install').update({ with_sync = true })
            end,
        } }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    -- 主题配置
    use { "ellisonleao/gruvbox.nvim" }
    -- 标签页显示
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    --标签页下的文件显示
    use { 'Bekaboo/dropbar.nvim' }
    -- 目录管理
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- 底部状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --快速跳转
    use { "ggandor/leap.nvim" }
    use { "ggandor/flit.nvim" }
    -- markdown预览
    use({ 'iamcco/markdown-preview.nvim', run = "cd app && npm install", setup = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end, ft = { "markdown" }, })
    use { 'preservim/vim-markdown' }
    --为 Markdown 文件生成目录
    use { 'mzlogin/vim-markdown-toc' }
    -- 自动表格创建器和格式化程序
    use { 'dhruvasagar/vim-table-mode' }
    -- 照片
    use { 'img-paste-devs/img-paste.vim' }
    --代码片段
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }
    --目录栏
    use { 'liuchengxu/vista.vim' }
    use { 'SirVer/ultisnips' }
    --目录栏
    use { 'liuchengxu/vista.vim' }
    use { 'universal-ctags/ctags' }
    -- 格式化代码
    use { 'vim-autoformat/vim-autoformat' }
    --修改历史
    use { 'mbbill/undotree' }
    --surround
    use { 'tpope/vim-surround' }
    --多鼠标
    use { 'mg979/vim-visual-multi', branch = 'master' }
    --快捷键提示
    use { "folke/which-key.nvim" }
    if paccker_bootstrap then
        packer.sync()
    end
end)
