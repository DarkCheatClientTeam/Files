local a = {}
local b = {} 
local c = {} 

local function isb(p) 
  if table.find(b, p.UserId) then
    return true
  else
    return false
end

local function isc(p) 
    if table.find(c, p.UserId) then
      return true
    else
      return false
    end
  end

return a

