# Notes on merge_sort:
#  Uses divide and conquer approach and recursion.
# Splits the array into two sub-array again and again until only one
# element remains. Then recombines them by sorting until you have two arrays
# again.

class MergeSort
  def sort(numbers)
    num_elements = numbers.length
    if num_elements <= 1
      return num_elements
    end

    half_of_elements = (num_elements / 2).round
    left = numbers.take(half_of_elements)
    right = numbers.drop(half_of_elements)
  end
end


# .round will round to nearest integer, but can also tell it to round to
# certain amount of decimals, round(2) will round to two decimals

# .take will return the first (n) elements of an array .take(n)

# .drop will do opposite of take and return the elements after (n) elements
# have been dropped. Ex. a = [1234] a.drop(2) = [3, 4]
