class BeatBox
    attr_reader :list

    def initialize
        @list = LinkedList.new
    end

    def append(data)
        node_append = data.split
        node_append.map do |element|
            list.append(element) 
        end
        data
    end

    def count
        list.count
    end

    def play

    end
    

end