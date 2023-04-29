local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Use ":Mason" to manage
lsp.ensure_installed(
{
	"clangd",
	"rust_analyzer",
	"cmake",
	"cmake-language-server",
	-- DAP
	"codelldb",
	"cpptools",
	-- Linter
	"cmakelang",
	"cpplint",
	-- Format 
	"clang-format"	
}
)


local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

local cmd_mapping = lsp.defaults.cmp_mappings(
{
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({select = true}),
	['<C-Space>'] = cmp.mapping.complete(),
}
)


lsp.setup_nvim_cmp = (
{
	mapping = cmd_mapping
}
)


lsp.setup()
