# if you have a sorted array, you can find an item in O(log) time by
# by performing binary search, it will continually halve your
# data by checking if the item is larger or smaller than
# a given middle

# 3 steps:
# 1. take middle element and compare to input
#2. if middle is larger than input, focus on right

#
#
arr_size = 1000
r = Random.new

search_arr = Array.new(arr_size) do
  r.rand(arr_size)
  # generates random numbers
end.sort
# returns an array of random sorted nums from 0-999

search_num = r.rand(arr_size)
# a random num to search

def binary_search_iter(arr, el)
  max = arr.length - 1
  min = 0

  while min <= max # while size diff betwn min and max is 0 or neg, we went through whole array and didn't find element
    mid = (min + max) / 2
    if arr[mid] == el
      return el
    elsif arr[mid] > el # if mid is greater than el we are looking for, discount right side and focus on left
      max = mid - 1
    else
      min = mid + 1
    end
  end
  if arr.include?(el)
    return true
  else
    return false
  end
end

result = binary_search_iter(search_arr, search_num)
puts result.nil? ? "Could not find #{search_num}" : "Found #{search_num}"
