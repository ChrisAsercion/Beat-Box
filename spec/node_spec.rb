require './lib/node'

RSpec.describe Node do
    describe "initialize" do
        it "exists" do
            node = Node.new(nil)
            expect(node).to be_a(Node)
        end
        it "has attributes" do
            node = Node.new("deep")
            expect(node.data).to eq("deep")
            expect(node.next_node).to eq(nil)
        end

    end
end