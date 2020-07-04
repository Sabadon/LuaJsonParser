require("iuplua")
require("Utils")

function loadJsonFile( )
    filename = iup.GetFile('*.*')
    if endsWith(filename, '.json') then
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

    return json
end

function startParser()
    local fileContent = loadJsonFile()
    print(fileContent:trim())
    printMapTable(parse(fileContent))
end

startParser()