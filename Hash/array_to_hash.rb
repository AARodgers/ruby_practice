# change an array to a hash

def array_to_hash
  var = [1,2,3,4,5,6,7,8,9,10]
  hash = {}

  var.each do |i|
  hash[i] = i
  end

  hash
end

puts array_to_hash
# => {1=>1, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6, 7=>7, 8=>8, 9=>9, 10=>10}
