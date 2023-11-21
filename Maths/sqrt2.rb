# find the sqrt without using Math.sqrt(x)

def square_root(target)
  curr = target.to_f/2
  dist = curr/2
  threshold = 0.000000001
  while true
    puts curr
    error = ((curr * curr) - target).abs
    if error < threshold
      return curr
    end
    if curr * curr < target
      curr += dist
    else
      curr -= dist
    end
    dist /= 2
  end
end

puts square_root(8)

# distance divide by 2 everytime
# curr
# if curr * curr < target, need to move curr up by distance/2
# if curr * curr > target, need to move curr down by distance/2
