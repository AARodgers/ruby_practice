# ways to make hash: h = {}, h = { a: 1, b: 2 }
# to make a hash from arrays, a = [[1, 2], [3, 4]] say a.to_h, then can look up values ex. h[1] => 2


def hash_games
  a = [['I', 1], ['V', 5], ['X', 10], ['L', 50], ['C', 100], ['D', 500], ['M', 1000]]
  b = a.to_h
  b['I']
end

puts hash_games
