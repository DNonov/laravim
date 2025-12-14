local path = require("laravim.utils.path")
local File = {}

local uv = vim.loop

function File.find_file_upwards(filename, start_dir)
    local dir = start_dir or uv.cwd()

    while dir do
        local full_path = dir .. path.DIR_SEPARATOR .. filename
        local stat = uv.fs_stat(full_path)

        if stat then
          return full_path
        end

        local parent = dir:match("(.+)/[^/]+$")
        if parent == dir or parent == nil then
          break
        end
        dir = parent
    end

    return nil
end

return File
