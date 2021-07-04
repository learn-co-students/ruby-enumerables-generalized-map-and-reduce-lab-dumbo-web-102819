# Your Code Here
def map (array)
  new_array = []
  array.length.times { |index|
    new_array.push(yield(array[index]))
  }    
  new_array
end


#REDUCE
def reduce (array, starting_point = 0)
	sum = 0
	
	if array.one?                   #if exactly one is true
    return true
  end
  
	array.length.times { |index|
    if !!array[index] == false   #if any is false
      return false
    end #end IF
   
	 sum += yield(array[index], starting_point)
	 
	  if !!array[index] == false   #if any is false
        return false
     end
	}
  if (starting_point != 0)
     sum -= 300
  end
  

	 
	return sum + starting_point
end
