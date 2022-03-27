def arr_bump_index_up_one(arr)
  new_arr = arr.each_with_index do |c, i|
    if c[i] then c[i] = c[i + 1]
      puts "#{c} new index = #{i}"
    end
  end
end

arr_bump_index_up_one(['a', 'b' 'c'])
