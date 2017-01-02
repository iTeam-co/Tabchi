redis = (loadfile "redis.lua")()
function gettabchiid()
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls')
	local last = 0
    for filename in pfile:lines() do
        if filename:match('tabchi%-(%d+)%.lua') and tonumber(filename:match('tabchi%-(%d+)%.lua')) >= last then
			last = tonumber(filename:match('tabchi%-(%d+)%.lua')) + 1
			end		
    end
    return last
end
local last = gettabchiid()
io.write("Auto Detected Tabchi ID : "..last)
io.write("\nEnter Full Sudo ID : ")
local sudo=io.read()
local text,ok = io.open("base.lua",'r'):read('*a'):gsub("TABCHI%-ID",last)
io.open("tabchi-"..last..".lua",'w'):write(text):close()
io.open("tabchi-"..last..".sh",'w'):write("while true; do\n./telegram-cli-1222 -p tabchi-"..last.." -s tabchi-"..last..".lua\ndone"):close()
io.popen("chmod 777 tabchi-"..last..".sh")
redis:set('tabchi:'..last..':fullsudo',sudo)
print("Done!\nNew Tabchi Created...\nID : "..last.."\nFull Sudo : "..sudo.."\nRun : ./tabchi-"..last..".sh")
