# Pros:
#  is stable: does not change the relative order of elements with equal keys
#  is an inplace algorithm, so it does not create a new array


array = [5,2,1,3,4]

def insertion_sort(array)
  for i in 1...array.length
    puts
    puts "sorting unsorted #{i}"
    j = i
    # j would be zero if array was only 1 element
    while j > 0
      puts "comparing #{j-1} (value: #{array[j-1]}) with #{j} (value: #{array[j]})"
      if array[j-1] > array[j]
        puts "swapping"
        temp = array[j]
        array[j] = array[j-1]
        puts "#{array.index(2)}"
        array[j-1] = temp
        puts "#{array.index(5)}"
        puts
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
