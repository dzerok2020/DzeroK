return {
	{
		"jackMort/ChatGPT.nvim",
		-- commit = '8820b99c',
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
		lazy = true,
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				keymaps = {
					submit = "<C-e>",
				},
			})
		end,
	},
}
