local wk = require("which-key")
wk.setup({
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        spelling = {
            enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
            suggestions = 30, -- how many suggestions should be shown in the list?
        },
        presets = {
            operators = true, -- adds help for operators like d, y, ...
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
        },
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    operators = { gc = "Comments" },
    key_labels = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        -- For example:
        -- ["<space>"] = "SPC",
        -- ["<cr>"] = "RET",
        -- ["<tab>"] = "TAB",
    },
    motions = {
        count = true,
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = ">", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
    popup_mappings = {
        scroll_down = "<c-d>", -- binding to scroll down inside the popup
        scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 5, 5, 5 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 5, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    },
    layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 4, -- spacing between columns
        align = "center", -- align columns left, center or right
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
    show_help = true, -- show a help message in the command line for using WhichKey
    show_keys = true, -- show the currently pressed key and its label as a message in the command line
    triggers = "auto", -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specifiy a list manually
    -- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
    triggers_nowait = {
        -- marks
        "`",
        "'",
        "g`",
        "g'",
        -- registers
        '"',
        "<c-r>",
        -- spelling
        "z=",
    },
    triggers_blacklist = {
        -- list of mode / prefixes that should never be hooked by WhichKey
        -- this is mostly relevant for keymaps that start with a native binding
        i = { "j", "k" },
        v = { "j", "k" },
    },
    -- disable the WhichKey popup for certain buf types and file types.
    -- Disabled by deafult for Telescope
    disable = {
        buftypes = {},
        filetypes = {},
    },

})
local optsHasLeader = {
    mode = "n", -- NORMAL mode
    -- prefix: use "<leader>f" for example for mapping everything related to finding files
    -- the prefix is prepended to every mapping part of `mappings`
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
}

local optsNoLeader = {
    mode = "n", -- NORMAL mode
    -- prefix: use "<leader>f" for example for mapping everything related to finding files
    -- the prefix is prepended to every mapping part of `mappings`
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
}

local optsNoLeader_insert = {
    mode = "i", -- NORMAL mode
    -- prefix: use "<leader>f" for example for mapping everything related to finding files
    -- the prefix is prepended to every mapping part of `mappings`
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
}
--首个注册器主要作用是提示作用，具体快捷键配置在下面的注册器里
wk.register({
    h = {
        name = "help",
        n = {
            name = "nmap",
            l = {
                name = "need leader",
                A = { "maggVG", "Select All" },
                Y = { "maggVG\"by", "Copy All" },
                P = { "\"bp", "Paste From CopyAll" },
                i = { "f(a", "Insert after (" },
                j = { "<C-d>", "Page Down" },
                k = { "<C-u>", "Page Up" },
                q = { ":q!<CR>", "Quit and Not save" },
                ["<leader>"] = { "Jump to the next '<++>' and Edit it" },
                ["<wq>"] = { ":w<CR>:q<CR>", "Quit and Save" },
                ["<vi>"] = { ":vs $MYVIMRC<CR>", "快速打开vimrc文件" },
                ["<lo>"] = { ":source $MYVIMRC<CR>", "重新加载vimrc文件" },
                ["<CR>"] = { ":nohlsearch<CR>", "清除高亮" },
            },
            n = {
                name = "no leader",
                ["<ga>"] = { "'.", "last changed in current buffer(file)" },
                H = { ":BufferLineCyclePrev<CR>", "BufferLineCyclePrev" },
                L = { ":BufferLineCycleNext<CR>", "BufferLineCycleNext" },
                ["<C-S-L>"] = { ":Vista<CR>", "Vista" },
            }
        },
        i = {
            name = "imap",
            l = {
                name = "need leader",
            },
            n = {
                name = "no leader",
                [","] = {
                    [";"] = { "<ESC>A;<ESC>", "行尾增加;" },
                    c = {
                        name = "Convert case",
                        u = { "<esc>viwUwa", "转为大写" },
                        l = { "<esc>viwuwa", "转为小写" },
                    }
                }
            }
        }
    },
}, optsHasLeader)
--自定义快捷键
--带有leader
wk.register({
    --回车键
    ["\r"] = { ":nohlsearch<CR>", "清除高亮" },
    --空格键
    [" "] = { "<Esc>/<++><CR>:nohlsearch<CR>c4l", "Jump to the next '<++>' and Edit it" },
    e = { ":NvimTreeToggle<CR>", "open browser" },
    A = { "maggVG", "Select All" },
    Y = { "maggVG\"by", "Copy All" },
    P = { "\"bp", "Paste From CopyAll" },
    i = { "f(a", "Insert after (" },
    j = { "<C-d>", "Page Down" },
    k = { "<C-u>", "Page Up" },
    q = { ":q!<CR>", "Quit and Not save" },
    c = {
        name = "Convert case",
        u = { "<esc>viwUwa", "转为大写" },
        l = { "<esc>viwuwa", "转为小写" },
    },
    v = {
        name = "vimrc",
        i = { ":vs $MYVIMRC<CR>", "快速打开vimrc文件" },
        s = { ":source $MYVIMRC<CR>", "重新加载vimrc文件" },
    },
    t = {
        name = "tab options",
        u = { ":tabe<CR>", "New tab" },
    },
    s = { ":w<CR>", "save" },
}, optsHasLeader)
--不带有leader
wk.register({
    g = {
        name = "location",
        a = { "'.", "last changed in current buffer(file)" }
    }
}, optsNoLeader)

----------------------------------------------------------------
--插件支持的快捷键
-- 快速在buffer间跳转
wk.register({
    ["b"] = {
        name = "buffer options",
        ['1'] = { ":BufferLineGoToBuffer 1<CR>", "go buffer" },
        ['2'] = { ":BufferLineGoToBuffer 2<CR>", "go buffer" },
        ['3'] = { ":BufferLineGoToBuffer 3<CR>", "go buffer" },
        ['4'] = { ":BufferLineGoToBuffer 4<CR>", "go buffer" },
        ['5'] = { ":BufferLineGoToBuffer 5<CR>", "go buffer" },
        ['6'] = { ":BufferLineGoToBuffer 6<CR>", "go buffer" },
        ['7'] = { ":BufferLineGoToBuffer 7<CR>", "go buffer" },
        ['8'] = { ":BufferLineGoToBuffer 8<CR>", "go buffer" },
        ['9'] = { ":BufferLineGoToBuffer 9<CR>", "go buffer" },
        g = { ":BufferLinePick<CR>", "BufferLinePick" },
        c = { ":bdelete %<CR>", "close buffer" },
        p = { ":BufferLinePickClose<CR>", "BufferLinePickClose" },
        o = { ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>", "close other buffer" },
    }, }, optsHasLeader)
wk.register({
    H = { ":BufferLineCyclePrev<CR>", "BufferLineCyclePrev" },
    L = { ":BufferLineCycleNext<CR>", "BufferLineCycleNext" },
    ["<C-A-l>"] = { ":Vista<CR>", "Vista" },
    ["<F5>"] = { ":UndotreeToggle<CR>", "修改历史" },
}, optsNoLeader)

wk.register({
    ["f"] = {
        name = "file options",
        f = { "<Cmd>Telescope find_files<CR>", "Find File" },
        w = { "<Cmd>Telescope live_grep<CR>", "Find Word" },
        r = { "<Cmd>Telescope oldfiles<CR>", "Recently opened files" },
        b = { "<Cmd>Telescope file_browser<CR>", "File Browser" },
        m = { "<Cmd>Telescope marks<CR>", "File Marks" },
        j = { "<Cmd>Telescope jumplist<CR>", "Telescope jumplist" },
    },
}, optsHasLeader)

wk.register({
    ["w"] = {
        name = "window options",
        j = { "<C-W>j", "Cursor to below window" },
        k = { "<C-W>k", "Cursor to up window" },
        h = { "<C-W>h", "Cursor to left window" },
        l = { "<C-W>l", "Cursor to right window" },
        q = { ":w<CR>:q<CR>", "Quit and Save" },
    },
}, optsHasLeader)

wk.register({
    s = { "<NOP>", "取消s键位默认功能" },
    ["s"] = {
        name = "split options",
        j = { ":set splitbelow<CR>:split<CR>", "split below and go to this split" },
        k = { ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", "split up and go to this split" },
        h = { ":set splitright<CR>:vsplit<CR>", "split left and go to this split" },
        l = { ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", "split right and go to this split" },
    },
}, optsNoLeader)

wk.register({
    [","] = {
        [";"] = { "<ESC>A;<ESC>", "行尾增加;" },
        c = {
            name = "Convert case",
            u = { "<esc>viwUwa", "转为大写" },
            l = { "<esc>viwuwa", "转为小写" },
        }
    },
}, optsNoLeader_insert)

vim.o.timeoutlen = 500
