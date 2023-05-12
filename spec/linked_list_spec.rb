require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it "linked list exists" do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end

    it "starts as an empty list" do
        list = LinkedList.new
        expect(list.is_empty?).to eq(true)
    end
    
    xit "adds beats to list" do
        list.append("doop")
        expect(list).to eq("doop")
    end


end 
