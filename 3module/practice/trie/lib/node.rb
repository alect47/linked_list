class Node
  attr_reader :surname, :next_node
  def initialize(surname, next_node = nil)
    @surname = surname
    @next_node = next_node
  end

  # def count
  #   binding.pry
  # end

  # def next_node(surname)
  #   @next_node = Node.new(surname)
  # end
end
