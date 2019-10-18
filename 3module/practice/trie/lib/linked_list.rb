class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
  end

  def append(surname)
    @head = Node.new(surname)
  end

  def count
    @head.count
  end

  def to_string
    "The #{@head.surname} family"
  end
end
