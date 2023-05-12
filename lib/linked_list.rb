class LinkedList
    attr_reader :head, :list

    def initialize
        @head = nil
    end

   
    def append(data)
        if @head == nil
            @head = Node.new(data)
            #If the list is empty, this will create a new Node
        else
          current_node =@head 
          until current_node.next_node == nil
          end
        current_node.next_node = Node.new(data)
        data
        end
    end

    def count
        counter = 0
        #for every instance on Node.new(data)
        #counter += 1
        
    end
end  
