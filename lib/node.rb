class Node
    attr_reader :data 
    attr_accessor :next_node

    def initialize(data, next_node = nil)
        @data      = data 
        @next_node = next_node
    end
#data represents the values that we are putting in (the sounds)
#next_node is the node appearing after current_node
end