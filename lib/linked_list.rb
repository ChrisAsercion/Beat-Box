class LinkedList
    attr_reader :head, :list

    def initialize
        @head = nil
        @counter = 0
    end

   
    def append(data)
        if @head == nil
            @head = Node.new(data)
            #If the list is empty, this will create a new Node
        else
          current_node =@head 
          until current_node.next_node == nil
            #untill the current_node's next_node shows nil, 
            #this code will run
          end
          current_node.next_node = Node.new(data)
        
        end
        data  
    end

    def count
        counter = 0
        current_node =@head
        until current_node == nil
            current_node = current_node.next_node
            counter += 1
        end
        counter
    end
    def to_string
        box = " "
        current_node =@head
        until current_node == nil
            box += "#{current_node.data}"
            current_node = current_node.next_node
        end
        #require 'pry'; binding.pry
        box.split.join  
        #.split gives a space while .join combines the strings.
    end

  
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


  # def to_string
    #     box =
    #     current_node = @head
    #     until current_node.next_node == nil
    #         box << current_node.data
    #         current_node = current_node.next_node
    #     end
    #     box.join(" ")

    # end