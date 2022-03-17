# def to_s
#   id = 1
#   name = 'main'
#   flags_desc = 'sms'
#   a = "Phone #{id}: #{name || '<no name>'} #{flags_desc}".strip
#    a
# end

# puts to_s
# why does this just return 'main'
# how to see this work with WD code


def flags_desc
  flags = {
    'call': call,
    'SMS': sms,
    '24/7': always_open,
  }.filter { |_, v| v }.map { |k, v| k }
  return '' if flags.empty?
  return "(#{flags.join(', ')})"
end

puts flags_desc
