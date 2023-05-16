require "./lib/linked_list"
require "./lib/node"
require "./lib/beat_box"

RSpec.describe LinkedList do
    describe "initialize" do
        it "linked list exists" do
        list = LinkedList.new
        expect(list.head).to eq(nil)
        end
    end

    describe "append" do
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
    end
    
    describe "count" do
        it "counts the list" do
            list = LinkedList.new
            list.append("doop")
            expect(list.count).to eq(1)
        end
    end

    describe "to_string" do
        it "makes the list into a string" do
            list = LinkedList.new
            list.append("doop")
            expect(list.to_string).to eq("doop")
        end 
    end

    describe "append and prepend" do
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
    end
    describe "insert" do
        it "can insert into the list " do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            list.insert(1, "woo")
            expect(list.to_string).to eq("dop woo plop suu")
        end
    end

    describe "find" do
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
    end

    describe "includes?" do
        it "can check if beat exists in list" do
            list = LinkedList.new
            list.append("deep")
            expect(list.includes?("deep")).to eq(true)
        end
    end

    it "can remove the last node from the list" do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        list.pop
        list.pop
        expect(list.to_string).to eq("deep woo shi")
    end
end 
