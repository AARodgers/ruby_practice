
# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You must write an algorithm with O(log n) runtime complexity.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def search_insert(nums, target)
  #return 0 if the target is less than the first item in the array
  return 0 if target < nums[0]
  # if the array includes the target, return the index of the target
  return nums.index(target) if nums.include?(target)
  # return the last index plus one if target is bigger than last item
  return (nums.index(nums[-1]) + 1) if target > nums[-1]
  # if target is less than a number in that array, return the index of that number because that is where the target would go
  nums.each do |n|
    if target < n
      return nums.index(n)
    end
  end
end

puts search_insert([1,3,5,6], 5)
# => 2
puts search_insert([1,3,5,6], 2)
# => 1
puts search_insert([1,3,5,6], 7)
# = 4
puts search_insert([1,3,5,6], 0)
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


