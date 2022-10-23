
ngx.header["content-type"] = "text/plain; charset=utf-8"

ngx.say "Hello OpenResty!"
ngx.say "----------------------------------------------------------"

local lfs = require "lfs"
local currentdir = lfs.currentdir()
ngx.say("currentdir: ", currentdir)

local prefix = ngx.config.prefix()
ngx.say("prefix: ", prefix)

ngx.say "----------------------------------------------------------"

local nginx_version = ngx.config.nginx_version
ngx.say("nginx_version: ", nginx_version)

local ngx_lua_version = ngx.config.ngx_lua_version
ngx.say("ngx_lua_version: ", ngx_lua_version)

local nginx_configure = ngx.config.nginx_configure()
ngx.say("nginx_configure: ", nginx_configure)

ngx.say "----------------------------------------------------------"

local headers = ngx.req.get_headers()
for k, v in pairs(headers) do
    ngx.say(k, ": ", v)
end
