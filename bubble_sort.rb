def bubble_sort(array)
  length = array.length
  done = nil 
  temp = nil
  i = 1
  
  while done != true  # Algorithm runs as long as the sorting is incomplete
    i.upto(length-1) do |j| #Filters through all indices 
      if array[j-1] > array[j]  # Swap values if left value > right value
        temp = array[j-1]
        array[j-1] = array[j]
        array[j] = temp
        temp = nil
      end
    end
    length -= 1 #Optimization (see wikipedia for Optimizing bubble sort)
    if length == 1 # Stops algorithm when there are no more values to check
      done = true
    end
  end

  return array
end