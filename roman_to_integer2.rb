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
      # puts "#{sym}: #{val}, #{s.start_with?(sym)}"

      if s.start_with?(sym)
        s = s.slice(sym.length, s.length)
        total += val
        # puts "I matched sym #{sym}. Now s = #{s} and total = #{total}"
        break
      end
    end

    if s.length == 0
      break
    end
  end
  total
end

puts roman_to_int("MCMXCIV")

# M: 1000, CMXCIV
# CM: 900, XCIV
# XC: 90
# IV: 4
