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

#node_append will take all node.data and split it into an array
#map will enumerate on node_append
#Each individual string can then go through append method defined in linked_list
#return the new appended data

    def count
        list.count
    end

#this method will tell the list to go through the count method defined in linked_list

    def play
        beats = list.to_string
        play = `say -r 500 -v Boing #{beats}`
    end
end