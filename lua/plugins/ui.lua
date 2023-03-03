return {
	{
		"luisiacc/gruvbox-baby",
    init = function()
      require("config.gruvbox-baby")
    end,
	},
	{
		"dzerok2020/nvim-lazy",
		opts = {
			colorscheme = "gruvbox-baby",
		},
	},
}
