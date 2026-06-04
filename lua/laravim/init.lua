local options = require("laravim.options")
local command = require("laravim.utils.command")
local core = require("laravim.core")
local arguments_parser = require("laravim.utils.arguments_parser")

local M = {}

function M.setup(opts)
    opts = opts or {}
    options = vim.tbl_deep_extend("force", options, opts)
end

function M.artisan(command_name, user_arguments)
    local args = {}
    if user_arguments then
        for arg in user_arguments:gmatch("%S+") do
            table.insert(args, arg)
        end
    end

    local cmd = {options.php, options.artisan, command_name}
    for _, arg in ipairs(args) do
        table.insert(cmd, arg)
    end

    local lines, ok = command.execute(cmd)

    for _, line in ipairs(lines) do
        print("[Artisan] ", line)
    end
end

function M.make(laravel_file, user_arguments)
    local file_name, flags = arguments_parser.parse(user_arguments)

    if not file_name or file_name == "" then
        print("[Command Error] File name is required")
        return
    end

    local path_to_file_dir = core.get_file_type_path(laravel_file)

    if not path_to_file_dir then
        print("[Command Error] Not in laravel project")
        return
    end

    local lines, ok = command.execute({
        options.php,
        options.artisan,
        "make:" .. laravel_file,
        file_name,
        flags
    })

    for _, line in ipairs(lines) do
        print("[Artisan] ", line)
    end

    if ok then
        vim.cmd("edit " .. path_to_file_dir .. file_name .. ".php")
    end
end

return M

-- Feature list:
-- 1. Find composer.json and find out the php binary version required.
-- 2. Make php binary auto detector.
