
local F_STDOUT = 0
local F_STDIN = 1
local F_STDERR = 2

local E_OK = 0
local E_ERR = 1
local E_READY = 2
local E_NOT_READY = 3

function read_keys(len)
    local count = 0
    local txt = ""

    repeat
        local id, chr = os.pullEvent()
        if id == "char" then
            term.write(chr)
            txt = txt..chr
            count = count + 1
        end

        if id == "key" and chr == 28 then
            write('\n')
            txt = txt..'\n'
            count = count + 1
        end
    until count == len
    write('\n')

    return txt
end

function get_keystroke(fd, key)
    if fd == STDIN then
        key = read_keys(1)
        if key then
            return E_READY, key
        else
            return E_NOT_READY, nil
        end
    else
        return E_ERR
    end
end
