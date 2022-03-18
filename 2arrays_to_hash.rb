# make a hash out of two arrays

def arrays_2_hash
  array1 = [1, 2, 3]
  array2 = [3, 2, 1]

  hash = Hash.new

  array1.each_with_index do |num, index|
    hash[num] = array2[index]
  end
  hash
end

puts arrays_2_hash
