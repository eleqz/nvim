return {
  "nvim-mini/mini.nvim",
  config = function()
    require("mini.notify").setup()
    require("mini.icons").setup()
    require("mini.tabline").setup()
    require("mini.comment").setup()
    require("mini.completion").setup()
    require("mini.pick").setup()
    require("mini.surround").setup()
  end,
}
