function readAll(file)
    local f = io.open(file, "rb")
    local content = f:read("*all")
    f:close()
    return content
end

file = readAll(arg[1])
array = {}
ip = 0
p = 0
while 1 do
  ip = ip + 1
  x = strsub(file,ip,ip)
  if array[p] == nil then array[p] = 0 end
  if x == "+" then
    array[p] = array[p] + 1
  elseif x == "-" then
    array[p] = array[p] - 1
  elseif x == ">" then
    p = p + 1
  elseif x == "<" then
    p = p - 1
  elseif x == "," then
    array[p] = strbyte(read(1))
  elseif x == "." then
    write(strchar(array[p]))
  elseif x == "[" then
    lastlbrack = ip
    nextrbrack = strfind(file,"]",ip)
    if not nextrbrack then
      print("**Mismatched Brackets")
      exit()
    elseif array[p] == 0 then
      ip = nextrbrack
    end
  elseif x == "]" then
    if not lastlbrack then
      print("**Mismatched Brackets")
      exit()
    elseif array[p] ~= 0 then
      ip = lastlbrack
    end
  end
  if ip == strlen(file) then
    exit()
  end
end