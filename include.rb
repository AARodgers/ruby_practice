def test(s)
  if s.include?('()')
    puts true
  end
end

puts test('(){}[]')
