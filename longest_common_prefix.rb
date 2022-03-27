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
    i = 0
    first_word = strs[0]
    rest_words = strs.slice(1, strs.length)
    result = ''
    while true
        # iterate over each rest-word
        rest_words.each do |word|
            # if a rest-word's char doesn't equal the first-word's char,
            # then there are no more matches, so return the prefix that we have
            if word[i] != first_word[i]
                return result
            end
        end
        # we have gotten through all the rest-words,
        # and the characters in position i all matched,
        # so add the match to result
        result += first_word[i]
        i += 1
    end
end

puts longest_common_prefix(["flower","flow","flight"])
