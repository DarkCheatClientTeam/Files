local a = {}
local b = {} 
local c = {} 

function a:isb(p) 
  if table.find(b, p.UserId) then
    return true
  else
    return false
end
end
function a:isc(p) 
    if table.find(c, p.UserId) then
      return true
    else
      return false
    end
  end

return a

