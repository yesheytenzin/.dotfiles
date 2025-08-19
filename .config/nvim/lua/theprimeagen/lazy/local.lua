local local_plugins = {
	--{
	--    "vim-guys",
	--    dir = "~/personal/vim-guys",
	--    config = function()
	--    end,
	--},
	--{
	--    "cockpit",
	--    dir = "~/personal/cockpit",
	--    config = function()
	--        require("cockpit")
	--        vim.keymap.set("n", "<leader>ct", "<cmd>CockpitTest<CR>")
	--        vim.keymap.set("n", "<leader>cr", "<cmd>CockpitRefresh<CR>")
	--    end,
	--},

	--{
	--	"streamer",
	--	dir = "~/personal/eleven-streamer",
	---	config = function()
	--		vim.keymap.set("n", "<leader>er", function()
	--			require("streamer").reload()
	--		end)
	--		vim.keymap.set("n", "<leader>es", function()
	--			require("streamer").twitch_dashboard()
	--		end)
	--		vim.keymap.set("n", "<leader>en", function()
	--			require("streamer").twitch_dashboard():stop()
	--		end)
	--	end,
--	},

--	{
	--	"caleb",
	--	dir = "~/personal/caleb",
	--	config = function() end,
	--},
	{
        "ThePrimeagen/harpoon",
        branch="harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()

			vim.keymap.set("n", "<leader>A", function()
				harpoon:list():prepend()
			end)
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<C-h>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-t>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-n>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-s>", function()
				harpoon:list():select(4)
			end)
			vim.keymap.set("n", "<leader><C-h>", function()
				harpoon:list():replace_at(1)
			end)
			vim.keymap.set("n", "<leader><C-t>", function()
				harpoon:list():replace_at(2)
			end)
			vim.keymap.set("n", "<leader><C-n>", function()
				harpoon:list():replace_at(3)
			end)
			vim.keymap.set("n", "<leader><C-s>", function()
				harpoon:list():replace_at(4)
			end)
		end,
	},
	{
        "vim-apm",
         url = "https://github.com/ThePrimeagen/vim-apm.git",  -- replace <username> with the actual GitHub user/org
         config = function()
         local apm = require("vim-apm")

         apm:setup({})
         vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
         end,
    },

    {
        "vim-with-me",
        url = "https://github.com/ThePrimeagen/vim-with-me.git",  -- replace <username> accordingly
        config = function() end,
    },


}

return local_plugins
