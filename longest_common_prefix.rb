# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# @param {String[]} strs
# @return {String}

# Input: strs = ["flower","flow","flight"]
# Output: "fl"

# Input: strs = ["dog","racecar","car"]
# Output: ""

# Explanation: There is no common prefix among the input strings.

# def longest_common_prefix(strs)
#   new_arr = strs.map {|word| [word] }
#   new_arr
#   # [["flower"], ["flow"], ["flight"]]
#   bucket = []
#   prefix = []
#   a = new_arr.map do |word_array|
#     word_array[0].chars
#   end
#   # a = [["f", "l", "o", "w", "e", "r"], ["f", "l", "o", "w"], ["f", "l", "i", "g", "h", "t"]]
#   a.map do |array|
#     bucket << array[0]
#     if bucket.all?{ |element| element == element }
#       prefix << bucket[0]
#     end
#   end
#   # prefix = ["f", "f", "f"]
#   .inspect
# end

# puts longest_common_prefix(["flower","flow","flight"])

def longest_common_prefix(strs)
  min, max = strs.minmax
  # => ["flight", "flower"]
  idx = min.size.times { |i| break i if min[i] != min[i]}
  # ? how does this iterate over all of the words? it just seems to do min and max word
  min[0..idx]
end

longest_common_prefix(["flower","flow","flight"])
