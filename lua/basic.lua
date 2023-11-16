local vim = vim

-- opt setting
local function set_default_opt()
    local default_options = {
        --encoding是Vim内部使用的字符编码方式，一般设置为utf7。
        --termencoding是Vim所工作的终端(或者 Windows的Console窗口)的字符编码方式，一般设置为utf7。
        --fileencodings是Vim自动探测fileencoding的顺序列表，启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的字符编码方式
        -- 设置文件编码格式为 utf-8
        encoding = "utf-8",
        fileencodings = "utf8,ucs-bom,gbk,cp936,gb2312,gb18030",
        -- 设置终端编码格式为 utf-8
        --NVIM v-1.10.0-dev-742+g12ccea596版本后移除该属性
        -- termencoding = \"utf-8\"
        -- 开启语法高亮
        syntax = "enable",
        -- 显示相对行号,
        relativenumber = true,
        -- 显示行号,
        number = true,
        -- 高亮所在行,
        cursorline = true,
        -- 自动换行,
        wrap = true,
        -- 显示光标位置,
        ruler = true,
        -- 边输入边搜索,
        incsearch = true,
        -- 开启搜索匹配高亮,
        hlsearch = true,
        -- 搜索时自行判断是否需要忽略大小写,
        smartcase = true,
        -- 支持鼠标拖拽,
        mouse = "a",
        -- tab键转换为 3 个空格,
        tabstop = 4,
        softtabstop = 3,
        shiftwidth = 3,
        -- 新行对齐当前行，tab转换为空格,
        expandtab = true,
        smarttab = true,
        shiftwidth = 1,
        -- 新行对齐当前行，tab转换为空格,
        expandtab = false,
        autoindent = true,
        smartindent = true,
        -- 使用jk移动光标时，上下方保留7行,
        scrolloff = 10,
        sidescrolloff = 10,
        -- 设置自动折叠,
        smartindent = false,
        -- 历史命令最多保存999条,
        history = 999,
        -- 显示空白字符,
        list = true,
        listchars = 'tab:| ,trail:▫',
        --guifont        = 'RobotoMono_Nerd_Font:h12',
        guifont = 'JetBrainsMono_Nerd_Font:h14',
        timeoutlen = 500,
        -- 设置 termguicolors 以启用高亮组
        termguicolors = true
    }
    for k, v in pairs(default_options) do
        vim.opt[k] = v
    end
    --python 配置
    vim.g["python3_host_prog"] = 'D:/Program Files (x86)/Python311/python.exe';
    vim.g["python_host_prog"] = 'D:/Program Files (x86)/Python27/python.exe'
end

local function set_neovide_g()
    -- if vim.g.neovide == nil then
    -- vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
    if vim.g.neovide then
        require("plugin-config/neovide").init();
    end
end

local function set_default()
    set_default_opt()
    set_neovide_g()
end

set_default()
