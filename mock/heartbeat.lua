local r = lighty.r
r.resp_header["Content-Type"] = "application/json"
r.resp_body:add({"{}\n"})

return 202
