vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- vim.opt.swapfile = false
-- vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Highlight search
vim.opt.hlsearch = false
-- Incremental search
vim.opt.incsearch = true

-- Enable 4bit color
vim.opt.termguicolors = true
-- Enable column at 110 chars
vim.opt.colorcolumn = "110"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- vim.opt.updatetime = 50

