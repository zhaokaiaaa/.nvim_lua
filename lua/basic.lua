--encoding是Vim内部使用的字符编码方式，一般设置为utf8。
--termencoding是Vim所工作的终端(或者 Windows的Console窗口)的字符编码方式，一般设置为utf8。
--fileencodings是Vim自动探测fileencoding的顺序列表，启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的字符编码方式
-- 设置文件编码格式为 utf-8
vim.o.encoding = "utf-8"
vim.o.fileencodings = "utf8,ucs-bom,gbk,cp936,gb2312,gb18030"
-- 设置终端编码格式为 utf-8
--NVIM v0.10.0-dev-742+g12ccea596版本后移除该属性
--vim.o.termencoding = "utf-8"
-- 开启语法高亮
vim.o.syntax = "enable"
-- 显示相对行号
vim.o.relativenumber = true
-- 显示行号
vim.o.number = true
-- 高亮所在行
vim.o.cursorline = true
-- 自动换行
vim.o.wrap = true
-- 显示光标位置
vim.o.ruler = true
-- 边输入边搜索
vim.o.incsearch = true
-- 开启搜索匹配高亮
vim.o.hlsearch = true
-- 搜索时自行判断是否需要忽略大小写
vim.o.smartcase = true
-- 支持鼠标拖拽
vim.o.mouse = "a"
-- tab键转换为 4 个空格
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- 新行对齐当前行，tab转换为空格
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.tabstop = 2
vim.o.smarttab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
-- 新行对齐当前行，tab转换为空格
vim.o.expandtab = false
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 使用jk移动光标时，上下方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 设置自动折叠
vim.o.smartindent = true
-- 历史命令最多保存1000条
vim.o.history = 1000
-- 显示空白字符
vim.o.list = true
vim.o.listchars = 'tab:|\\ ,trail:▫'
--python 配置
vim.g.python3_host_prog = 'D:/Program Files (x86)/Python311/python.exe'
vim.g.python_host_prog = 'D:/Program Files (x86)/Python27/python.exe'