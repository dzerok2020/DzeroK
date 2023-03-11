return {
  {
    "jackMort/ChatGPT.nvim",
    commit = '8820b99c',
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    lazy = true,
    event = "VeryLazy",
    opts = function()
      require("chatgpt").setup({})
    end
  }
}
