local buswidth = function(width, multiplier)
  return width * multiplier - 1
end

-- Assume classic vanilla bus width of 4+2
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = buswidth(6, 2)

data.raw["underground-belt"]["underground-belt"].max_distance = buswidth(6, 1)
data.raw["underground-belt"]["fast-underground-belt"].max_distance = buswidth(6, 2)
data.raw["underground-belt"]["express-underground-belt"].max_distance = buswidth(6, 3)

if mods["UltimateBelts_Owoshima_And_Pankeko-Mod"] then
  data.raw["underground-belt"]["ultra-fast-underground-belt"].max_distance = buswidth(6, 4)
  data.raw["underground-belt"]["extreme-fast-underground-belt"].max_distance = buswidth(6, 5)
  data.raw["underground-belt"]["ultra-express-underground-belt"].max_distance = buswidth(6, 6)
  data.raw["underground-belt"]["extreme-express-underground-belt"].max_distance = buswidth(6, 7)
  data.raw["underground-belt"]["original-ultimate-underground-belt"].max_distance = buswidth(6, 8)
end


if mods["pypostprocessing"] then
  -- Basic underground belt length in Py allows using an 8+2 bus width
  data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = buswidth(10, 1)
  data.raw["pipe-to-ground"]["niobium-pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = buswidth(10, 3)
  data.raw["pipe-to-ground"]["ht-pipes-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = buswidth(10, 5)

  data.raw["underground-belt"]["underground-belt"].max_distance = buswidth(10, 1)
  data.raw["underground-belt"]["fast-underground-belt"].max_distance = buswidth(10, 2)
  data.raw["underground-belt"]["express-underground-belt"].max_distance = buswidth(10, 3)

  if mods["UltimateBelts_Owoshima_And_Pankeko-Mod"] then
    data.raw["underground-belt"]["ultra-fast-underground-belt"].max_distance = buswidth(10, 4)
    data.raw["underground-belt"]["extreme-fast-underground-belt"].max_distance = buswidth(10, 5)
    data.raw["underground-belt"]["ultra-express-underground-belt"].max_distance = buswidth(10, 6)
    data.raw["underground-belt"]["extreme-express-underground-belt"].max_distance = buswidth(10, 7)
    data.raw["underground-belt"]["original-ultimate-underground-belt"].max_distance = buswidth(10, 8)
  end
end
