local string = require("laravim.utils.string")

local Path = {}

Path.DIR_SEPARATOR = package.config:sub(1, 1)
local uv = vim.loop

function Path.get_cwd()
    return vim.loop.cwd()
end

function Path.join_path(...)
    return table.concat({...}, Path.DIR_SEPARATOR)
end

function Path.normalize_path(path)
    return path:gsub("[\\/]", Path.DIR_SEPARATOR)
end

function Path.find_file(filename, start_dir)
    local dir = start_dir or uv.cwd()

    while dir do
        local full_path = dir .. Path.DIR_SEPARATOR .. filename
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

function Path.append_dir_separator(path)
    if not string.ends_with(path, Path.DIR_SEPARATOR) then
        path = path .. Path.DIR_SEPARATOR
    end

    return path
end

return Path
