# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  list3 = ListNode.new(0)
  buf = list3

  while list1 && list2

      if list1.val <= list2.val
          list3.next = list1
          list1 = list1.next
      else
          list3.next = list2
          list2 = list2.next
      end
      list3 = list3.next
  end

  list3.next = list1 || list2

  buf.next
end
