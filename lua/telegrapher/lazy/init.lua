return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },
    "eandrju/cellular-automaton.nvim",
    {
        'vim-airline/vim-airline',
        lazy = false, -- vim-airline should be loaded immediately
        -- Basic airline configuration
        dependencies = {
            "vim-airline/vim-airline-themes",
        },
        init = function()
            vim.g.airline_theme = 'wombat' -- Set the theme to wombat256
            --vim.g.airline_theme = 'gruvbox'
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy=false,
    },
}
