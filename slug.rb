def make_slug
  str = "Iwanttomakeagoodslug987"
  a = str.downcase.gsub /[^-A-Za-z0-9]+/, '-'
  puts a
end

make_slug
