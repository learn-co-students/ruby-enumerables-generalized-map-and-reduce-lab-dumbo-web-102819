
def map(array)
  new = []
  i = 0
  while i < array.length do
    new.push(yield(array[i]))
    i = i + 1
  end
  new
end

def reduce(array, start_value = nil)
  if start_value
    accum = start_value
    i = 0
  else
    accum = array[0]
    i = 1
  end
  
  while i < array.length do
    accum = yield(accum, array[i])
    i += 1
  end
  accum
end

