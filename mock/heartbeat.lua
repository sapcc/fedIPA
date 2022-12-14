local r = lighty.r
local req_attr = r.req_attr
local path = req_attr["physical.path"]
local st = lighty.c.stat(path)
local indexfile = "index.json"
local heartbeat_prefix = "/v1/heartbeat"

if (st and st.is_file) then
    return 0  -- let mod_staticfile or other module handle the file
elseif (lighty.c.stat(path .. indexfile)) then
    req_attr["physical.path"] = path .. indexfile
    req_attr["uri.path"] = req_attr["uri.path"] .. indexfile
    return 0  -- let mod_staticfile or other module handle the file
elseif req_attr["request.method"] == "POST" then
    r.resp_header["Content-Type"] = "application/json"
    r.resp_body:add({"{}\n"})
    return 202
end
