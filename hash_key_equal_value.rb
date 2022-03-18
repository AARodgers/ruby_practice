# to check to see if a hashes keys equal their values, returns true or false if keys == values

def key_values_equal
  h = {1=>1, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6, 7=>7, 8=>8, 9=>9, 10=>10}
  a = h.keys.select { |key| key != h[key] }
  if a.empty?
    puts true
  else
    puts false
  end
end

puts key_values_equal
