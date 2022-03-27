#  Make strings in this array into arrays: ["flower","flow","flight"]
# Output:  [["flower"],["flow"],["flight"]]

def array_of_arrays(arr)
  new_arr = arr.map {|word| [word] }
  new_arr.inspect
end

puts array_of_arrays(["flower", "flow", "flight"])
