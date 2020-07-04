require("iuplua")
require("Utils")

function loadJsonFile( )
    filename = iup.GetFile('*.*')
    if checkValidFile(filename) then
        local content = split(readFile(filename), ',')
        for i = 1, #content do
            print(content[i])
        end
    else
        print('Incorrect file format!')
    end
end

function checkValidFile(str)
    local ending = '.json'
    if str ~= '' and str:sub(-#ending) == ending then 
        return true
    else
        return false
    end
end

--loadJsonFile()
testtable = {name = jhon, surname = cat}

for i = 1, #testtable do
    print(content[i])
end