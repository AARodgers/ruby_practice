# Square root of a number is a value, which on multiplication by itself gives the original number.
# Suppose, x is the square root of y, then it is represented as x=√y or we can express the same equation as x2 = y.

def square_root(num)
  Math.sqrt(num)
end

def square_root_without_sqrt(num)
  iterate(num)
end

# iterate through nums 0 through num and if an element times its self equals num, it is the square root
def iterate(num)
  (1..num).each do |i|
    if i * i == num
      return i
    end
  end
end

# return the first element that squared equals more than the target num
def smallest_num(num)
  (1..num).each do |i|
    if i * i > num
      return i
    end
  end
end

# finds the range of the two numbers that the sqaure root must be between
def mid(num)
  a = (smallest_num(num) - 1).to_i
  b = (smallest_num(num)).to_i
  arr = (a..b).to_a
  arr
end

# attempts binary search between the two intergers where the square root lays
def binary_search(arr, num)
  arr = [2, 3]
  min = arr[0]
  max = arr[1]
  avg = ((min + max)/2)
  val = avg * avg
  while true
    if val == num
      return avg
    elsif val < num
        avg = min
    elsif val > num
        avg = max
    end
  end
end


puts binary_search([2,3], 5)
# puts mid(5)
# puts iterate(4)
# puts smallest_num(5)
# puts square_root_without_sqrt(4)
# puts square_root(4)
