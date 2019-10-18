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

  def test_multiple_append
    skip  
    @list.append("Rhodes")
    assert_equal 'Rhodes', @list.head.surname

    @list.append("Hardy")
    assert_equal 2, @list.count
    assert_equal "Hardy", @list.head.next_node.surname
    phrase = 'The Rhodes family, followed by the Hardy family'
    assert_equal phrase, @list.to_string
  end
end
