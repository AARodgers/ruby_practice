# The break keyword is like next, but it ends the loop & returns a value,
# instead of skipping just one iteration.
# Why not use the return keyword? Because it will exit from the current method, not just the loop. 

def print_until_5
  for number in 0..10
    if number > 5 then
      break
    end
    puts "The number is #{number}"
  end
end

print_until_5
