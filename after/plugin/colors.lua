
function Change_color (color)
	color = color or "rose-pine"

-- make back ground transparent.
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

--	vim.cmd("colorscheme " .. color)
	vim.cmd.colorscheme(color)
end

Change_color()
