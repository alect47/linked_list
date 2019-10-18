class Node
  attr_reader :surname, :next_node
  def initialize(surname, next_node = nil)
    @surname = surname
    @next_node = next_node
  end

  def count
    1
  end
end
