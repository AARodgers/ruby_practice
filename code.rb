require 'pry'
# ["flower"], ["flow"]
# Base case for longest_common_prefix

# def longest_common_prefix(strs)
#   prefix = []
#   i = 0
#   strs.map do |word|
#     begin
#       prefix << word[i]
#       i +=1
#     end while word[i] != word[i]
#   end
#   if prefix.empty?
#     return ""
#   else
#     return prefix.join("")
#   end
# end

# puts longest_common_prefix(["flower","flow","flight"])

# def longest_common_prefix(strs)
#   prefix = []
#   i = 0
#   strs.each do |word|
#     while true do
#       if word[i] == word[i]
#         prefix << word[i]
#         i += 1
#       end
#     end
#   end
#   if prefix.empty?
#     return ""
#   else
#     return prefix.join("")
#   end
# end

# puts longest_common_prefix(["flower","flow","flight"])

# def longest_common_prefix(strs)
#   size = strs.length

#   left_pointer = 0
#   right_pointer = 0
#   common_letters = [strs[0][0]]

#   while right_pointer < size do
#     strs.each do |word|
#       if common_letters.include? strs[right_pointer]
#         common_letters.push(strs[right_pointer])
#         right_pointer += 1
#       end
#     end
#   end
#   common_letters
# end

# puts longest_common_prefix(["flower","flow","flight"])

def longest_common_prefix(strs)
  return '' if strs.empty?
  min, max = strs.minmax
  # minmax returns an array of 2 items with the shortest and longest length
  idx = min.size.times{ |i| break i if min[i] != max[i] }
  # iterate 4x (the shortest word), the string characters until the indexes chars don't match
  min[0...idx]
  # return the the range of characters in the shorest word from 0 until the index where they don't match
end


puts longest_common_prefix(["flower","flow","flight"])
