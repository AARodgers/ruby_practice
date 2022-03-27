# Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.
# Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.
# Return k after placing the final result in the first k slots of nums.
# Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
# k = the number of non repeating elements

# Input: nums = [1,1,2]
# Output: 2, nums = [1,2,_]
# Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).

# @param {Integer[]} nums
# @return {Integer}

# Algorithm
# Since the array is already sorted, we can keep two pointers iii and jjj, where iii is the slow-runner while jjj is the fast-runner. As long as nums[i]=nums[j]nums[i] = nums[j]nums[i]=nums[j], we increment jjj to skip the duplicate.
# When we encounter nums[j]≠nums[i]nums[j] \neq nums[i]nums[j]​=nums[i], the duplicate run has ended so we must copy its value to nums[i+1]nums[i + 1]nums[i+1]. iii is then incremented and we repeat the same process again until jjj reaches the end of array.

def remove_duplicates(nums)
  l = 0
  r = 1
  k = 1
  while r < nums.count
      if nums[l] == nums[r]
          r += 1
      else
          l += 1
          nums[l] = nums[r]
          r += 1
          k += 1
      end
  end
  return k
end

puts remove_duplicates([1,1,2])
puts remove_duplicates([0,0,1,1,1,2,2,3,3,4])
