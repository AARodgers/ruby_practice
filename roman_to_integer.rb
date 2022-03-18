# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

#     I can be placed before V (5) and X (10) to make 4 and 9.
#     X can be placed before L (50) and C (100) to make 40 and 90.
#     C can be placed before D (500) and M (1000) to make 400 and 900.

# Given a roman numeral, convert it to an integer.

# @param {String} s
# @return {Integer}
# def roman_to_int(s)
#   a = [['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000]]
#   hash = a.to_h

#   a = []

#   s.each_char do |c|
#     if hash.has_key?(c)
#       a << hash[c]
#     end
#   end
#   a.sum
# end
# puts roman_to_int("MCMXCIV")

# def roman_to_int(s)
  # a1 = [['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000], ['IV', 4], ['IX', 9], ['XL', 40], ['XC', 90], ['CD', 400], ['CM', 900]]
  # hash1 = a1.to_h
# end
# puts roman_to_int("MCMXCIV")

def roman_to_int(s)
  roman_symbols_to_find = [
    ["IV", 4],
    ["IX", 9],
    ["XL", 40],
    ["XC", 90],
    ["CD", 400],
    ["CM", 900],
    ["I", 1],
    ["V", 5],
    ["X", 10],
    ["L", 50],
    ["C", 100],
    ["D", 500],
    ["M", 1000],
  ]

  total = 0
  while true do
    # puts "I am working on #{s}"
    roman_symbols_to_find.each do |sym, val|
      puts "#{sym}: #{val}", #{s.start_with?(sym)}"

      # if s.start_with?(sym)
      #   s = s.slice(sym.length, s.length)
    end
  end
  #       total += val
  #       # puts "I matched sym #{sym}. Now s = #{s} and total = #{total}"
  #       break
  #     end
  #   end

  #   if s.length == 0
  #     break
  #   end
  # end
  # total
end

puts roman_to_int("MCMXCIV")
