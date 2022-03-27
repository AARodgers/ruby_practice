# Implement strStr()
# Implement strStr().
# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
# Clarification:
# What should we return when needle is an empty string? This is a great question to ask during an interview.
# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
# Example 1:
# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:
# Input: haystack = "aaaaa", needle = "bba"
# Output: -1

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  if needle == ''
      return 0
  end
  if haystack == ''
      return -1
  end
  if haystack.start_with?(needle)
      return 0
  end
  haystack = haystack.slice(1, haystack.length)
  recurse = str_str(haystack, needle)
  if recurse == -1
      return -1
  else
      recurse + 1
  end
end
