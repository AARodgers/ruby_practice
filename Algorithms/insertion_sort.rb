#  INSERTION SORT
# Pros:
#  is stable: does not change the relative order of elements with equal keys
#  is an inplace algorithm, so it does not create a new array so uses less memory
# Good for small data sets

# Cons:
# Not great for very large data sets

# Big O:
# Best case for time, array is already sorted = O(n) since it will have to loop through n times
# Worst case for time, a reverse ordered array = O(n^2) since it will have to execute if statement for each n


array = [4, 5, 1, 3, 2]

def insertion_sort(array)
  for i in 1...array.length
    j = i
    while j > 0
      if array[j-1] > array[j]
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
      else
        break
      end
      j = j - 1
    end
  end
  return array
end

puts insertion_sort(array)
