-- init.lua:
    local M = {
    'nvim-telescope/telescope.nvim', branch = '0.1.x', 
      dependencies = { 'nvim-lua/plenary.nvim' }
    }

function M.config(_, opts)
    local wk = require("which-key")
    local mappings = {
        pf = {"<CMD>Telescope find_files<CR>", "Find Files" },
    }

    wk.register(mappings, {prefix="<leader>"})

    local telescope = require("telescope")

    telescope.setup(opts)
end

return M

