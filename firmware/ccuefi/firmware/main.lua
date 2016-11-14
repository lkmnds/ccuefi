-- main.lua - main entry point for the reference implementation of a CCUEFI firmware

local function load_file(pth)
    local n = fs.getName(pth)
    if not fs.exists(pth) then
        printError("load_file: "..pth.." doesn't exist")
        return false
    end

    local tEnv = {}
    setmetatable( tEnv, { __index = _G } )
    local fnAPI, err = loadfile( pth, tEnv )
    if fnAPI then
        local ok, err = pcall( fnAPI )
        if not ok then
            printError( err )
            return false
        end
    else
        printError( err )
        return false
    end

    local lib_exported = {}
    for k,v in pairs( tEnv ) do
        if k ~= "_ENV" then
            lib_exported[k] =  v
        end
    end

    return lib_exported
end

local basic = load_file("/ccuefi/firmware/basic.lua")

function ccuefi_main()
    print("Hello, World!")

    -- so it doesn't finish fast
    while true do
        local status, key = basic.get_keystroke(basic.F_STDIN, key)
        if status ~= basic.E_NOT_READY then
            break
        end
    end

    return 0
end

ccuefi_main()
