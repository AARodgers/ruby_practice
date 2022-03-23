# Determine whether a string is a palindrome, recursively.

def pal(s)
  puts s

  # ensure the ends match
  if s.chars.first != s.chars.last
    return false
  end

  # if we got to the middle, it is a palindrome
  if s.length < 2
    return true
  end

  # ensure the middle is a palindrome too
  middle = s.slice(1, s.length - 2)
  return pal(middle)
end

puts pal("racecar")
puts pal("rotavator")
puts pal("saippuakivikauppias")
