require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it "linked list exists" do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end

    it "can append beats" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head).to be_a(Node)
        expect(list.append("doop")).to eq("doop")
    end

    it "makes the next node the end" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.next_node).to eq(nil)
    end
    
    it "counts the list" do
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
    end

    it "makes the list into a string" do
        list = LinkedList.new
        list.append("doop")
        expect(list.to_string).to eq("doop")
    end 

    it "can append multiple nodes" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.count).to eq(2)
        expect(list.to_string).to eq("doop deep")
    end

    it "can append and prepend to the list" do
        list = LinkedList.new
        list.append("plop")
        expect(list.to_string).to eq("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end

    it "can insert into the list " do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

    it "can find a portion of the list" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.to_string).to eq("deep woo shi shu blop")
        expect(list.find(1, 2)).to eq("woo shi")
        expect(list.find(2, 1)).to eq("shi")
        expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it "can check if beat exists in list" do
        list = LinkedList.new
        list.append("deep")
        expect(list.includes?("deep")).to eq(true)
    end

    it "can remove the last node from the list" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
    end
end 


#https://medium.com/analytics-vidhya/implement-a-linked-list-in-ruby-2aae925acd9c

#https://medium.com/@zylberberg.jonathan/linked-lists-f656bd22f2fa#:~:text=Linked%20Lists%20is%20a%20data%20structure%20where%20each%20element%20is,of%20data%20in%20the%20list.


 # it "starts as an empty list" do
    #     list = LinkedList.new
    #     expect(list.is_empty?).to eq(true)
    # end
    
