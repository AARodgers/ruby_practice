# take an array and turn into hash with indexes
# https://ruby-doc.org/core-3.1.1/Enumerable.html#method-i-each_with_index

def array_to_hash_with_indexes
  array = [2, 7, 11, 15]
  h = {}
  a = array.each_with_index {|element, i| h[element] = i }
  h.inspect
end

puts array_to_hash_with_indexes
# return {2=>0, 7=>1, 11=>2, 15=>3}

