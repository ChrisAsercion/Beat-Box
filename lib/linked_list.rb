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
#This code will run the next_node method to get to the tail

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
        
    def count
        counter = 0
        current_node = @head
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

    def insert(index, data)
        if @head == nil
            new_head = Node.new(data)
        else
            current_node = @head
            (index - 1).times do
                current_node = current_node.next_node
            end
        trailing_node = current_node.next_node
        current_node.next_node = Node.new(data)
        current_node.next_node.next_node = trailing_node
        end
    end

#Insert will go through list the number or times given (index), but less than one
#There, trailing_node is the node following what will be the new node
#Once current node is created, next.next is done to append trailing node back on the list

    def find(index, index_end = 1)
        current_node = @head
        index.times do 
            current_node = current_node.next_node
        end
        length = index_end - 1
        string = "#{current_node.data}"
        length.times do
            current_node = current_node.next_node
            string = "#{string} #{current_node.data}"
        end
        string
    end

#Index finds the start of the wanted string 
#length is the index_end -1 to create an how long the string should be
#length.times do is a loop that inserts current_node.data into a string interpolation

    def includes?(data)
        current_node = @head
        until current_node.next_node == data || current_node.next_node == nil
            current_node = current_node.next_node
        end
        current_node.data == data
    end

#The method will start at the head and proceed until 
#current_node.next is either equal to or nil (the end of the list)
#The last line checks if the current_node's data is the same as the inputted data

    def pop
        current_node = @head
        if current_node.next_node == nil
            @head = nil
        else
            until current_node.next_node.next_node == nil 
                current_node = current_node.next_node
            end
            popping_node = current_node.next_node
            current_node.next_node = nil
            popping_node.data
        end
    end

#This method will go through the list until the current_node's next.next node is nil
#Once the current node is the 2nd to last node, popping_node is assigned to current_node.next_node
#This makes it so that the popping_node is the last in the list
#current_node.next_node is set to nil to cut off the pointer pointing at popping_node
#popping_node.data can reference which node has been popped.
#If the list only has 1 node, the if statement at the beginning is filled.
#@head is assigned to Nil and it loses its information

    def to_string
        box = []
        current_node =@head
        until current_node == nil
            box << current_node.data
            current_node = current_node.next_node
        end
        box.join(" ")  
    end 

#The to_string method starts as a box array that shovels in the current_node.data
#This is done with the until loop finishing at the end (nil)
#The array is turned into a full string with the built in join method
#A string with a space is attached to add a space inbetween each node data (each word)
end

