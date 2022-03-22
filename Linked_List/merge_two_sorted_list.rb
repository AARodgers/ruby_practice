# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
# Return the head of the merged linked list
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]

# Example 2:

# Input: list1 = [], list2 = []
# Output: []

# Example 3:

# Input: list1 = [], list2 = [0]
# Output: [0]

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


  # put a pointer at the beginning of each list
  # use a dummy head to build new list, because it is easier to build something that already has a state or
  # isn't null or nil, call it cur for current node
  # the lesser item gets put in first, if equal, either one can go in
  # apend the lesser one to list
  # cur is dummy head, compare two values of list put, lower one in list and
  # then point cur to left over node

def merge_two_lists(list1, list2)
end

puts merge_two_lists(list1 = [1,2,4], list2 = [1,3,4])
puts merge_two_lists(list1 = [], list2 = [])
puts merge_two_lists(list1 = [], list2 = [0,1])
