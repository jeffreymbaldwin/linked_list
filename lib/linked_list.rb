require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    if head.nil?
      @head = Node.new(value)
    else
      current = @head
      while current.next_node
        current = current.next_node
      end
      current.next_node = Node.new(value)
    end
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