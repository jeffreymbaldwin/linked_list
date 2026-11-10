require_relative "node"

class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(value)
    @head = Node.new(value)
    current = @head

  end

  def size
    return 0 if @head.nil?
  end
end


# current = first

# while current != nil
#   puts current.value
#   current = current.next_node
# end