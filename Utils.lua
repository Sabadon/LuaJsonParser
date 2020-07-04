function split(str, separator)
    local result = {}
    local tmp = ''

    for i = 1, #str do
        local c = str:sub(i, i)
        --print(tmp)
        if c ~= separator then
            tmp = tmp .. c
        else 
            table.insert( result, tmp)
            tmp = ''
        end
    end 

    if tmp ~= '' then 
        table.insert( result, tmp )
    end

    return result
end

function readFile(filename)
    local f = assert(io.open(filename, 'rb'))
    local content = f:read('*all')
    f:close()
    return content
end

function printMapTable(table)
    for i, v in pairs(table) do
        if type(v) ~= 'table' then
            print('key: ' .. i .. ' value: ' .. v)
        else
            printMapTable(v)
        end
    end
end

function endsWith( str , ending )
    if str ~= '' and str:sub(-#ending) == ending then 
        return true
    else
        return false
    end
end

function startsWith( str, start)
    return str:sub(1, #start) == start
end

function string:trim()
    print('trim')
end