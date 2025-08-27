--[[
[:::::::::::::::::::::::::::::::::::::::::::]
 | Program >> PixelPicker GrandMA 3       
 | Version >> 0.0.2	
 | Updated >> 27.08.2025	
 | Modification for GrandMa 3  >> lospirit	
 | Original Author  >> AlexSaltsev	 
[:::::::::::::::::::::::::::::::::::::::::::]
]]--
    
return function()

    local groupNumber = tonumber(TextInput('Enter Group', '1'))
    local pixelStart  = tonumber(TextInput('Enter 1st pixel', '1'))
    local pixelEnd    = tonumber(TextInput('Enter last pixel or 0 if you want to select sub group', '20'))

    if not groupNumber or not pixelStart or pixelEnd == nil then
        Printf("Invalid input")
        return
    end

    Cmd('ClearAll')
    Cmd('Group ' .. groupNumber)

    local cmdline = ''
 
    if pixelEnd == 0 then
        -- select only one sub group in fixture 
        cmdLine = " If Fixture *." .. pixelStart
        Cmd(cmdLine)
        Cmd("Down")
    else
        -- pixel range
        for i = pixelStart, pixelEnd do
            cmdLine = cmdLine .. " + If Fixture *." .. i
        end
        Cmd(cmdLine)
    end

end

--[[
.                     .   
|             o     o |   
| ,-. ,-. ;-. . ;-. . |-  
| | | `-. | | | |   | |   
' `-' `-' |-' ' '   ' `-' 
          '               
]]--
