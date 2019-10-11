# Your Code Here
def map(source_array)
  new_array = []
  counter = 0

  while counter < source_array.length do
    new_array << yield(source_array[counter])
    counter += 1
  end
  new_array
end

def reduce(source_array, starting_point = 0)
  total = starting_point
  counter = 0

  while counter < source_array.length do
    total = yield(source_array[counter], total)
    counter += 1
  end
  if total
    total
  else
    false
  end
end
