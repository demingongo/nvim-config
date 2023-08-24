lua <<EOF

local plugin = require("cellular-automaton")


local slide_config = {
    fps = 50,
    name = 'slide',
}

-- init function is invoked only once at the start
-- config.init = function (grid)
--
-- end

-- update function
slide_config.update = function (grid)
    for i = 1, #grid do
        local prev = grid[i][#(grid[i])]
        for j = 1, #(grid[i]) do
            grid[i][j], prev = prev, grid[i][j]
        end
    end
    return true
end


local scramble_config = {
  fps = 30,
  name = "scramble",
}

local function is_alphanumeric(c)
  return c >= "a" and c <= "z" or c >= "A" and c <= "Z" or c >= "0" and c <= "9"
end

local scramble_word = function(word)
  local chars = {}
  while #word ~= 0 do
    local index = math.random(1, #word)
    table.insert(chars, word[index])
    table.remove(word, index)
  end
  return chars
end

scramble_config.update = function(grid)
  for i = 1, #grid do
    local scrambled = {}
    local word = {}
    for j = 1, #grid[i] do
      local c = grid[i][j]
      if not is_alphanumeric(c.char) then
        if #word ~= 0 then
          for _, d in pairs(scramble_word(word)) do
            table.insert(scrambled, d)
          end
          word = {}
        end
        table.insert(scrambled, c)
      else
        table.insert(word, c)
      end
    end

    grid[i] = scrambled
  end
  return true
end

plugin.register_animation(slide_config)
plugin.register_animation(scramble_config)

EOF
