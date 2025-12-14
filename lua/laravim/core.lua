local path = require("laravim.utils.path")
local options = require("laravim.options")

local Core = {}
local filename = "composer.json";

function Core.get_project_root()
    local file_path = path.find_file(filename)

    if not file_path then
        return file_path
    end

    local end_of_path = file_path:len() - (filename:len() + 1)
    local project_root = file_path:sub(1, end_of_path)

    return project_root
end

function Core.get_file_type_path(file_type)
    local base_path = Core.get_project_root()

    if not base_path then
        return nil
    end

    if file_type == "controller" then
        return path.normalize_path(
            path.append_dir_separator(path.join_path(
                base_path, options.controllers_dir)))
    elseif file_type == "model" then
        return path.normalize_path(
            path.append_dir_separator(path.join_path(
                base_path, options.models_dir)))
    else
        return nil
    end
end

return Core
