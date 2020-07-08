require("Utils")

function loadJsonFile( )
    filename = 'test.json'
    if filename:endsWith('.json') then
        -- local content = split(readFile(filename), ',')
        -- for i = 1, #content do
        --     print(content[i])
        -- end
        return readFile(filename)
    else
        print('Incorrect file format!')
    end
end

function checkTypeJsonElem(element)

end

function parse(content)
    local json = {}
    content = content:trim()
    if content:startWith('{') and content:endsWith('}') then
        content = content:sub(2, -2):trim()
    end

    content = content:split(',')

    for i = 1, #content do
        local elem = content[i]:split(':')
        local key = elem[1]:sub(2, -2):trim()
        local val = elem[2]:sub(2, -2):trim()
        json[key] = val
    end

    print(printMapTable(content))
    return json
end

function startParser()
    local fileContent = loadJsonFile()
    local parsed = parse(fileContent)
    printMapTable(parsed)
end

startParser()