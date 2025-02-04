-- Tokyonight
-- return {
--   "folke/tokyonight.nvim",
--   config = function()
--     vim.cmd.colorscheme("tokyonight")
--   end,
-- }

-- Onedarkpro
-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000, -- Ensure it loads first
--   config = function()
--     vim.cmd.colorscheme("onedark")
-- }
--
-- Rose Pine
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
}
