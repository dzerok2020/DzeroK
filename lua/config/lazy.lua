local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		-- add nvim-lazy and import its plugins
		{ "dzerok2020/nvim-lazy", import = "nvim-lazy.plugins" },
		-- import any extras modules here
		-- { import = "nvim-lazy.plugins.extras.lang.typescript" },
		-- { import = "nvim-lazy.plugins.extras.lang.json" },
		-- { import = "nvim-lazy.plugins.extras.ui.mini-animate" },
		-- { import = "nvim-lazy.plugins.extras.coding.copilot" },
		-- { import = "nvim-lazy.plugins.extras.formatting.prettier" },
		-- { import = "nvim-lazy.plugins.extras.linting.eslint" },
		-- pomodoro option 1
		-- { import = "nvim-lazy.plugins.extras.pommodoro.pomodoro-clock" },
		-- pomodoro option 2
		-- { import = "nvim-lazy.plugins.extras.pommodoro.pomodoro" },
		-- import/override with your plugins
		{ import = "plugins" },
	},
	defaults = {
		-- By default, only nvim-lazy plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	install = { colorscheme = { "tokyonight", "habamax" } },
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
