return {
  {
    "jackMort/ChatGPT.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    lazy = true,
    event = "VeryLazy",
    opts = function()
      require("chatgpt").setup({})
    end
  }
}
