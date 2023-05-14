class LinkedList
    attr_reader :head, :list

    def initialize
        @head = nil
        @counter = 0
    end

   
    def append(data)
        if @head == nil
            @head = Node.new(data)
        else
            current_node = @head 
        until current_node.next_node == nil
            current_node = current_node.next_node
        end
            current_node.next_node = Node.new(data)
        end 
        data  
    end
            #If the list is empty, this will create a new Node
            #until the current_node. next_node shows nil, 
            #this code will run the next_node method to get to the tail
    def prepend(data)
        if @head == nil
            new_head = Node.new(data)
        else
            new_head = Node.new(data)
            new_head.next_node = @head
            @head = new_head
        end
        data
    end
            #If the list is empty, it will create a new list
            #Else the new_head is created, new_head will make the next_node the current @head
            #@head is redefined at the new head creating the top of the list
    def insert
        if @head == nil
            new_head = Node.new(data)
        else
            
        end
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

            #Until the current_node gets to the tail and shows nil
            #the current_node will go through next_node 
            #each time current_node moves to the next_node counter gains 1
            #return counter number
    def to_string
        box = []
        current_node =@head
        until current_node == nil
            box << current_node.data
            current_node = current_node.next_node
        end
        box.join(" ")  
        #.split gives a space while .join combines the strings.
    end 

end
