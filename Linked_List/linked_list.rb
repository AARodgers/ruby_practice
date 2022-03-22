# Linked list saves memory because you can insert objects into it and it doesn't shift all the elements
# like an array and can insert elements into list w/o shifting everything else
# head is where it starts
# nextNode is a pointer, like i = index



class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
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
