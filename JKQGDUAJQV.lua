local a = {}
local b = {1993687031, 1293792120, 604430770, 1222680, 6225378520, 7166779222} 
local b1 = {}
local b2 = {}
local c = {7496971250, 2645134467, 3844044411, 2827021146, 7426644606, 7504865660, 4418394666, 2508969298} 

function a:isb(p) 
  if table.find(b, p.UserId) then
    return true
  else
    return false
end
end
function a:isb1(string) 
  if table.find(b1, string) then
    return true
  else
    return false
end
end
function a:isb2(string) 
  if table.find(b2, string) then
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

