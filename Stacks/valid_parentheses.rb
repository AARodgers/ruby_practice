# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# An input string is valid if:

#     Open brackets must be closed by the same type of brackets.
#     Open brackets must be closed in the correct order.

# Input: s = "()"
# Output: true
# Input: s = "()[]{}"
# Output: true
# Input: s = "(]"
# Output: false

# @param {String} s
# @return {Boolean}

# if s.size.odd? return false
# there should be the same number of '(' and ')' but in correct order

# def is_valid(s)
#   if s.size.odd?
#     puts false
#   else
#   end
# end

# puts is_valid("{}{}}")


# def is_valid(s)
#   arr = s.chars
#   i = 0
#   sym = []
#     arr.each_with_index do |c, i|
#       if (c[i] == '(') && (c[i + 1] == '(')
#         sym << 'true'
#       end
#     end
#   puts sym
# end

# puts is_valid("()")

# def is_valid(s)
#   if s.size.odd?
#     return false
#   end
#   arr = s.chars
#   h = {}
#   arr.each_with_index { |c, i| h[c] = i + 1}
#   h.inspect
#   # h = {"("=>1, ")"=>2, "["=>3, "]"=>4, "{"=>5, "}"=>6}
# end

# puts is_valid("()[]{}(")

# def is_valid(s)
#   if s.size.odd?
#     return false
#   end
#   arr = s.chars
#   a = arr.count ('(')
#   b = arr.count (')')
#   c = arr.count ('{')
#   d = arr.count ('}')
#   e = arr.count ('[')
#   f = arr.count (']')
#   if a == b && c == d && e == f
#     return true
#   else
#     return false
#   end
# end

# puts is_valid("()[]{}()")

# def is_valid(s)
#   if s.size.odd?
#     return false
#   end
#   arr = s.chars
#   if arr.count('(') != arr.count(')') then return false
#   elsif arr.count('{') != arr.count('}') then return false
#   elsif arr.count('[') != arr.count(']') then return false
#   else
#     return true
#   end
# end
# puts is_valid("()[]{}(")
# Wrong Answer
# Details
# Input
# "([)]"
# Output
# true
# Expected
# false

# def is_valid(s)

# end

# def base_case_1
# end

# puts base_case('()')

def is_valid(s)
  counterparts = {
    '(' => ')',
    '[' => ']',
    '{' => '}',
  }
  arr = s.chars
  stack = []
  arr.each do |c|
    if '{[('.include?(c)
      # if the string includes c it is an open bracket
      stack.push(c)
      # if it is open, push it onto the stack
    else
      # if it is not open, than it is closed
      open_sym = stack.pop
      # take the last symbol off of the stack and compare it to the closed symbol using the hash
      close_sym = counterparts[open_sym]
      if close_sym != c
        return false
      end
    end
  end
  if stack.empty?
    return true
  else
    return false
  end
end

puts is_valid('([{}])')
puts is_valid('([)]')
puts is_valid('{{}[][[[]]]}')
puts is_valid('([{}])))))))))')
puts is_valid('[[')
