def hashed_fizzbuzz num
  hash = {}

  1.upto(num).each do |e|
    if (e % 3 == 0) && (e % 5 == 0)
      hash[e] = "Fizzbuzz"
    elsif e % 3 == 0
      hash[e] = "Fizz"
    elsif e % 5 == 0
      hash[e] = "Buzz"
    else
      hash[e] = e
    end
  end
  hash
end

puts hashed_fizzbuzz(16)
