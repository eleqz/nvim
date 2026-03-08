local k = vim.keymap

k.set("n", "<leader>nh", ":nohl<CR>")

k.set("n", "<C-h>", "<C-w>h", { silent = true })
k.set("n", "<C-l>", "<C-w>l", { silent = true })
k.set("n", "<C-j>", "<C-w>j", { silent = true })
k.set("n", "<C-k>", "<C-w>k", { silent = true })

k.set("n", "<ScrollWheelUp>", "k")
k.set("n", "<ScrollWheelDown>", "j")

k.set("n", "<leader>w", ":w<CR>")
k.set("n", "<leader>q", ":q<CR>")
k.set("n", "<leader>qa", ":wqa<CR>")

k.set("n", "<leader>e", ":NvimTreeToggle<CR>")

k.set("n", "<leader>n", function() MiniNotify.show_history() end)
