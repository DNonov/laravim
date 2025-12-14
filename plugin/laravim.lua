local laravim = require("laravim")

-- Optional autostart setup
laravim.setup({
    php = "php"
})

vim.api.nvim_create_user_command("ArtisanMakeController", function(opts)
    laravim.make("controller", opts.args)
end, {nargs = "*"})

vim.api.nvim_create_user_command("ArtisanMakeModel", function(opts)
    laravim.make("model", opts.args)
end, {nargs = "*"})

-- Keymaps
vim.keymap.set("n", "<leader>amm", ":ArtisanMakeModel")
vim.keymap.set("n", "<leader>amc", ":ArtisanMakeController")
