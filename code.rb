# ["flower"], ["flow"]
# Base case for longest_common_prefix

def longest_common_prefix
  arr = [["flower"], ["flow"]]
  prefix = []
  i = 0
  arr.flatten.map do |word|
    begin
      prefix << word[i]
      i +=1
    end while word[i] != word[i]
  end
  if prefix.empty?
    return ""
  else
    return prefix.join("").inspect
  end
end

puts longest_common_prefix
