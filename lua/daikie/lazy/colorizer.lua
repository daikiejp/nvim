return {
	"catgoose/nvim-colorizer.lua",
	enable = true,
	event = "BufRead",
	config = function()
		require("colorizer").setup({ "*" }, {
			names = true,
			names_custom = true,
			RGB = true,
            RGBA = true,
			RRGGBB = true,
			RRGGBBAA = true,
			rgb_fn = true,
			hsl_fn = true,
			css = true,
			css_fn = true,
			sass = true,
			sass_fn = true,
			scss = true,
			scss_fn = true,
			tailwind = true,
			tailwind_opts = { update_names = true },
		})
	end,
}
