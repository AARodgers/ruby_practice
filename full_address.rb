# def full_address
#   [address1, address2, city, state, zip].select { |x| x }.join ', '
# end

def full_address
  address1 = '1525'
  address2 = 'Holly'
  city = 'Denver'
  state = 'CO'
  zip = '80222'
  [address1, address2, city, state, zip].select { |x| x }.join ', '
end

puts full_address
# => 1525, Holly, Denver, CO, 80222
