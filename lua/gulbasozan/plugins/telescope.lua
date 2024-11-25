-- init.lua:
    local M = {
    'nvim-telescope/telescope.nvim', branch = '0.1.x', 
      dependencies = { 'nvim-lua/plenary.nvim' }
    }

function M.config(_, opts)
    local wk = require("which-key")
    local mappings = {
        { "<leader>pf", "<CMD>Telescope find_files<CR>", desc = "Find Files" },
    }

    wk.add(mappings)

    local telescope = require("telescope")

    telescope.setup(opts)
end

return M

