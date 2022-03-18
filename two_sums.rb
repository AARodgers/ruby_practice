# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

#You can return the answer in any order.
# @param {Integer[]} nums = []
# @param {Integer} target = int
# @return {Integer[]}

# nums = [2, 7, 11, 15]

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
    if hash[target - n]
      return hash[target - n], i
    end
    hash[n] = i
  end
end

puts two_sum([2, 7, 11, 15], 9)
