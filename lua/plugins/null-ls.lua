return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "mason.nvim" },
		opts = function()
			local nls = require("null-ls")
			return {
				sources = {
					nls.builtins.formatting.prettierd,
					nls.builtins.diagnostics.eslint_d.with({
						diagnostics_format = "[eslint] #{m}\n(#{c})",
					}),
				},
			}
		end,
	},
}
