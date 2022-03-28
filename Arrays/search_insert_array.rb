
# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You must write an algorithm with O(log n) runtime complexity.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def search_insert(nums, target)
  # if the array includes the target, return the index of the target
  return nums.index(target) if nums.include?(target)

  nums.each_with_index do |n, i|
    # return the last numbers index plus one if the target is bigger than the last number in the array
    return nums.index(nums[-1]) + 1 if target > nums[-1]
    # if the target is smaller than the first number in the array, return 

    if target > n[-1]
      return nums.index(n) + 1
    elsif target < n
      return i
    end
  end
end

# puts search_insert([1,3,5,6], 5)
# => 2
# puts search_insert([1,3,5,6], 2)
# => 1
# puts search_insert([1,3,5,6], 7)
# = 4
# puts search_insert([1,3,5,6], 0)
# => 0
puts search_insert([1,3,5], 4)
# => 2

# def search_insert(nums, target)

#   nums.each_with_index do |n, i|
#     if target < n
#       return i
#     end
#   end
# end

# puts search_insert([1,3,5], 4)
