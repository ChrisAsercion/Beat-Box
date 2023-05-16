require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do

  it "creates the beat box" do
    bb = BeatBox.new
    expect(bb).to be_a(BeatBox)
    expect(bb.list.head).to eq(nil)
    expect(bb.list).to be_a(LinkedList)
  end

  it "can append multiple words" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
    bb.append("woo hoo shu")
    expect(bb.list.head.next_node.next_node.next_node.data).to eq("woo")
    expect(bb.count).to eq(6)
  end

  it "" do
    
  end
end
