require_relative "../lib/linked_list"

RSpec.describe LinkedList do
  describe "#append" do
    it "adds a new node containing a value to the end of the list" do
      list = LinkedList.new
      list.append(10)

      expect(list.head.value).to eq(10)
    end
    it "adds a second node containing a value at the end of the list" do
      list = LinkedList.new
      list.append(10)
      list.append(20)

    end
  end
  describe "#size" do
    xit "returns 0 for an empty list" do
      list = LinkedList.new

      expect(list.size).to eq(0)
    end
  end
end