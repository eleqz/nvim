return {
  "nvim-mini/mini.nvim",
  config = function()
    require("mini.notify").setup({
      window = {
        config = {
          anchor = "SE",
          row = vim.o.lines,
          col = vim.o.columns,
        },
        winblend = 100,
      },
    })
    require("mini.icons").setup()
    require("mini.tabline").setup()
    require("mini.comment").setup()
    require("mini.completion").setup()
    require("mini.pick").setup()
    require("mini.surround").setup()
  end,
}
