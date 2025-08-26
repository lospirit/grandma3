--[[
[:::::::::::::::::::::::::::::::::::::::::::]
 | Program >> PixelPicker GrandMA 3
 | Version >> 0.0.1	
 | Updated >> 26.08.2025	
 | Modification for GrandMa 3  >> lospirit	
 | Original Author  >> AlexSaltsev	 
[:::::::::::::::::::::::::::::::::::::::::::]
]]--
    
return function()

    local groupNumber = tonumber(TextInput('Enter Group', '1'))
    local pixelStart  = tonumber(TextInput('Enter 1st pixel', '1'))
    local pixelEnd    = tonumber(TextInput('Enter last pixel', '20'))

    Cmd('ClearAll')
    Cmd('Group ' .. groupNumber)

    local cmdline = ''
    for i = pixelStart, pixelEnd do
        cmdline = cmdline .. ' + If Fixture *.' .. i
    end

    Cmd(cmdline)

end

--[[
.                     .   
|             o     o |   
| ,-. ,-. ;-. . ;-. . |-  
| | | `-. | | | |   | |   
' `-' `-' |-' ' '   ' `-' 
          '               
]]--