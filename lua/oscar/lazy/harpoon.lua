return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>A", function()
			harpoon:list():prepend()
		end, { desc = "Add file to start of harpoon list" })
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add file to end of harpoon list" })
		vim.keymap.set("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle harpoon quick menu" })
		vim.keymap.set("n", "<A-u>", function()
			harpoon:list():select(1)
		end, { desc = "Select harpoon item 1" })
		vim.keymap.set("n", "<A-i>", function()
			harpoon:list():select(2)
		end, { desc = "Select harpoon item 2" })
		vim.keymap.set("n", "<A-o>", function()
			harpoon:list():select(3)
		end, { desc = "Select harpoon item 3" })
		vim.keymap.set("n", "<A-p>", function()
			harpoon:list():select(4)
		end, { desc = "Select harpoon item 4" })
		vim.keymap.set("n", "<leader>u", function()
			harpoon:list():replace_at(1)
		end, { desc = "Replace harpoon item 1" })
		vim.keymap.set("n", "<leader>i", function()
			harpoon:list():replace_at(2)
		end, { desc = "Replace harpoon item 2" })
		vim.keymap.set("n", "<leader>o", function()
			harpoon:list():replace_at(3)
		end, { desc = "Replace harpoon item 3" })
		vim.keymap.set("n", "<leader>p", function()
			harpoon:list():replace_at(4)
		end, { desc = "Replace harpoon item 4" })
	end,
}
