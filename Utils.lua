function string:split(separator)
    local result = {}
    local tmp = ''

    for i = 1, #self do
        local c = self:sub(i, i)
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

function string:endsWith( ending )
    return self ~= '' and self:sub(-#ending) == ending
end

function string:startWith( start )
    return self:sub(1, #start) == start
end

function string:trim()
   return (self:gsub("^%s*(.-)%s*$", "%1"))
end
