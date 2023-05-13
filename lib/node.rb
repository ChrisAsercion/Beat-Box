class Node
    attr_reader :data, :counter
    attr_accessor :next_node

    def initialize(data, next_node = nil)
        @data =      data 
        @next_node = next_node
    end

    def next_node=(new_node)
        @next_node = new_node
    end
end