require 'minitest/autorun'
require './lib/node'
require 'pry'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_attributes
    assert_equal 'Burke', @node.surname
  end

  def test_next_node_default_nil
    assert_equal nil, @node.next_node
  end
end
