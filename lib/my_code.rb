def map(array)
  new_map = []
  i = 0
  while i < array.length do
    new_map[i] = yield(array[i])
    i += 1
  end
  new_map
end

def reduce(source_array, starting_point = 0)

  if source_array.all?(Numeric) == true
    temp_value = starting_point
  else
    temp_value = true
  end

  i = 0
  while i < source_array.length do
    temp_value = yield(temp_value, source_array[i])
    i += 1
  end
  temp_value
end
