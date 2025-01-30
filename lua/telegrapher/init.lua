require("telegrapher.set")
require("telegrapher.remap")
require("telegrapher.lazy_init")

-- Create named groups of commands
local augroup = vim.api.nvim_create_augroup
local TelegrapherGroup = augroup('Telegrapher', {})

-- A group of commands for yanking
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

-- Function to reload module during dev
function R(name)
    require("plenary.reload").reload_module(name)
end

-- Custom filetype for templ
vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})


-- Remove trailing whitespace on save
autocmd({"BufWritePre"}, {
    group = TelegrapherGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


-- Change colorscheme based on filetype
--[[autocmd('BufEnter', {
    group = TelegrapherGroup,
    callback = function()
        if vim.bo.filetype == "zig" then
            vim.cmd.colorscheme("tokyonight-night")
        else
            vim.cmd.colorscheme("rose-pine-moon")
        end
    end
})]]


autocmd('LspAttach', {
    group = TelegrapherGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
	-- Jump to definition
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	-- Hover information
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	-- Navigate diagnostics
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

-- Netrw configuration
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.cmd.colorscheme("gruvbox")
--vim.cmd.colorscheme("wombat256mod")
