def map_with_index(array)
  array.map.with_index { |value, index| "The value is #{value} and it is at the #{index}." }
end

puts map_with_index([1000, 100, 1000, 10, 100, 1, 5])

# my_array = [:mouse, :bat, :pangolin]
# newly_created_array = my_array.map.with_index { | value, index | "The #{value} is at position #{index}" }
# => ["The mouse is at position 0", "The bat is at position 1", "The pangolin is at position 2"]
