return {
  "nvimdev/dashboard-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        week_header = { enable = true },
        shortcut = {
          {
            desc = "Files",
            key = "f",
            action = "lua MiniPick.builtin.files()",
          },
          {
            desc = "Quit",
            key = "q",
            action = "qa",
          },
        },
      },
    })
  end,
}
