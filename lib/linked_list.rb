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

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node


  end

  def size
    return 0 if @head.nil?
    current = @head
    size = 1

    while current.next_node
      current = current.next_node
      size += 1

    end
    size
  end

  def tail
    return if @head.nil?
    current = @head
    while current.next_node
      current = current.next_node
    end
    current.value
  end

  def at_index(index)
    return nil if @head.nil?
    return nil if index.negative?
    current_node = @head
    current_index  = 0

    while current_index < index && current_index < index
      current_node = current_node.next_node
      current_index += 1
    end
    current_node&.value

  end

  def pop
    return nil if @head.nil?
    value = @head.value
    @head = @head.next_node
    value
  end

  def contains?(value)
    return false if @head.nil?
    current = @head
    while current
      if current.value == value
        return true
      end
      current = current.next_node
    end
    false
  end

  def index(value)
    return if @head.nil?
    current_node = @head
    current_index = 0

    while current_node
      if current_node.value == value
        return current_index
      end
      current_node = current_node.next_node
      current_index += 1
    end
  end

  def to_s
    return "" if @head.nil?

    current = @head
    string = ""

    while current
      string += "( #{current.value} ) -> "
      current = current.next_node
    end
    string += "nil"
    string
  end
end


