return {
	"ThePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon.setup({
			settings = {
				save_on_toggle = false,
				sync_on_ui_close = true,
				key = function()
					return vim.loop.cwd()
				end,
			},
		})

		-- Keymaps for Harpoon
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<leader>x", function()
			harpoon:list():remove()
		end)
		vim.keymap.set("n", "<leader>ll", function()
			harpoon:list():clear()
		end)
		vim.keymap.set("n", "<C-t>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		vim.keymap.set("n", "<C-q>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-w>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-r>", function()
			harpoon:list():select(4)
		end)
		vim.keymap.set("n", "<C-f>", function()
			harpoon:list():select(5)
		end)
		vim.keymap.set("n", "<C-c>", function()
			harpoon:list():select(6)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
}
