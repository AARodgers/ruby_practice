def test
  first = ['a', 'b', 'c']
  puts first.inspect
  second = %w[a b c]
  puts second.inspect
  third = %i[a b c]
  puts third.inspect
  # first and second return arrays with strings and third returns an array of symbols (symbols save memory, use when using internal identifiers (data inside the program, not from internet))
  # symbols are immutable meaning their value never changes, so they are instatiated and do operations quicker)
  # ruby can use the same object every time you reference the symbol instead of instantiating it every time the interpreter reads :my_key it can take it from memory instead of instantiate it again

  # my_hash = {drink: :soda, food: :burger}
  # puts my_hash.inspect
  # my_other_hash = {:drink => :soda, :food => :burger}
  # puts my_other_hash.inspect
  # my_final_hash = {'drink' => 'soda', 'food' => 'burger'}
  # puts my_final_hash.inspect
end

test

#---------------------
# a = %i[string text] # a equals b
# b = [:string, :text]
