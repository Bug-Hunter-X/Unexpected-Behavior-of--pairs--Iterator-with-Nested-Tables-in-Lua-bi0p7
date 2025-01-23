local function foo(t)
  local visited = {}
  local function traverse(t)
    for k, v in pairs(t) do
      if type(v) == "table" then
        if not visited[v] then
          visited[v] = true
          traverse(v)
        end
      end
    end
  end
  traverse(t)
end

local t = {a = 1, b = {c = 2, d = {e = 3, f = {g = 4}}}}
foo(t)

-- Check that all elements were visited (for demonstration purposes)
print(t.b.d.f.g) -- this will print 4 if the iteration was successful