# Set implements a collection of unordered values with no duplicates.
# This is a hybrid of Array's intuitive inter-operation facilities and Hash's fast lookup.
# https://ruby-doc.org/stdlib-2.7.1/libdoc/set/rdoc/Set.html
# Note: you have to put require 'set' on top of file for it to work!

require 'set'

def set_example
 set1 = Set[1, 2, 1]
 set1
end

puts set_example
=> Set: {1, 2}
