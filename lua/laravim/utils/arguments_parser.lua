local M = {}

function M.parse(arguments)
    local first_occurence = arguments:find(" ")

    if not first_occurence then
        return arguments, nil
    else
        return arguments:sub(1, (first_occurence - 1)), arguments:sub(first_occurence + 1, arguments:len())
    end
end

return M
