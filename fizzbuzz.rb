def fizzbuzz(n)
  (1..n).map do |num|
    if num % 3 == 0 && num % 5 == 0
       "Fizzbuzz"
    elsif
      num % 3 == 0
       "Fizz"
    elsif
      num % 5 == 0
       "Buzz"
    else
      num
    end
  end
end

puts fizzbuzz(15).inspect
