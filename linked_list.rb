class IterativeList
  # A list using Iterative approaches
  # uses looping structures like while, for
  # key variables:
  # list_head
  # node_data
  # next_node

  attr_reader :node_name
  attr_accessor :list_head, :node_data, :next_node

  def initialize
    #@node_name = node_name
    #@data = data
    #@node = node
    @next_node = next_node
    @list_head = list_head
  end

  @list_head = Node.new("Number1")

  # node_1 = Node.new("Number1")
  # list_head = node_1
  # node_2 = node_1.next_node

  def new_node

  end

# then "if something", list_head = node_2, etc.

#Tasks:
  # "append" elements to the end of the list
  # Count the number of the elements in the list
  # access the "tail" (last element) of the list
  # "pop" an element from the end of the list
  # access an element by numeric position (as with array)

  # e.g. node_2 = node_1.next_node

  # node_1 = Node.new(1)
  # node_2 = Node.new(2)
  # node_3 = Node.new(3)
  # node_4 = Node.new(4)

  # node_1.next = node_2
  # node_2.next = node_3
  # node_3.next = node_4

end


class RecursiveList
  # A list using Recursive approaches
  # requires the node to call on itself
  # key variables:
  # list_head
  # node_data
  # next_node

  attr_reader :node_name
  attr_accessor :list_head, :node_data, :next_node

  def initialize
    #@node_name = node_name
    #@data = data
    #@node = node
    @next_node = next_node
    @list_head = list_head
  end

end


class Node

  attr_reader :node_name

  def initialize(node_name)
    @node_name = node_name
  end

end

  # A single node for either list type
  # most methods will be in the other classes
  # but some nodes will need to be manipulated here
  # key variables?:
  # list_head
  # node_data
  # next_node
