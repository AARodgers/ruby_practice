#Given an integer x, return true if x is palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
#For example, 121 is a palindrome while 123 is not.

# @param {Integer} x
# @return {Boolean}

def is_palindrome(x)
  array = x.to_s.chars

  hash = {}
  array.each do |i|
  hash[i] = i
  end
  if hash.
    return true
  else
    return false
  end
end

puts is_palindrome(123)
