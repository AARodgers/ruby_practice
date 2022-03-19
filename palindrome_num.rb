#Given an integer x, return true if x is palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
#For example, 121 is a palindrome while 123 is not.

# @param {Integer} x
# @return {Boolean}

# require 'pry'

def is_palindrome(x)
  array1 = x.to_s.chars
  array2 = array1.reverse
  if array1 == array2
    return true
  else
    return false
  end
end

puts is_palindrome(123)

# def is_palindrome(x)
#   # make number into an array of it's numbers
#   array1 = x.to_s.chars
#   # => ["1", "2", "0", "0", "3", "0", "2", "2", "1"]
#   array2 = array1.reverse
#   # = > ["1", "2", "2", "0", "3", "0", "0", "2", "1"]
#   # make hash with keys being first array and values being array1 in reverse
#   hash = Hash.new

#   array1.each_with_index do |num, index|
#     hash[num] = array2[index]
#   end
#   puts "#{hash}"
# end

  # put into an array any key/value pairs that aren't equal, if array is empty, it is a palindrome

  # hash.keys.select { |key| key != hash[key] }.empty?


# puts is_palindrome(120030221)
