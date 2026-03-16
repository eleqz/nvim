return {
  "nvimdev/dashboard-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        shortcut = {
          {
            desc = "󰱼 Find Files",
            group = "Label",
            key = "f",
            action = "lua require('fzf-lua').files()",
          },
          {
            desc = "󰺮 Live Grep",
            group = "Label",
            key = "g",
            action = "lua require('fzf-lua').live_grep()",
          },
          {
            desc = "󰋚 Recent Files",
            group = "Label",
            key = "r",
            action = "lua require('fzf-lua').oldfiles()",
          },
          {
            desc = "󰗼 Quit",
            group = "Label",
            key = "q",
            action = "qa",
          },
        },
      },
    })
  end,
}
