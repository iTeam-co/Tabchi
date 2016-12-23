serpent = (loadfile "serpent.lua")()
tdcli = dofile('tdcli.lua')
require 'tabchi'
redis = (loadfile "redis.lua")()
tabchi_id = "TABCHI-ID"

function vardump(value)
  return serpent.block(value,{comment=false})
end

function dl_cb (arg, data)
end

function tdcli_update_callback(data)
  update(data, tabchi_id)
end
