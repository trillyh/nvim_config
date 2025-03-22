local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd("source " .. vimrc)
require("core.keymaps")
require("core.plugins")
require("core.plugins_config")
