local Command = {}

function Command.execute(command)
    local status, output = pcall(vim.fn.system, command)
    local ok = vim.v.shell_error == 0
    local lines = {}

    if not status then
        print("[Runtime Exception] ", output)

        return lines, false
    else
        if not ok then
            print("[Command Error] ", output)
        end

        for line in output:gmatch("[^\r\n]+") do
            table.insert(lines, line)
        end

        return lines, ok
    end
end

return Command
