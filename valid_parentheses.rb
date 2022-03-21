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
# there should be the same number of '(' and ')'

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
#   arr.each_with_index do |c, i|
#     if c[i] == '(' && c[i + 1] != ')'
#       puts false
#     elsif
#       c[i] == '{' && c[i +1] != '}'
#       puts false
#     elsif
#       c[i] == '[' && c[i +1] != ']'
#       puts false
#     else
#       puts true
#     end
#   end
# end

# puts is_valid("()[]{}")

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

def is_valid(s)
  if s.size.odd?
    return false
  end
  arr = s.chars
  if arr.count('(') != arr.count(')') then return false
  elsif arr.count('{') != arr.count('}') then return false
  elsif arr.count('[') != arr.count(']') then return false
  else
    return true
  end
end

puts is_valid("()[]{}(")
