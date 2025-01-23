-- Set space as leader
vim.g.mapleader = " "
-- Launches netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moves selected block of text one line, selection still active and reindents
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines without losing the cursor position
vim.keymap.set("n", "J", "mzJ`z")
-- Scroll up/down half a page and recenters the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Advance to next/prev match and centers the cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Paste without overwriting the unnamed register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to the system clipboard (+ register)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Copy entire line to the system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without overwriting the unnamed register
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- Disable Q, recorded macros
vim.keymap.set("n", "Q", "<nop>")
-- Run tmux-sessionizer in a new tmux window
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format the current buffer using the LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate through quickfix + center view
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Navigate through location list + center view
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace for the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Inject error-handling patterns
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set(
    "n",
    "<leader>ea",
    "oassert.NoError(err, \"\")<Esc>F\";a"
)

vim.keymap.set(
    "n",
    "<leader>ef",
    "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
)

vim.keymap.set(
    "n",
    "<leader>el",
    "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
)

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Reload current config
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
