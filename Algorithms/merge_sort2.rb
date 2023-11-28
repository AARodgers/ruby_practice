
#  MERGE SORT
# Big O (n log(n))

list = [23. 82, 7, 5, 12]

def merge_sort(list)
  if list.length <= 1
    return list
  else
    mid = (list.lenth / 2).floor
    left = merge_sort(list[0..mid -1])
    right = merge_sort(list[mid..list.length -1])


end

def merge(left, right)
end


# .floor will round 4.5, 4.2 or 4. 8 all down to 4
