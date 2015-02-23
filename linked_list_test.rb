require "minitest"
require "minitest/autorun"
require_relative "linked_list.rb"

class LinkedListTest < Minitest::Test

#Iterative:

  def test_it_exists_iterative
    iterative = IterativeList.new
  end

  def test_new_node
    skip
    iterative = IterativeList.new
  end

#Recursive:

  def test_it_exists_recursive
    recursive = RecursiveList.new
  end


#Node:

  def test_it_exists_node
    node = Node.new("Delta")
  end

end
