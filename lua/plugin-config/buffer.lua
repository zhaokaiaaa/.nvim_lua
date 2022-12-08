vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "buffers",
        numbers = "ordinal",
        -- 左侧让出 nvim-tree 位置
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
}
