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
  # you don't need self before in these methods
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

  # add a node to the start of the list(prepend)
  # if just reading the attribute don't need self
  # but if setting it or changing it, need self
  def prepend(value)
    # check to see if list is empty, if so, create a new
    # node, store a value in it and set it as head
    if head.nil?
      self.head = Node.new(value, nil)
    else
      # if list isn't empty, replace old head with new node
      # and then point the new node's nextNode attribute to old head
      old_head = self.head
      self.head = Node.new(value, old_head)
    end
  end

  def remove(value)
    return if head.nil?
    # go over each element until you find the element that
    # you want to remove
    node = head
    prev_node = nil
    # is the previous node of the node we are looking for
    # set it to nil b. we are starting at the head so there
    # is no previous node, so the value would be nil
    # keep searching through node values until you find
    # the node with the value that we are searching for
    until(node.nil?)
      if(node.value == value)
        # take the node that is before the node we found
        # and set that nodes next value equal to the node
        # we found value
        if !prev_node.nil?
          prev_node.nextNode = node.nextNode
          return
          # if we do find this need to stop loop with return
        else
          # means prev_node is nil so we are on the head of the list
          # so set head to nil b. we want to remove it and it
          # is the only node
          self.head = nil
          return
        end
        # this allows us to progress to the next nodes and exit until loop
        # otherwise loop would just continue
        # it skip over the node and cuts it out of the list

      end
      prev_node = node
      node = node.nextNode
    end
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
# ll.add (10)
# ll.add (20)
# make a new linked list and add 2 new nodes with values
# 10 and 20
# puts ll.head.value
# puts ll.head.nextNode.value
# check to see heads value
# puts ll.find(10)
# is there a node with value 10? => true
# puts ll.find(70)
# should return false
# puts ll.find(20)

#prepend test (new head should now have a value of 10)
# ll.prepend(10)
# ll.prepend(20)
# puts ll.head.value # should be 20
# puts ll.head.nextNode.value # should be 10

#test remove method, add these values and remove 20
ll.add(10)
ll.add(20)
ll.add(30)
ll.remove(20)
puts ll.head.value
puts ll.head.nextNode.value
