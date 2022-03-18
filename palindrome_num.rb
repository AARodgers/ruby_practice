#Given an integer x, return true if x is palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
#For example, 121 is a palindrome while 123 is not.

# @param {Integer} x
# @return {Boolean}

def is_palindrome(x)
  # make number into an array of it's numbers
  array1 = x.to_s.chars
  array2 = array1.reverse
  # make hash and make the key
  hash = {}
  array1.each do |i|
  hash[i] = i
  end


puts is_palindrome(123)
