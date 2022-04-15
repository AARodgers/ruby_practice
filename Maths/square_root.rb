# Square root of a number is a value, which on multiplication by itself gives the original number.
# Suppose, x is the square root of y, then it is represented as x=√y or we can express the same equation as x2 = y.

def square_root(num)
  Math.sqrt(num)
end

def square_root_without_sqrt(num)
  iterate(num)
end

def iterate(num)
  (1..num).each do |i|
    if i * i == num
      return i
    end
  end
end

def smallest_num(num)
  (1..num).each do |i|
    if i * i > num
      return i
    end
  end
end

def mid(num)
  a = smallest_num(num) - 1
  b = smallest_num(num)
  puts "a = #{a}, b = #{b}"
end

def binary_search
end



puts mid(5)
# puts iterate(4)
# puts smallest_num(5)
# puts square_root_without_sqrt(4)
# puts square_root(4)
