# Returns a new Hash object whose entries are those for which the block returns a truthy value:

# h = {foo: 0, bar: 1, baz: 2}
# h.select {|key, value| value < 2 } # => {:foo=>0, :bar=>1}

# def method
#   h = {x: 1, y: 2, z: 3}
#   h2 = h.select { |k, v| v < 2}
#   h2
# end
# => {:x=>1}
# puts method

# def method
#   h = {x: 1, y: 2, z: 3}
#   h2 = h.map { |k,v| k}
#   h2
# end
# => x y z
# puts method
