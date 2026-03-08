local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local k = vim.keymap

mason.setup()
mason_lsp.setup({ ensure_installed = { "lua_ls", "bashls", "tinymist" } })

local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  k.set("n", "gd", vim.lsp.buf.definition, opts)
  k.set("n", "K", vim.lsp.buf.hover, opts)
  k.set("n", "gi", vim.lsp.buf.implementation, opts)
  k.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  k.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  k.set("n", "gr", vim.lsp.buf.references, opts)
end

-- Lua
vim.lsp.config('lua_ls', {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = {"vim"} },
      workspace = { checkThirdParty = false },
    },
  },
})
vim.lsp.enable('lua_ls')

-- Bash
vim.lsp.config('bashls', { on_attach = on_attach })
vim.lsp.enable('bashls')

-- TinyMist
vim.lsp.config('tinymist', { on_attach = on_attach })
vim.lsp.enable('tinymist')
