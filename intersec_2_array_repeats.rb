# given two arrays, return the numbers that they have in common and there can be repeats

def intersect
  nums1 = [4,9,5]
  nums2 = [9,4,9, 8, 4]
  result = []

  return result if nums1 == nil || nums2 == nil
  hash1 = {}
  nums1.each do |num|
    if hash1.has_key?(num)
      hash1[num] += 1
    else
      hash1[num] = 1
    end
  end
  puts "I am hash1: #{hash1}"
  nums2.each do |num2|
    if hash1.has_key?(num2)
      result << num2 if hash1[num2] >= 1
      hash1[num2] -= 1
    end
  end
  result
end

puts intersect
