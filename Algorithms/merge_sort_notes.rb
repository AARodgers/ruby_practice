# Notes on merge_sort:
#  Uses divide and conquer approach and recursion.
# Splits the array into two sub-array again and again until only one
# element remains. Then recombines them by sorting until you have two arrays
# again.

numbers = [38, 27, 43, 3, 9, 82, 10]

class MergeSort
  def sort(numbers)
    num_elements = numbers.length
    if num_elements <= 1
      return num_elements
    end

    half_of_elements = (num_elements / 2).round
    left = numbers.take(half_of_elements)
    right = numbers.drop(half_of_elements)

    sorted_left = sort(left)
    sorted_right = sort(right)

    merge(sorted_left, sorted_right)
  end

  def merge(left_array, right_array)
    if right_array.empty?
      return left_array
    end

    if left_array.empty?
      return right_array
    end

    # returns which number is smaller from the first two numbers of each array
    smallest_number = if left_array.first <= right_array.first
      left_array.shift
    else
      right_array.shift
    end

    # continues doing the merge function
    recursive = merge(left_array, right_array)
    [smallest_number].concat(recursive)
  end
end

merge_sort = MergeSort.new
puts merge_sort.sort(numbers)


merge_sort = MergeSort.new
puts merge_sort.sort(numbers)

# .round will round to nearest integer, but can also tell it to round to
# certain amount of decimals, round(2) will round to two decimals
# 2.5 will round to 2 and 2.6 will round to 3

# .take will return the first (n) elements of an array .take(n)

# .drop will do opposite of take and return the elements after (n) elements
# have been dropped. Ex. a = [1234] a.drop(2) = [3, 4]

# .first will return the first few (n) elements of an array, if no number
# is specified, it will return the first element of the array

# .shift removes and returns the leading elements (n) from the array
# when no argument is given, it removes and returns the first element
# a = [1, 2, 3], a.shift = [1], a.shift(2) = [1, 2]

# .concat(array2, array3)
# array1 = [0, 1]
# array2 = [2, 3]
# array3 = [4, 5]
# array1.concat(array2, array3) will add arrays: array2 and array3 to array1
# array1.concat(array2, array3) = [0, 1, 2, 3, 4, 5]
