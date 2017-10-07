package = "kong-header-based-upstream"
version = "0.0.1-0"
source = {
  url = "git://github.com/ipf-pl-godlewsm/kong-header-based-upstream2"
}
description = {
  summary = "https://github.com/ipf-pl-godlewsm/kong-header-based-upstream",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1",
  "net-url ~> 0.9-1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.kong-header-based-upstream.handler"] = "src/handler.lua",
    ["kong.kong-header-based-upstream.access"] = "src/access.lua",
    ["kong.kong-header-based-upstream.schema"] = "src/schema.lua"
  }
}
