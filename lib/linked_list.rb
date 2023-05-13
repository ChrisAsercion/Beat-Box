class LinkedList
    attr_reader :head, :list 

    def initialize
        @head = nil
        @counter = 0
    end

   
    def append(data)
        if @head == nil
            @head = Node.new(data)
            @counter += 1
            #If the list is empty, this will create a new Node
        else
          current_node =@head 
          until current_node.next_node == nil
          end
        current_node.next_node = Node.new(data)
        @counter += 1
        data
        end
    end

    def count
        @counter
    end

    # def count
    #     counter = 0
    #     current_node =@head
    #     until current_node == nil
    #         current_node = current_node.next_node
    #         counter += 1
    #     end
    #     counter
    # end

    def to_string

    end
end  
