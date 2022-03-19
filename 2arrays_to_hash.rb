# make a hash out of two arrays

def arrays_2_hash
  x = 120030221
  array1 = x.to_s.chars
  array2 = array1.reverse

  hash = Hash.new

  array1.each_with_index do |num, index|
    hash[num] = array2[index]
  end
  hash
end

puts arrays_2_hash
