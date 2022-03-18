# Given two arrays write a funciton to compute their intersection

require 'set'

nums1 = [4, 9, 5]
nums2 = [9, 4, 9, 8, 4]
# Output: [9, 4]

def intersection
  combine = Set[4, 9, 5] & Set[9, 4, 9, 8, 4]
  puts combine
end

intersection
# => #<Set: {9, 4}>
