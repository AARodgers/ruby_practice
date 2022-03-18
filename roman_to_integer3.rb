ROMAN_TO_INT =
  {
    i: 1,
    v: 5,
    x: 10,
    l: 50,
    c: 100,
    d: 500,
    m: 1000
  }


def roman_to_int roman
  value_map = roman.split('').map { |e| ROMAN_TO_INT[e.downcase.to_sym] }
  value_map.map.with_index do |e, idx|
    puts "#{e}:#{idx}"
  end


    unless value_map[idx + 1].nil?
    then
      value_map[idx + 1] > e ? -e : e
    else e
    end
  end.sum
end

puts roman_to_int(roman = "MCMXCIV")
roman_to_int roman #=> 1776
