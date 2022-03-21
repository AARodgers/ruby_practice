def each_c_with_index
a = ["flower","flow","flight"]
  a[0].each_char.with_index do |c, i|
      puts "Char: #{c}, Index: #{i}"
  end
end

puts each_c_with_index
# returns
#Char: f, Index: 0
# Char: l, Index: 1
# Char: o, Index: 2
# Char: w, Index: 3
# Char: e, Index: 4
# Char: r, Index: 5
# flower
