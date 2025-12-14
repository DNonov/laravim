local String = {}

function String.ends_with(string, ending)
    return ending == "" or string:sub(-#ending) == ending
end

return String
