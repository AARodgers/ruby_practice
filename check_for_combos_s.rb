# if there is 'IV' or 'IX' minus 1 or value of I which is 1
# for 'XL' or 'XC' minus value of X which is 10
# for 'CD' or 'CM' minue value of C or 100


# def checking_for_combos_in_string(s)
#   s.scan('IV').count
# end

# puts checking_for_combos_in_string("MCMXCIV")
# returns how many occurances of 'IV' happens in the string

def checking_for_combos_in_string(s)
  sum = 100
  a = (s.scan('IV').count * 1)
  b = s.scan('IX').count * 1
  c = s.scan('XL').count * 10
  d = s.scan('XC').count * 10
  e = s.scan('CD').count * 100
  f = s.scan('CM').count * 100

  if s.include?('a')
    return true
  end

end

puts checking_for_combos_in_string("MCMXCIV")
