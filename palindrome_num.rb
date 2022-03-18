#Given an integer x, return true if x is palindrome integer.
# An integer is a palindrome when it reads the same backward as forward.
#For example, 121 is a palindrome while 123 is not.

# @param {Integer} x
# @return {Boolean}

def is_palindrome(x)
  # make number into an array of it's numbers
  array1 = x.to_s.chars
  array2 = array1.reverse
  # make hash with keys being first array and values being array1 in reverse
  hash = Hash.new

  array1.each_with_index do |num, index|
    hash[num] = array2[index]
  end

  a = hash.keys.select { |key| key != hash[key] }
    if a.empty?
      puts true
    else
      puts false
    end
end

puts is_palindrome(11211)
