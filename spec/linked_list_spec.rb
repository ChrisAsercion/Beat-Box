require "./lib/linked_list"
require "./lib/node"

it "linked list exists" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
end
