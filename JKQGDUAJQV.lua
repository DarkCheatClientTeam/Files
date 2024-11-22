local a = {}
local b = {1993687031, 1293792120} 
local c = {3844044411, 2827021146, 7426644606} 

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

