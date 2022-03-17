def match(s)
  a = [['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000]]
  hash = a.to_h

  a = []

  s.each_char do |c|
    if hash.has_key?(c)
      a << hash[c]
    end
  end
  a.inspect
end

puts match('III')
# => [1, 1, 1]
