vim.g.mapleader = " "

local keymap = vim.keymap

-- M for on_attach (LSP)
local M = {}

-- File Explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move Lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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

-- Git
keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Git Signs
keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>")
keymap.set("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<cr>")

-- Cellular automaton
keymap.set("n", "<C-F>", "<cmd>CellularAutomaton make_it_rain<cr>")

-- LSP actions
M.on_attach = function(_, bufnr)
  local bufmap = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
  end

  bufmap("n", "K", vim.lsp.buf.hover, "LSP Hover")
  bufmap("n", "gd", vim.lsp.buf.definition, "LSP Go to Definition")
  bufmap("n", "<leader>ca", vim.lsp.buf.code_action, "LSP Code Action")
  --bufmap("n", "<leader>rn", vim.lsp.buf.rename, "LSP Rename")
  --bufmap("n", "[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
  --bufmap("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
  --bufmap("n", "<leader>e", vim.diagnostic.open_float, "Diagnostic Float")
end

return M
