# Linked list saves memory because you can insert objects into it and it doesn't shift all the elements
# like an array and can insert elements into list w/o shifting everything else
# head is where it starts
# nextNode is a pointer, like i = index



class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  # add a node with a value to the list
  def add(value)
    #check to see if list is empty first
    if(self.head.nil?)
    # set head as a new Node and store a value in it
    # since it's the first node the nextNode will be nil
      self.head = Node.new(value, nil)
    else
      # if the list is not empty, find the last node in
      # the list, and then set the next node equal to a new
      # node and store a value inside it
      lastNode = self.head
      # last node is head
      while(!lastNode.nextNode.nil?)
        # while the last node's next node isn't nil
        lastNode = lastNode.nextNode
      end
      # now you are at the end of the list
      lastNode.nextNode = Node.new(value, nil)
    end
  end

  # find a node with a certain value, return true/false
  def find(value)
    # start at head and iterate (keep going through nodes while there is a next node)
    node = self.head
    # this allows you to check each node, including the last node to see if it is nil
    while(!node.nil?)
      if(node.value == value)
        return true
      end
      # need to update nextNode through every loop
      node = node.nextNode
    end
    # if none of the nodes contained that value, return false
    false
  end

  private

  class Node
    attr_accessor :value, :nextNode

    def initialize(value, nextNode)
      self.value = value
      self.nextNode = nextNode
    end
  end
end

ll = LinkedList.new
ll.add (10)
ll.add (20)
# make a new linked list and add 2 new nodes with values
# 10 and 20
puts ll.head.value
puts ll.head.nextNode.value
# check to see heads value
puts ll.find(10)
# is there a node with value 10? => true
puts ll.find(70)
# should return false
puts ll.find(20)
