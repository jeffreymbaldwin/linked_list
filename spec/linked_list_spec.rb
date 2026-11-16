require_relative "../lib/linked_list"

RSpec.describe LinkedList do
  describe "#append" do
    it "adds a new node containing a value to the list when the list is empty" do
      list = LinkedList.new
      list.append(10)

      expect(list.head.value).to eq(10)
    end
    it "adds a second node containing a value at the end of the list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

      expect(list.head.next_node.value).to eq(20)
    end

    it "adds a third node containing a value at the end of the list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)
      list.append(30)

      expect(list.head.next_node.next_node.value).to eq(30)
      expect(list.head.next_node.next_node.next_node).to be_nil

    end
  end

  describe "#prepend" do
    it "adds a node containing a value to the list when the list is empty" do
      list = LinkedList.new
      list.prepend(15)

      expect(list.head.value).to eq(15)
    end

    it "when ran two times it adds each value starting at the beginning of the list" do
      list = LinkedList.new
      list.prepend(15)
      list.prepend(20)

      expect(list.head.value).to eq(20)
      expect(list.head.next_node.value).to eq(15)
    end

    it "adds a value at the beginning of a list when used after append method" do
      list = LinkedList.new
      list.append(20)
      list.prepend(15)

      expect(list.head.value).to eq(15)
      expect(list.head.next_node.value).to eq(20)
    end
  end

  describe "#size" do
    it "returns 0 for an empty list" do
      list = LinkedList.new

      expect(list.size).to eq(0)
    end

    it "returns 1 when there is only a head" do
      list = LinkedList.new
      list.append(10)

      expect(list.size).to eq(1)
    end

    it "returns 2 when there are 2 nodes in the list" do
      list = LinkedList.new
      list.append(10)
      list.append(15)

      expect(list.size).to eq(2)
    end
  end

  describe "#head" do
    it "returns nil when the list is empty" do
      list = LinkedList.new

      expect(list.head).to be_nil
    end

    it "returns the value of the first node in the list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

      expect(list.head.value).to eq(10)
    end
  end

  describe "tail" do
    it "returns nil when the list is empty" do
      list = LinkedList.new

      expect(list.tail).to be_nil
    end

    it "returns the value of the last node in the list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

      expect(list.tail).to eq(20)
    end
  end

end



#head should return the value of the first node in the list. If the list is empty, it should return nil.
