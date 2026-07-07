local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local k = vim.keymap

mason.setup()
mason_lsp.setup({ ensure_installed = { "lua_ls", "bashls", "rust-analyzer", "tinymist" } })

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
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
      diagnostics = { globals = { "vim" } },
      workspace = { checkThirdParty = false },
    },
  },
})
vim.lsp.enable('lua_ls')

-- Bash
vim.lsp.config('bashls', { on_attach = on_attach })
vim.lsp.enable('bashls')

-- Rust
vim.lsp.config('rust_analyzer', { on_attach = on_attach })
vim.lsp.enable('rust_analyzer')

-- TinyMist
vim.lsp.config('tinymist', { on_attach = on_attach })
vim.lsp.enable('tinymist')

-- Format on save
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end

    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf })
        end,
      })
    end
  end,
})
