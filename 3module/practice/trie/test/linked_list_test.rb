require 'minitest/autorun'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < MiniTest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_head
    assert_equal nil, @list.head
  end

  def test_append
    @list.append("West")
    assert_equal 'West', @list.head.surname
    assert_equal nil, @list.head.next_node
    assert_equal nil, @list.head.next_node
    assert_equal 1, @list.count
    assert_equal "The West family", @list.to_string
  end
end
