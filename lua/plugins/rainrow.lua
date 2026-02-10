return
{
    {
        "HiPhish/rainbow-delimiters.nvim",
        event = "VeryLazy",

        -- Default configuration shown below: (refer to documentation for more options)
        config = function()
            require('rainbow-delimiters.setup').setup({})
        end
    }
}