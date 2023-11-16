-- 快捷键配置
-- 设置 leader key 和 localleader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local vim = vim

local function set_key_map()
    local default_opts = { noremap = true, silent = true }

    local mode_key_map = {
        -- [''] = {},

        ['n'] = {
            ['J'] = '5j',
            ['K'] = '5k',
            ['W'] = '5w',
            ['B'] = '5b',
            ['gh'] = '^',
            ['gl'] = '$',
            ['<Up>'] = '<Cmd>res +5<CR>',
            ['<Down>'] = '<Cmd>res -5<CR>',
            ['<Left>'] = '<Cmd>vertical res -5<CR>',
            ['<Right>'] = '<Cmd>vertical res +5<CR>',
            ['<Esc>'] = '<Cmd>noh<CR><Esc>',
            ['<C-s>'] = '<Cmd>w<CR>',
            ['ga'] = '\'.',

            ['s'] = '<NOP>',
            ['sj'] = '<Cmd>set splitbelow<CR><Cmd>split<CR>',
            ['sk'] = '<Cmd>set nosplitbelow<CR><Cmd>split<CR><Cmd>set splitbelow<CR>',
            ['sh'] = '<Cmd>set splitright<CR><Cmd>vsplit<CR>',
            ['sl'] = '<Cmd>set nosplitright<CR><Cmd>vsplit<CR><Cmd>set splitright<CR>',

            ['<Leader>s'] = '<Cmd>w<CR>',
            --空格键
            ['<Leader><Leader>'] = '<Esc>/<++><CR><Cmd>noh<CR>c4l',
            ['<Leader>A'] = 'maggVG',
            ['<Leader>p'] = '"+p',
            ['<Leader>y'] = '"+yy<CR>',
            ['<Leader>Y'] = 'maggVG"by',
            ['<Leader>i'] = 'f(a',
            ['<Leader>j'] = '<C-d>',
            ['<Leader>k'] = '<C-u>',
            ['<Leader>q'] = '<Cmd>q!<CR>',
            ['<C-S-u>'] = '<ESC>viwUwa',
            ['<C-S-u>'] = '<ESC>viwuwa',
            ['<Leader>vi'] = '<Cmd>vs $MYVIMRC<CR>',
            ['<Leader>vs'] = '<Cmd>source $MYVIMRC<CR>',
            ['<Leader>tu'] = '<Cmd>tabe<CR>',
            ['<Leader>e'] = '<Cmd>NvimTreeToggle<CR>',
            -- move window
            ['<Leader>wj'] = '<C-W>j',
            ['<Leader>wk'] = '<C-W>k',
            ['<Leader>wl'] = '<C-W>l',
            ['<Leader>wh'] = '<C-W>h',
            ['<Leader>q'] = '<Cmd>q<CR>',

            -- buffer line
            ['<Leader>1'] = '<Cmd>BufferLineGoToBuffer 1<CR>',
            ['<Leader>2'] = '<Cmd>BufferLineGoToBuffer 2<CR>',
            ['<Leader>3'] = '<Cmd>BufferLineGoToBuffer 3<CR>',
            ['<Leader>4'] = '<Cmd>BufferLineGoToBuffer 4<CR>',
            ['<Leader>5'] = '<Cmd>BufferLineGoToBuffer 5<CR>',
            ['<Leader>6'] = '<Cmd>BufferLineGoToBuffer 6<CR>',
            ['<Leader>7'] = '<Cmd>BufferLineGoToBuffer 7<CR>',
            ['<Leader>8'] = '<Cmd>BufferLineGoToBuffer 8<CR>',
            ['<Leader>9'] = '<Cmd>BufferLineGoToBuffer 9<CR>',

            ['L'] = '<Cmd>BufferLineCycleNext<CR>',
            ['H'] = '<Cmd>BufferLineCyclePrev<CR>',
            ['<Leader>w'] = '<Cmd>bdelete %<CR>',
            ['<Leader>ww'] = '<Cmd>BufferLineCloseLeft<CR><Cmd>BufferLineCloseRight<CR>',

            ['<Tab>'] = '<Cmd>BufferLineCycleNext<CR>',
            ['<S-Tab>'] = '<Cmd>BufferLineCyclePrev<CR>',
            ['<Leader>bh'] = '<Cmd>BufferLineCloseLeft<CR>',
            ['<Leader>bl'] = '<Cmd>BufferLineCloseRight<CR>',


            -- Telescope
            ['<Leader>ff'] = '<Cmd>Telescope find_files<CR>',
            ['<Leader>fw'] = '<Cmd>Telescope live_grep<CR>',
            ['<Leader>fb'] = '<Cmd>Telescope file_browser<CR>',
            ['<Leader>fm'] = '<Cmd>Telescope marks<CR>',
            ['<Leader>fj'] = '<Cmd>Telescope jumplist<CR>',
            ['<Leader>fr'] = '<Cmd>Telescope oldfiles<CR>',


            ['<Leader>r'] = '<Cmd>NvimTreeRefresh<CR>',

            ['<'] = '<<^',
            ['>'] = '>>^',



            ['<C-t>'] = '<Cmd>TagbarToggle<CR>',

            ['<Leader>`'] = '<Cmd>tabnew<CR><Cmd>terminal<CR><Cmd>startinsert<CR>',

            ['<Leader>j'] = '<Cmd>lua require("material.functions").toggle_style()<CR>',

            -- todo comments
            [']t'] = '<Cmd>lua require("todo-comments").jump_next()<CR>',
            ['[t'] = '<Cmd>lua require("todo-comments").jump_prev()<CR>',
        },

        ['v'] = {
            ['"'] = 'xi"<Esc>pa"<Esc>',
            ['\''] = 'xi\'<Esc>pa\'<Esc>',
            [')'] = 'xi(<Esc>pa)<Esc>',
            ['('] = 'xi(<Esc>pa)<Esc>',
            [']'] = 'xi[<Esc>pa]<Esc>',
            ['['] = 'xi[<Esc>pa]<Esc>',
            ['<'] = 'xi<<Esc>pa><Esc>',
            ['>'] = 'xi<<Esc>pa><Esc>',
            ['{'] = 'xi{<Esc>pa}<Esc>',
            ['}'] = 'xi{<Esc>pa}<Esc>',
            ['gh'] = "^",
            ['gl'] = "$"
        },

        ['i'] = {
            ['<C-s>'] = '<Esc><Cmd>w<CR>a',
            ['<C-h>'] = '<Left>',
            ['<C-l>'] = '<Right>',
            ['<C-j>'] = '<Down>',
            ['<C-k>'] = '<Up>',
            [',;'] = '<ESC>A;<ESC>'
        },

        ['o'] = {
            -- you can use this to delete block inside
            -- eg: d{, can delete text in {} block, include {}
            -- eg: y}, yank only text in {} block
            ['{'] = 'aB',
            ['}'] = 'iB',
            ['('] = 'ab',
            [')'] = 'ib',
            ['['] = 'a[',
            [']'] = 'i[',
            ['<'] = 'a<',
            ['>'] = 'i<',
            ['"'] = 'a"',
            ['\''] = 'a\'',
        },

        ['t'] = {
            ['<Esc>'] = '<C-\\><C-n>',
            ['<C-w>'] = '<C-\\><C-n><Cmd>BufferLinePickClose<CR>z'
        },
    }

    for k, v in pairs(mode_key_map) do
        for k_, v_ in pairs(v) do
            vim.api.nvim_set_keymap(k, k_, v_, default_opts)
        end
    end
end

set_key_map()


-- lsp 快捷键定义, 在nvimtree.lua中用到
local pluginKeys = {}

pluginKeys.nvimTreeList = {
    -- 打开文件或文件夹
    --{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" },
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" },
    { key = "e", action = "edit" },
    -- 分屏打开文件
    { key = "s", action = "vsplit" },
    -- 显示隐藏文件
    { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
    { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
    -- 文件操作
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    { key = "o", action = "system_open" },
}
return pluginKeys
