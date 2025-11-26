return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"jay-babu/mason-null-ls.nvim", -- connects mason -> none-ls
	},

	config = function()
		local null_ls = require("null-ls")

		-- Connect Mason tools to none-ls
		require("mason-null-ls").setup({
			ensure_installed = {
				-- JS
				"prettier",
				"eslint_d",

				-- Lua
				"stylua",

				-- Python
				"isort",
				"pylint",

				-- Go
				"gofumpt",
				"golangci-lint",

				-- C / general
			},
			automatic_installation = true,
		})

		-- none-ls setup (this activates real linting/formatting)
		null_ls.setup({
			sources = {

				-------------------------------------------------------------------
				-- JavaScript / TypeScript
				-------------------------------------------------------------------
				null_ls.builtins.formatting.prettier, -- runs prettier
				null_ls.builtins.diagnostics.eslint_d, -- linting
				null_ls.builtins.code_actions.eslint_d, -- code fixes

				-------------------------------------------------------------------
				-- Lua
				-------------------------------------------------------------------
				null_ls.builtins.formatting.stylua,

				-------------------------------------------------------------------
				-- Python
				-------------------------------------------------------------------
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.pylint,

				-------------------------------------------------------------------
				-- Go
				-------------------------------------------------------------------
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.diagnostics.golangci_lint,

				-------------------------------------------------------------------
				-- C / C++
				-------------------------------------------------------------------
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "c", "cpp", "objc", "objcpp" },
				}),
				-- null_ls.builtins.diagnostics.cpplint.with({
				--	filetypes = { "c", "cpp" },
				--}),
			},

			-- auto format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})
	end,
}
