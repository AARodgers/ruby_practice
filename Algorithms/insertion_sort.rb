# Pros:
#  is stable: does not change the relative order of elements with equal keys
#  is an inplace algorithm, so it does not create a new array


array = [5,2,1,3,4]

def insertion_sort(array)
  for i in 1...array.length
    puts
    puts "sorting unsorted #{i}"
    j = i
    # when would j ever be 0?
    while j > 0
      puts "comparing #{j-1} (value: #{array[j-1]}) with #{j} (value: #{array[j]})"
      if array[j-1] > array[j]
        puts "swapping"
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
        # array[1] = array[0]
        # array[0] = array[1]
      else
        puts "not swapping"
        break
      end
      j = j - 1
    end
  end
  return array
end

puts insertion_sort(array)
