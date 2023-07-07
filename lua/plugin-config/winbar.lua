local api = require("dropbar.api")
vim.keymap.set('n', '<Leader>;', api.pick)
vim.keymap.set('n', '[c', api.goto_context_start)
vim.keymap.set('n', ']c', api.select_next_context)