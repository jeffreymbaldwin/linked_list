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

  describe "at_index" do
    it "returns the value of the given index of a list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

      expect(list.at_index(1)).to eq(20)
    end

    it "returns nil if the list is empty" do
      list = LinkedList.new

      expect(list.at_index(0)).to be_nil
    end

    it "returns the value of the node for the given index" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

      expect(list.at_index(1)).to eq(20)
    end

    it "returns nil if an index is given for and index that doesn't exist" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

      expect(list.at_index(2)).to be_nil
    end

    it "returns nil if the given index is negative" do
      list = LinkedList.new
      list.append(10)

      expect(list.at_index(-1)).to be_nil
    end
  end
  describe "#pop" do
    it "returns nil if called on an empty list" do
      list = LinkedList.new

      expect(list.pop).to be_nil
    end

    it "returns the node and the list is empty after calling pop on a 0 index list" do
      list = LinkedList.new
      list.append(10)

      expect(list.pop).to eq(10)
      expect(list.head).to be_nil
    end

    it "removes the head from the list and returns that node's value" do
      list = LinkedList.new
      list.append(10)
      list.append(20)
      list.append(30)

      value = list.head.value

      expect(list.pop).to eq(10)
      expect(list.head.value).to eq(20)
    end

    it "can be called twice to remove two heads while maintaining the flow of the list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)
      list.append(30)

      expect(list.pop).to eq(10)

      expect(list.pop).to eq(20)

      expect(list.head.value).to eq(30)
      expect(list.head.next_node).to be_nil
    end
  end

end



