# Pros:
#  is stable: does not change the relative order of elements with equal keys
#  is an inplace algorithm, so it does not create a new array


array = [5,2,1,3,4]

def insertion_sort(array)
  for i in 1...array.length
    j = i
    while j > 0
      if array[j-1] > array[j]
        temp = array[j]
        array[j-1] = array[j]
        array[j-1] = temp
      else
        break
      end
    end
  end
end
