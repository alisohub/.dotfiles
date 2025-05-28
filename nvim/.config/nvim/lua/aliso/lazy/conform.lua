return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
				python = { "black" },
				rust = { "rustfmt" },
            },
			vim.keymap.set("n", "<leader>lf", function()
				conform.format()
			end)
        })
    end
}

