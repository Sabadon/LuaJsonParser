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

function parse(content)
    local json = {}
    content = content:trim()
    if content:startWith('{') and content:endsWith('}') then
        content = content:sub(2, -2):trim()
    end

    content = content:split(',')

    print(content)
    return json
end

function startParser()
    local fileContent = loadJsonFile()
    local tes = ' (*&(!@!#!^#!*(@.,.~)))   123    123             '
    print(tes:trim())
    printMapTable(parse(fileContent))
end

startParser()
