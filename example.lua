--[[
~ данный код должен быть помещен в menu state! / this code should be placed in the menu state! a.k.a menu.lua

так-же вы можете использовать процесс хакер и инжектить данное dll в игру / you can also use a process hacker and inject this dll into the game
]]

--[[
для x64 / for x64
]]
pcall(function()
    if (file.Exists("lua/bin/gmsv_sfapi_win64.dll", "GAME")) then
        concommand.Add("_sf_cl", function(objPl, strCmd, tblArgs)
            if #tblArgs and #tblArgs ~= 0 then
                local strLua = table.concat(tblArgs, " ")

                if IsClientLua() then
                    print("Running lua: \"" .. strLua .. "\"")
                    ExecuteOnClient(strLua)
                else
                    print("you need to log in to the server!")
                end

                return
            end

            print("Must contain code to run code")
        end)

        concommand.Add("_sf_menu", function(objPl, strCmd, tblArgs)
            if #tblArgs and #tblArgs ~= 0 then
                local strLua = table.concat(tblArgs, " ")
                ExecuteOnMenu(strLua)

                return
            end

            print("Must contain code to run code")
        end)
    end
end)

--[[
для x32 / for x32
]]
pcall(function()
    if (file.Exists("lua/bin/gmsv_sfapi_win32.dll", "GAME")) then
        concommand.Add("_sf_cl", function(objPl, strCmd, tblArgs)
            if #tblArgs and #tblArgs ~= 0 then
                local strLua = table.concat(tblArgs, " ")

                if IsClientLua() then
                    print("Running lua: \"" .. strLua .. "\"")
                    ExecuteOnClient(strLua)
                else
                    print("you need to log in to the server!")
                end

                return
            end

            print("Must contain code to run code")
        end)

        concommand.Add("_sf_menu", function(objPl, strCmd, tblArgs)
            if #tblArgs and #tblArgs ~= 0 then
                local strLua = table.concat(tblArgs, " ")
                ExecuteOnMenu(strLua)

                return
            end

            print("Must contain code to run code")
        end)
    end
end)
