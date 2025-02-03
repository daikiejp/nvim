vim.g.mapleader = " "

local keymap = vim.keymap

-- M for on_attach (LSP)
local M = {}

-- File Explorer
keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Scroll and Center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Navigation and Center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy, Paste, Delete
--vim.keymap.set({ "n", "v" }, "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", '\"_dw')

-- Exit and Save Histoy
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Move Lines 
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replace Text All File
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make Executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Next, Prev. Linter, Error, Result, Test, Formatter
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>pf", "<cmd>Telescope git_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- UndoTree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Harpoon
keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end)
keymap.set("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end)

keymap.set("n", "<C-j>", function() require("harpoon.ui").nav_file(1) end)
keymap.set("n", "<C-k>", function() require("harpoon.ui").nav_file(2) end)
keymap.set("n", "<C-l>", function() require("harpoon.ui").nav_file(3) end)
keymap.set("n", "<C-ñ>", function() require("harpoon.ui").nav_file(4) end)

-- Git Signs
keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>")
keymap.set("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<cr>")

-- Cellular automaton
keymap.set("n", "<C-F>", "<cmd>CellularAutomaton make_it_rain<cr>")

---Formatter
keymap.set({"n", "v"}, "<leader>fo", function() require("conform").format({ bufnr = 0 }) end)

-- LSP actions
M.on_attach = function(_, bufnr)
  local bufmap = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
  end

  bufmap("n", "K", vim.lsp.buf.hover, "LSP Hover")
  bufmap("n", "gd", vim.lsp.buf.definition, "LSP Go to Definition")
  bufmap("n", "<leader>ca", vim.lsp.buf.code_action, "LSP Code Action")
  --bufmap("n", "<leader>rn", vim.lsp.buf.rename, "LSP Rename")
  bufmap("n", "[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
  bufmap("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
  bufmap("n", "<leader>z", vim.diagnostic.open_float, "Diagnostic Float")
end

return M
